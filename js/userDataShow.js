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
//数组去重
Array.prototype.noRepeat = function () {
    var hash = {},
        result = [];
    for (var i = 0; i < this.length; i++) {
        if (!hash[this[i]]) {
            hash[this[i]] = true;
            result.push(this[i]);
        }
    }
    return result;
}
//读取用户表XML文件，到网页表格
function xmlToUserTable(obj1) {
    $(obj1).find("DepartInfo").each(function () {
        var obj = new Object();
        obj.DepartId = $(this).find("DepartId").text();
        obj.DepartName = $(this).find("DepartName").text();
        DepartArr.push(obj);
    });
    $(obj1).find("AreaInfo").each(function () {
        var obj = new Object();
        obj.AreaId = $(this).find("AreaId").text();
        obj.AreaName = $(this).find("AreaName").text();
        obj.AreaMemo = $(this).find("AreaMemo").text();
        AreaArr.push(obj);
    });

    $(obj1).find("RoadInfo").each(function () {
        var obj = new Object();
        obj.AreaId = $(this).find("AreaId").text();
        obj.AreaName = $(this).find("AreaName").text();
        obj.RoadId = $(this).find("RoadId").text();
        obj.RoadName = $(this).find("RoadName").text();
        RoadArr.push(obj);
        //objPowerList.push({ id: i, pId: 0, name: $(this).find("PowerName"), PowerId: $(this).find("PowerId"), PowerName: $(this).find("PowerName"), PowerGroup: $(this).find("PowerGroup"), PowerSeq: $(this).find("PowerSeq") });
    });
    $(obj1).find("PowerInfo").each(function () {
        var obj = new Object();
        obj.PowerId = $(this).find("PowerId").text();
        obj.PowerName = $(this).find("PowerName").text();
        obj.PowerGroup = $(this).find("PowerGroup").text();
        obj.PowerSeq = $(this).find("PowerSeq").text();
        PowerArr.push(obj);
        //objPowerList.push({ id: i, pId: 0, name: $(this).find("PowerName"), PowerId: $(this).find("PowerId"), PowerName: $(this).find("PowerName"), PowerGroup: $(this).find("PowerGroup"), PowerSeq: $(this).find("PowerSeq") });
    });
    $(obj1).find("UserInfo").each(function () {
        var obj = new Object();
        obj.UserId = $(this).find("UserId").text();
        obj.UserName = $(this).find("UserName").text();
        obj.UserMemo = $(this).find("UserMemo").text();
        obj.DepartId = $(this).find("DepartId").text();
        obj.PowerList = $(this).find("PowerList").text().split(";");
        obj.RoadList = $(this).find("RoadList").text().split(";");
        UserArr.push(obj);
        $(obj1).find("DepartInfo").each(function () {
            if ($(this).find("DepartId").text() == obj.DepartId) {
                obj.DepartName = $(this).find("DepartName").text();
            }
        });
        ; var str = '<tr><td class="tdWidth55"><input type="checkbox" name="a" /></td ><td class="tdWidth100">' + obj.UserId + '</td>';
        str += '<td class="tdWidth300">' + obj.UserName + '</td><td class="tdWidth100">' + obj.DepartName + '</td><td class="tdAuto">' + obj.UserMemo + '</td> <td class="showList tdWidth300 tdDepartFunctree">共有功能权限<span class="spanNum">' + obj.PowerList.length + '</span>个<i class="fa fa-chevron-up fa-lg alertFuncTreeI"></i><ul class="ztree departFunctree" ></ul></td>';
        str += '<td class="showList tdWidth300 tdDepartRoadtree">共有路口权限<span class="spanNum">' + obj.RoadList.length + '</span>个<i class="fa fa-chevron-up fa-lg alertRoadTreeI"></i><ul class="ztree departRoadtree" ></ul></td>';
        str += '<td class="tdWidth100"><a>编辑</a></td></tr>';
        $(str).appendTo($("#tbUser"));
    });


}
function AreaIdToAreaName(id) {
    for (var i = 0; i < AreaArr; i++) {
        if (AreaArr[i].id == id) {
            return AreaArr[i].AreaName;
        }
    }
}
//初始化增加用户时部门下拉选择框
function DepartArrToSelect(selectObj) {
    for (var i = 0; i < DepartArr.length; i++) {
        var str = '<option value="' + DepartArr[i].DepartId + '">' + DepartArr[i].DepartName + '</option>';
        $(str).appendTo(selectObj);
    }
}

//根据用户ID改用户时部门下拉框自动选中部门
function UserIdToSelectDepart(UserId) {
    for (var i = 0; i < UserArr.length; i++) {
        if (UserArr[i].UserId == UserId) {
            DepartId = UserArr[i].DepartId;
            $("#userSelectGroup option[value=" + DepartId + "]").attr("selected",true);
        }
    }
}
//根据用户ID得到部门权限列表数组
function UserIdToPowerList(UserId) {
    var PowerList = null;
    for (var i = 0; i < UserArr.length; i++) {
        if (UserArr[i].UserId == UserId) {
            PowerList = UserArr[i].PowerList;
        }
    }
    return PowerList;
}

//根据功能权限列表得到部门权限列表树的数据
function PowerListToZtreeData(PowerList) {
    var treeNode = [];
    for (var i = 0; i < PowerList.length; i++) {
        for (var j = 0; j < PowerArr.length; j++) {
            if (PowerList[i] == PowerArr[j].PowerId) {
                var obj = { id: i + 1, pId: 0, name: PowerArr[j].PowerName };
                treeNode.push(obj);
            }
        }
    }
    return treeNode;
}

