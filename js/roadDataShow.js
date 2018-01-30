var DepartArr = [];//存储部门信息数组
var UserArr = [];//存储用户信息数组
var RoadArr = [];//存储全部路口列表信息数组
var AreaArr = [];//存储区域列表信息数组
var PowerArr = [];//存储功能列表信息数组
var setting = {
    view: {
        dblClickExpand: false,
    },
    data: {
        simpleData: {
            enable: true
        }
    },
    callback: {
        onClick: onClick
    }
};//不可选择树配置
function onClick(e, treeId, treeNode) {
    var zTree = $.fn.zTree.getZTreeObj(treeId);
    zTree.expandNode(treeNode);
}
var setting1 = {
    view: {
        dblClickExpand: false,
    },
    data: {
        simpleData: {
            enable: true
        }
    },

    check: {
        chkboxType: { "Y": "ps", "N": "ps" },
        enable: true,
    },
    callback: {
        onClick: onClick
    }
};//可已选择树配置

//读取路口表XML文件，到网页表格
function xmlToRoadTable(obj1) {
    $(obj1).find("DepartInfo").each(function () {
        var obj = new Object();
        obj.DepartId = $(this).find("DepartId").text();
        obj.DepartName = $(this).find("DepartName").text();
        obj.DepartSeq = $(this).find("DepartSeq").text();
        DepartArr.push(obj);
    });
    $(obj1).find("UserInfo").each(function () {
        var obj = new Object();
        obj.UserId = $(this).find("UserId").text();
        obj.UserName = $(this).find("UserName").text();
        obj.DepartId = $(this).find("DepartId").text();
        UserArr.push(obj);
    });

    $(obj1).find("AreaInfo").each(function () {
        var obj = new Object();
        obj.AreaId = $(this).find("AreaId").text();
        obj.AreaName = $(this).find("AreaName").text();
        obj.AreaMemo = $(this).find("AreaMemo").text();
        var str = '<tr class="areaTr"><td class="tdWidth55"><input type="checkbox" name="b" /></td><td class="tdWidth100">' + obj.AreaId + '</td>';
        str += '<td class="tdWidth300">' + obj.AreaName + '</td><td class="tdWidth100"><i class="fa fa-chevron-down fa-lg"></i></td><td class="tdWidth300"></td><td class="tdAuto">' + obj.AreaMemo + '</td><td class="tdWidth100"><a>编辑</a></td></tr>';
        $("#tbRoad").append($(str));
        AreaArr.push(obj);
    });
    $(obj1).find("RoadInfo").each(function () {
        var obj = new Object();
        obj.AreaId = $(this).find("AreaId").text();
        obj.RoadId = $(this).find("RoadId").text();
        obj.RoadName = $(this).find("RoadName").text();
        obj.RoadMemo = $(this).find("RoadMemo").text();
        obj.DepartList = $(this).find("DepartList").text().split(";");
        obj.UserList = $(this).find("UserList").text().split(";");
        obj.str = '<tr class="roadTr" pid="' + obj.AreaId + '"><td class="tdWidth55"><input type="checkbox" name="a" /></td ><td class="tdWidth100"></td><td class="tdWidth300"></td>';
        obj.str+= '<td class="tdWidth100">' + obj.RoadId + '</td><td class="tdWidth300">' + obj.RoadName + '</td><td>' + obj.RoadMemo + '</td><td class="tdWidth100"><a>编辑</a></td></tr>';
        RoadArr.push(obj);
    });
    $("#tbRoad .areaTr").each(function () {
        for (var i = RoadArr.length - 1; i >= 0; i--) {
            if ($($(this).find("td")[1]).text() == RoadArr[i].AreaId) {
                $(this).after($(RoadArr[i].str));
            }
        }
    });
}

//初始化区域下拉框
function AreaArrToSelect(selectObj) {
    for (var i = 0; i < AreaArr.length; i++) {
        var str = '<option value="' + AreaArr[i].AreaId + '">' + AreaArr[i].AreaName + '</option>';
        $(str).appendTo(selectObj);
    }
}
//根据路口ID自动选择区域下拉框
function RoadIdToSelectArea(RoadId) {
    for (var i = 0; i < RoadArr.length; i++) {
        if (RoadArr[i].RoadId == RoadId) {
            var AreaId = RoadArr[i].AreaId;
            $("#roadSelectArea option[value=" + AreaId + "]").attr("selected", true);
        }
    }
}


//增加和修改区域数据提交函数，生成XML字符串
function AreaSubmit(type) {
    var str = ' <?xml version= "1.0" encoding= "utf-8" ?><document><AreaList><AreaInfo>';
    var $Form = $("#addAreaForm");
    var AreaId = $($Form.find("input")[0]).val();
    var AreaName = $($Form.find("input")[1]).val();
    var AreaMemo = $($Form.find("textarea")[0]).val();
    str += '<ManageType>' + type + '</ManageType>' + '<AreaId>' + AreaId + '</AreaId><AreaName>' + AreaName + '</AreaName><AreaMemo>' + AreaMemo + '</AreaMemo>';
    str += '</AreaInfo></AreaList></document>';
    console.log(str);
    $("#txtSubmit").attr('value', str);
}

