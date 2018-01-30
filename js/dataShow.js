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
//读取部门表XML文件，到网页表格重
function xmlToGroupTable(obj1) {
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

    $(obj1).find("DepartInfo").each(function () {
        var obj = new Object();
        var PowerList = [];
        var RoadList = [];
        obj.DepartId = $(this).find("DepartId").text();
        obj.DepartName = $(this).find("DepartName").text();
        obj.DepartMemo = $(this).find("DepartMemo").text();
        obj.DepartSeq = $(this).find("DepartSeq").text();
        obj.PowerList = $(this).find("PowerList").text().split(";");
        obj.RoadList = $(this).find("RoadList").text().split(";");
        DepartArr.push(obj);
        var str = '<tr><td class="tdWidth55"><input type="checkbox" name="a" /></td ><td class="tdWidth100">' + obj.DepartId + '</td>';
        str += '<td class="tdWidth300">' + obj.DepartName + '</td><td class="tdAuto">' + obj.DepartMemo + '</td> <td class="showList tdWidth300 tdDepartFunctree">共有功能权限<span class="spanNum">' + obj.PowerList.length + '</span>个<i class="fa fa-chevron-up fa-lg alertFuncTreeI"></i><ul class="ztree departFunctree"  ></ul ></td >';
        str += '<td class="showList tdWidth300 tdDepartRoadtree">共有路口权限<span class="spanNum">' + obj.RoadList.length + '</span>个<i class="fa fa-chevron-up fa-lg alertRoadTreeI"></i><ul id="partPowerTree"' + obj.DepartId + ' class="ztree departRoadtree" ></ul></td>';
        str += '<td class="tdWidth100"><a>编辑</a></td></tr>';
        $(str).appendTo($("#tbGroup"));


        //var str = '<tr><td class="tdWidth55"><input type="checkbox" name="a" /></td ><td class="tdWidth100">' + obj.DepartId + '</td>';
        //str += '<td class="tdWidth300">' + obj.DepartName + '</td><td class="tdAuto">' + obj.DepartMemo + '</td> <td class="showList tdWidth300 tdDepartFunctree">共有功能权限<span class="spanNum">' + obj.PowerList.length + '</span>个<i class="fa fa-chevron-up fa-lg alertFuncTreeI"></i><div class="departFunctree"><ul class="ztree"  ></ul ></div></td >';
        //str += '<td class="showList tdWidth300 tdDepartRoadtree">共有路口权限<span class="spanNum">' + obj.RoadList.length + '</span>个<i class="fa fa-chevron-up fa-lg alertRoadTreeI"></i><div class="departRoadtree"><ul id="partPowerTree"' + obj.DepartId + ' class="ztree" ></ul></div ></td>';
        //str += '<td class="tdWidth100"><a>编辑</a></td></tr>';
        //$(str).appendTo($("#tbGroup"));
    });

};
//读取路口表XML文件，到网页表格
function xmlToRoadTable(obj) {

    $(obj).find("AreaInfo").each(function () {
        var obj = new Object();
        obj.AreaId = $(this).find("AreaId").text();
        obj.AreaName = $(this).find("AreaName").text();
        obj.AreaMemo = $(this).find("AreaMemo").text();
        var str = '<tr class="areaTr"><td><input type="checkbox" name="b" /></td><td>' + obj.AreaId + '</td>';
        str += '<td>' + obj.AreaName + '</td><td></td><td></td><td>' + obj.AreaMemo + '</td><td><a>编辑</a></td></tr>';
        $("#tbRoad").append($(str));
    });
    $(obj).find("RoadInfo").each(function () {
        var obj = new Object();
        obj.AreaId = $(this).find("AreaId").text();
        obj.RoadId = $(this).find("RoadId").text();
        obj.RoadName = $(this).find("RoadName").text();
        obj.RoadMemo = $(this).find("RoadMemo").text();
        obj.DepartList = $(this).find("DepartList").text().split(";");
        obj.UserList = $(this).find("UserList").text().split(";");
        var str = '<tr pid="' + obj.AreaId + '"><td><input type="checkbox" name="a" /></td ><td></td><td></td>';
        str += '<td>' + obj.RoadId + '</td><td>' + obj.RoadName + '</td><td>' + obj.RoadMemo + '</td><td><a>编辑</a></td></tr>';
        $("#tbRoad .areaTr").each(function () {
            if ($($(this).find("td")[1]).text() == obj.AreaId) {
                $(this).after($(str));
            }
        });

    });
    //$(obj).find("DepartInfo").each(function () {
    //    var obj = new Object();
    //    obj.DepartId = $(this).find("DepartId").text();
    //    obj.DepartName = $(this).find("DepartName").text();
    //    obj.DepartSeq = $(this).find("DepartSeq").text();

    //});
    //$(obj).find("UserInfo").each(function () {
    //    var obj = new Object();
    //    obj.UserId = $(this).find("UserId").text();
    //    obj.UserName = $(this).find("UserName").text();
    //    obj.DepartId = $(this).find("DepartId").text();

    //});
}
//读取用户表XML文件，到网页表格
function xmlToUserTable(obj1) {
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
        var str = '<tr><td><input type="checkbox" name="a" /></td ><td class="">' + obj.UserId + '</td>';
        str += '<td>' + obj.UserName + '</td><td>' + obj.DepartName + '</td><td>' + obj.UserMemo + '</td> <td class="showList">共有<span>' + obj.PowerList + '</span>个权限<i class="fa fa-sort-up fa-2x alertFuncTreeI"></i></td >';
        str += '<td class="showList">共有<span>' + obj.RoadList + '</span>个路口<i class="fa fa-sort-up fa-2x alertRoadTreeI"></i></td>';
        str += '<td class=""><a>编辑</a></td></tr>';
        $(str).appendTo($("#tbUser"));
    });
}