function GetAllPowerList() {
    var treeNode = [];
    for (var i = 0; i < PowerArr.length; i++) {
        var pobj = { id: PowerArr[i].PowerId, pId: 0, name: PowerArr[i].PowerName };
        treeNode.push(pobj);
    }
    //for (var i = 0; i < RoadArr.length; i++) {
    //    var obj = { id: RoadArr[i].AreaId + RoadArr[i].RoadId, pId: RoadArr[i].AreaId, name: RoadArr[i].RoadName };
    //    treeNode.push(obj);
    //}
    return treeNode;

}

//显示全部功能树，自动勾选已有功能权限
function setPowerSelectNodeTree(treeObj, powerlist) {
    for (var i = 0; i < powerlist.length; i++) {
        var node = treeObj.getNodesByParam("id", powerlist[i])[0];
        treeObj.checkNode(node, true, true);

    }
}

//根据用户ID得到部门已有权限的路口列表数组
function UserIdToRoadList(UserId) {
    var RoadList = null;
    for (var i = 0; i < UserArr.length; i++) {
        if (UserArr[i].UserId == UserId) {
            RoadList = UserArr[i].RoadList;
        }
    }
    return RoadList;
}

//根据路口权限列表得到用户路口权限列表树的数据
function RoadListToZtreeData(RoadList) {
    var treeNode = [];
    var pobj = {};
    var arr = [];
    for (var i = 0; i < RoadList.length; i++) {
        var areaid = RoadList[i].split(",")[0];
        arr.push(areaid);
        var roadid = RoadList[i].split(",")[1];
        var pobj = { id: areaid + roadid, pId: areaid, name: RoadArr[i].RoadName };
        treeNode.push(pobj);
    }
    arr = arr.noRepeat();
    for (var i = 0; i < arr.length; i++) {
        for (var j = 0; j < AreaArr.length; j++) {
            if (AreaArr[j].AreaId == arr[i]) {
                pobj = { id: arr[i], pId: 0, name: AreaArr[j].AreaName };
                treeNode.unshift(pobj);
            }
        }
    }
    return treeNode;
}
//得到全部路口列表数组
function GetAllRoadList() {
    var treeNode = [];
    for (var i = 0; i < AreaArr.length; i++) {
        var pobj = { id: AreaArr[i].AreaId, pId: 0, name: AreaArr[i].AreaName };
        treeNode.push(pobj);
    }
    for (var i = 0; i < RoadArr.length; i++) {
        var obj = { id: RoadArr[i].AreaId + RoadArr[i].RoadId, pId: RoadArr[i].AreaId, name: RoadArr[i].RoadName };
        treeNode.push(obj);
    }
    return treeNode;

}

//显示全部路口树，自动勾选已有权限路口根
function setSelectNodeTree(treeObj, roadlist) {
    for (var i = 0; i < roadlist.length; i++) {
        var pId = roadlist[i].split(",")[0];
        var id = roadlist[i].split(",")[0] + roadlist[i].split(",")[1];
        var node = treeObj.getNodesByParam("id", id)[0];
        treeObj.checkNode(node, true, true);
    }
}

//部门增加和修改数据提交函数，生成XML字符串
function UserSubmit(type) {
    var str = '<?xml version="1.0" encoding="utf-8" ?><document><UserList><UserInfo>';
    var $Form = $("#addUserForm");
    var list = [];
    var powerList = [];
    var AreaIdList = [];
    var UserId = $($Form.find("input")[0]).val();
    var UserName = $($Form.find("input")[1]).val();
    var UserMemo = $($Form.find("textarea")[0]).val();
    var UserGroupId = $($Form.find("select")[0]).val();
    str += '<ManageType>' + type + '</ManageType>' + '<UserId>' + UserId + '</UserId><UserName>' + UserName + '</UserName><UserMemo>' + UserMemo + '</UserMemo><Password></Password><DepartId>' + UserGroupId + '</DepartId >';
    var powerNodes = ztreePower.getCheckedNodes(true);
    str += '<PowerList>';
    for (var i = 0; i < powerNodes.length; i++) {
        var powerId = powerNodes[i].id;
        str += powerId + ";";
    }
    str += '<PowerList>';
    var nodes = ztree.getCheckedNodes(true);
    for (var i = 0; i < nodes.length; i++) {
        if (nodes[i].pId == null && nodes[i].check_Child_State == nodes[i].children.length) {
            AreaIdList.push(nodes[i].id);
        }
        if (nodes[i].pId != null) {
            var id = nodes[i].id;
            var pId = nodes[i].pId;
            var RoadId = id.substr(id.indexOf(pId) + 1);
            var AreaId = pId;
            list.push(AreaId + "," + RoadId);
        }
    }

    str += '<RoadList>';
    for (var i = 0; i < list.length; i++) {
        str += list[i] + ";";
    }
    str += '</RoadList><AreaList>';
    for (var i = 0; i < AreaIdList.length; i++) {
        str += AreaIdList[i] + ";";
    }
    str += '</AreaList></UserInfo></UserList></document>';
    console.log(str);
    $("#txtSubmit").attr('value', str);
}

//根据部门ID删除部门提交函数，生成XML字符串
function DepartDELETE(DepartId) {
    var str = ' <?xml version= "1.0" encoding= "utf-8" ?><document><DepartList><DepartInfo>';
    str += '<ManageType>DELETE</ManageType>' + '<DepartId>' + DepartId + '</DepartId></DepartInfo></DepartList></document>'
    console.log(str);
}

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






























