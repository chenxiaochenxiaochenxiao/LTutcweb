<%@ Page Language="C#" AutoEventWireup="true" CodeFile="map.aspx.cs" Inherits="map" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link href="css/reset.css" type="text/css" rel="stylesheet" />
    <link href="css/layout.css" type="text/css" rel="stylesheet" />
    <link href="three/font-awesome-4.7.0/css/font-awesome.min.css" type="text/css" rel="stylesheet" />
    <link href="three/zTree_v3-master/css/zTreeStyle/zTreeStyle.css" type="text/css" rel="stylesheet" />
    <link href="css/table.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="three/layer/layer.js"></script>
<script src="http://api.map.baidu.com/api?v=2.0&ak=3sv5vCjopi11sVgNBEsN1QO2AFq1VX07" type="text/javascript"></script>
    <style>
        #map {
            width:100%;
            height:500px;
            border:1px solid #d1d1d1;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
    <div id="mapManage">
        <div class="cl1">
            <div id="map"></div>
        </div>

    </div>
    </form>
</body>
</html>
<script>
    $(".cl1").css("height", parent.$(".tab-body").innerHeight() - 20);
    $("#map").css("height", $(".cl1").height());
    var map = new BMap.Map("map");          // 创建地图实例  
    var point = new BMap.Point(116.404, 39.915);  // 创建点坐标  
    map.centerAndZoom(point, 15);                 // 初始化地图，设置中心点坐标和地图级别  
    map.enableScrollWheelZoom();
    map.addControl(ScaleControl());
    map.addControl(MapTypeControl());
</script>