//增加和修改路口数据提交函数，生成XML字符串
function RoadSubmit(type) {
    var str = ' <?xml version= "1.0" encoding= "utf-8" ?><document><RoadList><RoadInfo>';
    var $Form = $("#addRoadForm");
    var DepartList = [];
    var UserList = [];
    var RoadId = $($Form.find("input")[0]).val();
    var RoadName = $($Form.find("input")[1]).val();
    var RoadAreaId = $($Form.find("select")[0]).val();
    var RoadMemo = $($Form.find("textarea")[0]).val();
    str += '<ManageType>' + type + '</ManageType>' + '<RoadId>' + RoadId + '</RoadId><RoadName>' + RoadName + '</RoadName></AreaId>' + RoadAreaId + '</AreaId><RoadMemo>' + RoadMemo + '</RoadMemo>';
    var nodes = ztree.getCheckedNodes(true);
    for (var i = 0; i < nodes.length; i++) {
        if (nodes[i].pId == null && nodes[i].check_Child_State == nodes[i].children.length) {
            DepartList.push(nodes[i].id);
        }
        if (nodes[i].pId != null) {
            var id = nodes[i].id;
            var pId = nodes[i].pId;
            var UserId = id.substr(id.indexOf(pId) + 1);
            var DepartId = pId;
            UserList.push( UserId);
        }
    }
    str += '<DepartList>';
    for (var i = 0; i < DepartList.length; i++) {
        str += DepartList[i] + ";";
    }
    str += '</DepartList><UserList>';
    for (var i = 0; i < UserList.length; i++) {
        str += UserList[i] + ";";
    }
    str += '</UserList></RoadInfo></RoadList></document>';
    console.log(str);
    $("#txtSubmit").attr('value', str);
}


//读取部门列表
function DepartList() {
    var DepartUserArr = [];
    for (var i in DepartArr) {
        var obj = {};
        obj.id = DepartArr[i].DepartId;
        obj.name = DepartArr[i].DepartName;
        obj.pId = 0;
        DepartUserArr.push(obj);
    }
    for (var i in UserArr) {
        var obj1 = {};
        obj1.id = UserArr[i].DepartId + UserArr[i].UserId;
        obj1.name = UserArr[i].UserName;
        obj1.pId = UserArr[i].DepartId;
        DepartUserArr.push(obj1);
    }
    for (var i = 0; i < DepartUserArr.length; i++) {
    }
    return DepartUserArr;
}

//根据路口id，得到路口用户列表   
function roadIdToUserList(id) {
    for (var i = 0; i < RoadArr.length; i++) {
        if (RoadArr[i].RoadId == id) {
            return RoadArr[i].UserList;
        }
    }
}

//显示全部部门用户树，自动勾选已分配的用户
function setSelectNodeTree(treeObj, userList) {
    for (var i = 0; i < userList.length; i++) {
        var id = userList[i];
        for (var j = 0; j < UserArr.length; j++) {
            if (UserArr[j].UserId==id) {
                id = UserArr[j].DepartId+id;
                break;
            }
        }
        var node = treeObj.getNodesByParam("id", id)[0];
        treeObj.checkNode(node, true, true);
    }
}



//根据区域ID删除部门提交函数，生成XML字符串
function AreaDELETE(AreaId) {
    var str = ' <?xml version= "1.0" encoding= "utf-8" ?><document><AreaList><AreaInfo>';
    str += '<ManageType>DELETE</ManageType>' + '<AreaId>' + AreaId + '</AreaId></AreaInfo></AreaList></document>'
    console.log(str);
    $("#txtSubmit").attr('value', str);
}

//XML字符串转XML Dom对象
function toXmlDom(source) {
    var xmlDoc = null;
    if (window.ActiveXObject) {
        var ARR_ACTIVEX =
            ["MSXML4.DOMDocument", "MSXML3.DOMDocument", "MSXML2.DOMDocument", "MSXML.DOMDocument", "Microsoft.XmlDom"];
        var XmlDomflag = false;
        for (var i = 0; i < ARR_ACTIVEX.length && !XmlDomflag; i++) {
            try {
                var objXML = new ActiveXObject(ARR_ACTIVEX[i]);
                xmlDoc = objXML;
                XmlDomflag = true;
            } catch (e) {
            }
        }
        if (xmlDoc) {
            xmlDoc.async = false;
            xmlDoc.loadXML(source);
        }
    } else {
        var parser = new DOMParser();
        var xmlDoc = parser.parseFromString(source, "text/xml");
    }
    return xmlDoc;
} 