//初始化增加用户时部门下拉选择框
function DepartArrToSelect(obj,selectObj) {
    for (var i = 0; i < obj.length; i++) {
        var str = '<option value="' + obj[i].DepartId + '">' + obj[i].DepartName + '</option>';
        $(str).appendTo(selectObj);
    }
}
//初始化增加路口时区域下拉选择框
function AreaArrtoSelect(obj,selectObj) {
    for (var i = 0; i < obj.length; i++) {
        var str = '<option value="' + obj[i].AreaId + '">' + obj[i].AreaName + '</option>';
        $(str).appendTo(selectObj);
    }
}
//根据部门ID得到部门SEQ排序号
function DepartIdToSeq(DepartId) {
    var seq = "";
    for (var i = 0; i < DepartArr.length; i++) {
        if (DepartArr[i].DepartId == DepartId) {
            seq = DepartArr[i].DepartSeq;
        }
    }
    return seq;
}
//根据功能ID得到功能SEQ排序
function PowerIdToPowerSeq(PowerId) {
    var seq = "";
    for (var i = 0; i < PowerArr.length; i++) {
        if (PowerArr[i].PowerId == PowerId) {
            seq = PowerArr[i].PowerSeq;
        }
    }
    return seq;
}

//根据部门ID得到部门权限列表数组
function DepartIdToPowerList(DepartId) {
    var PowerList = null;
    for (var i = 0; i < DepartArr.length; i++) {
        if (DepartArr[i].DepartId == DepartId) {
            PowerList = DepartArr[i].PowerList;
        }
    }
    return PowerList;
}

//根据部门功能权限列表得到部门权限列表树的数据
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

//根据部门ID得到部门已有权限的路口列表数组
function DepartIdToRoadList(DepartId) {
    var RoadList = null;
    for (var i = 0; i < DepartArr.length; i++) {
        if (DepartArr[i].DepartId == DepartId) {
            RoadList = DepartArr[i].RoadList;
        }
    }
    return RoadList;
}

//根据部门路口权限列表得到部门路口权限列表树的数据
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
function DepartSubmit(type) {
    var str = ' <?xml version= "1.0" encoding= "utf-8" ?><document><DepartList><DepartInfo>';
    var $Form = $("#addGroupForm");
    var list = [];
    var powerList = [];
    var AreaIdList = [];
    var DepartId = $($Form.find("input")[0]).val();
    var DepartName = $($Form.find("input")[1]).val();
    var DepartMemo = $($Form.find("textarea")[0]).val();
    var DepartSeq = DepartIdToSeq(DepartId);

    str += '<ManageType>' + type + '</ManageType>' + '<DepartId>' + DepartId + '</DepartId><DepartName>' + DepartName + '</DepartName><DepartMemo>' + DepartMemo + '</DepartMemo><DepartSeq>' + DepartSeq + '</DepartSeq >';

    var powerNodes = ztreePower.getCheckedNodes(true);
    str += '<PowerList>';
    for (var i = 0; i < powerNodes.length; i++) {
        var powerId = powerNodes[i].id;
        str += powerId+";";
    }
    str += '</PowerList>';
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
    str += '</AreaList></DepartInfo></DepartList></document>';
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






























