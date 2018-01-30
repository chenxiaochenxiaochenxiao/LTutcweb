var roadInfo = {};  //路口基本信息
var LampInfo = [];  //灯组信息数组
//读取用户表XML文件，到网页表格
function xmlToLampTable(obj1) {

    roadInfo.AreaId = $($(obj1).find("RoadInfo")[0]).find("AreaId").text();
    roadInfo.AreaName = $($(obj1).find("RoadInfo")[0]).find("AreaName").text();
    roadInfo.RoadId = $($(obj1).find("RoadInfo")[0]).find("RoadId").text();
    roadInfo.RoadName = $($(obj1).find("RoadInfo")[0]).find("RoadName").text();

    $(obj1).find("LampInfo").each(function () {
        var obj = new Object();
        obj.LampId = $(this).find("LampId").text();
        obj.LampType = $(this).find("LampType").text();
        obj.LampName = $(this).find("LampName").text();
        obj.LampRedId = $(this).find("LampRedId").text();
        obj.LampYellowId = $(this).find("LampYellowId").text();
        obj.LampGreenId = $(this).find("LampGreenId").text();
        obj.LampDirection = $(this).find("LampDirection").text();
        LampInfo.push(obj);
        var str = '<tr dir="' + obj.LampDirection +'"><td class="tdWidth100" >' + obj.LampId + '</td >';
        str += '<td class="tdWidth100">' + obj.LampType + '</td>';
        str += '<td class="tdWidth100">' + obj.LampName + '</td>';
        str += '<td class="tdWidth100">' + obj.LampRedId + '</td>';
        str += '<td class="tdWidth100">' + obj.LampYellowId + '</td>';
        str += '<td class="tdWidth100">' + obj.LampGreenId + '</td>';
        str += '<td class="tdWidth100"><a class="edit">编辑</a><a>删除</a></td></tr>';
        $(str).appendTo($("#lampTable"));
    });
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
