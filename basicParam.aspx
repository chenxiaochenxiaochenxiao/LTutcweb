<%@ Page Language="C#" AutoEventWireup="true" CodeFile="basicParam.aspx.cs" Inherits="bascParam" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="css/reset.css" type="text/css" rel="stylesheet" />
    <link href="css/layout.css" type="text/css" rel="stylesheet" />
    <link href="three/font-awesome-4.7.0/css/font-awesome.min.css" type="text/css" rel="stylesheet" />
    <link href="css/table.css" type="text/css" rel="stylesheet" />
    <link href="css/basicParam.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="three/layer/layer.js"></script>
    <script type="text/javascript" src="js/basicParamData.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="basicParam">
            <div class="cl1">
                <div class="paramBody">
                    <div class="h50">
                        <div class="addBtn fl" id="lampGroupInfo">
                            <i class="fa fa-lightbulb-o fa-lg"></i><span>灯组设置</span>
                        </div>
                        <div class="addBtn fl" id="drivewayInfo">
                            <i class="fa fa-road fa-lg"></i><span>车道设置</span>
                        </div>
                        <div class="addBtn fl" id="detectorInfo">
                            <i class="fa fa-minus fa-lg"></i><span>检测器设置</span>
                        </div>
                        <div class="addBtn fl" id="phaseInfo">
                            <i class="fa fa-plus fa-lg"></i><span>相位设置</span>
                        </div>
                    </div>
                    <div class="picDiv fl">
                        <div class="picDivTitle">路口模拟图</div>
                        <div style="height: 645px;">
                            <img src="img/roadPic/140.jpg" />
                            <img class="realRoadMap" src="img/roadPic/140.jpg" width="100" />
                        </div>
                    </div>
                    <div class="basicInfoFrom">
                        <div class="picDivTitle">基本信息</div>
                        <div class="form clearfix">
                            <div class="item">
                                <div>路口类型</div>
                                <div>
                                    <select>
                                        <option value="140">4方向路口</option>
                                        <optgroup label="3方向路口">
                                            <option value="133">无东方向</option>
                                            <option value="134">无南方向</option>
                                            <option value="131">无西方向</option>
                                            <option value="132">无北方向</option>
                                        </optgroup>

                                        <option value="150">5方向路口</option>
                                    </select>
                                </div>
                            </div>

                            <div class="item">
                                <div>最大绿</div>
                                <div>
                                    <input type="number" />
                                </div>
                            </div>
                            <div class="item">
                                <div>路口编号</div>
                                <div>
                                    <input type="number" />
                                </div>

                            </div>
                            <div class="item">
                                <div>最小绿</div>
                                <div>
                                    <input type="number" />
                                </div>

                            </div>

                            <div class="item">
                                <div>路口名称</div>
                                <div>
                                    <input type="number" />
                                </div>
                            </div>
                            <div class="item">
                                <div>最大红</div>
                                <div>
                                    <input type="number" />
                                </div>
                            </div>
                            <div class="item">
                                <div>区域编号</div>
                                <div>
                                    <input type="number" />
                                </div>

                            </div>

                            <div class="item">
                                <div>最小红</div>
                                <div>
                                    <input type="number" />
                                </div>

                            </div>
                            <div class="item">
                                <div>区域名称</div>
                                <div>
                                    <input type="number" />
                                </div>
                            </div>
                            <div class="item">
                                <div>开机黄闪</div>
                                <div>
                                    <input type="number" />
                                </div>

                            </div>
                            <div class="item">
                                <div>主机编号</div>
                                <div>
                                    <input type="number" />
                                </div>

                            </div>


                            <div class="item">
                                <div>开机红灯</div>
                                <div>
                                    <input type="number" />
                                </div>
                            </div>
                            <div class="item">
                                <div>主机类型</div>
                                <div>
                                    <select disabled="disabled">
                                        <option value="3">有线信号机</option>
                                        <option value="4">无线信号机</option>
                                    </select>
                                </div>

                            </div>
                            <div class="item">
                                <div>机动车绿闪时间</div>
                                <div>
                                    <input type="number" />
                                </div>

                            </div>
                            <div class="item">
                                <div>机动车红闪时间</div>
                                <div>
                                    <input type="number" />
                                </div>
                            </div>
                            <div class="item">
                                <div>人行绿闪时间</div>
                                <div>
                                    <input type="number" />
                                </div>

                            </div>
                            <div class="item">
                                <div>过渡黄闪时间</div>
                                <div>
                                    <input type="number" />
                                </div>

                            </div>

                        </div>
                        <div style="margin: 0 10px; height: 80px; border-top: 1px solid #ccc; margin-top: 5px;">
                            <button class="inputBtn" id="newPwdCancleBtn" style="margin-top: 22px">刷新</button>
                            <button class="inputBtn btnSubmit" id="paramEdit" style="margin-top: 22px">编辑</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="alert" id="alertLampGroupInfo">
                <div class="alertTitle">
                    <span>配置灯组信息，2种或3种颜色的灯组成一个灯组</span>
                </div>

                <div class="h50" style="margin-bottom: 0; padding-left: 27px;">
                    <div class="addBtn fl" id="btnZJDZ">
                        <i class="fa fa-lightbulb-o fa-lg"></i><span>增加灯组</span>
                    </div>
                </div>

                <div style="padding: 10px 37px;">
                    <div class="lampBgDiv" id="lampBg" style="">
                    </div>
                    <div class="tableDiv">
                        <table class="table" id="lampTable" cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
                            <tr>
                                <th class="tdWidth100">灯组编号</th>
                                <th class="tdWidth100">灯组类型</th>
                                <th class="tdWidth100">灯组名称</th>
                                <th class="tdWidth100">红灯端子</th>
                                <th class="tdWidth100">黄灯端子</th>
                                <th class="tdWidth100">绿灯端子</th>
                                <th class="tdWidth100">操作</th>
                            </tr>
                            <tr>
                                <td class="tdWidth100">1</td>
                                <td class="tdWidth100">车道灯组</td>
                                <td class="tdWidth100">北机动直行</td>
                                <td class="tdWidth100">1</td>
                                <td class="tdWidth100">2</td>
                                <td class="tdWidth100">3</td>
                                <td class="tdWidth100"><a class="edit">编辑</a><a>删除</a></td>
                            </tr>
                            <tr>
                                <td class="tdWidth100">1</td>
                                <td class="tdWidth100">车道灯组</td>
                                <td class="tdWidth100">北机动直行</td>
                                <td class="tdWidth100">1</td>
                                <td class="tdWidth100">2</td>
                                <td class="tdWidth100">3</td>
                                <td class="tdWidth100"><a class="edit">编辑</a><a>删除</a></td>
                            </tr>
                            <tr>
                                <td class="tdWidth100">1</td>
                                <td class="tdWidth100">人行灯组</td>
                                <td class="tdWidth100">北机动直行</td>
                                <td class="tdWidth100">1</td>
                                <td class="tdWidth100">2</td>
                                <td class="tdWidth100">3</td>
                                <td class="tdWidth100"><a class="edit">编辑</a><a>删除</a></td>
                            </tr>

                        </table>
                    </div>
                </div>

            </div>
            <div class="alert" id="alertDrivewayInfo">
                <div class="alertTitle">
                    <span>配置车道，车道管理可以选择车道数量，点击车道可以设置车道类型</span>
                </div>
                <div style="padding: 10px 37px;">
                    <div id="roadPicDiv" style="width: 842px; padding: 0px; position: relative; border: 1px solid #ccc;">
                        <img id="roadPic" src="" />
                        <img class="realRoadMap" id="realRoadMap1" src="" width="100" />
                        <div id="roadPicClick"></div>
                        <div id="Nshade"></div>
                        <div id="Sshade"></div>
                        <div id="Eshade"></div>
                        <div id="Wshade"></div>
                        <img id="ENimg" class="absolute1" />
                        <img id="ESimg" class="absolute1" />
                        <img id="CSimg" class="absolute1" />
                        <img id="WSimg" class="absolute1" />
                        <img id="WNimg" class="absolute1" />
                        <div style="width: 234px; height: 600px; border: 1px solid #ccc; position: absolute; right: 0px; top: 0px;">
                            <div class="picDivTitle">编辑车道数量</div>
                            <div class="form clearfix">
                                <div id="direction4Form">
                                    <div class="item100">
                                        <div>北方向车道数</div>
                                        <div>
                                            <select id="Nnum">
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                                <option value="6" selected="selected">6</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="item100">
                                        <div>东方向车道数</div>
                                        <div>
                                            <select id="Enum">
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                                <option value="6" selected="selected">6</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="item100">
                                        <div>南方向车道数</div>
                                        <div>
                                            <select id="Snum">
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                                <option value="6" selected="selected">6</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="item100">
                                        <div>西方向车道数</div>
                                        <div>
                                            <select id="Wnum">
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                                <option value="6" selected="selected">6</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div id="direction5Form" style="display: none">
                                    <div class="item100">
                                        <div>东北向车道数</div>
                                        <div>
                                            <select id="ENnum">
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                                <option value="6" selected="selected">6</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="item100">
                                        <div>东南方向车道数</div>
                                        <div>
                                            <select id="ESnum">
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                                <option value="6" selected="selected">6</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="item100">
                                        <div>南方向车道数</div>
                                        <div>
                                            <select id="CSnum">
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                                <option value="6" selected="selected">6</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="item100">
                                        <div>西南方向车道数</div>
                                        <div>
                                            <select id="WSnum">
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                                <option value="6" selected="selected">6</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="item100">
                                        <div>西北方向车道数</div>
                                        <div>
                                            <select id="WNnum">
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                                <option value="6" selected="selected">6</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div style="padding: 10px 37px;">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="alertUserInfoFormBottom">
                    <button class="inputBtn" id="DrivewayInfoReload">刷新</button>
                    <button class="inputBtn btnSubmit" id="DrivewayInfoEdit">编辑</button>
                </div>
            </div>
            <div class="alert" id="alertDetectorInfo">
                <div class="alertTitle">
                    <span>配置检测器信息</span>
                </div>
                <div class="h50" style="margin-bottom: 0; padding-left: 27px;">
                    <div class="addBtn fl" id="btnZJJCQ">
                        <i class="fa fa-lightbulb-o fa-lg"></i><span>增加检测器</span>
                    </div>
                </div>

                <div style="padding: 10px 37px;">
                    <div class="tableDiv" style="margin-top: 0px;">
                        <table class="table" id="detectorTable" cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
                            <tr>
                                <th class="tdWidth100">检测器编号</th>
                                <th class="tdWidth100">检测器类型</th>
                                <th class="tdWidth100">检测器名称</th>
                                <th class="tdWidth100">红灯端子</th>
                                <th class="tdWidth100">黄灯端子</th>
                                <th class="tdWidth100">绿灯端子</th>
                                <th class="tdWidth100">操作</th>
                            </tr>
                            <tr>
                                <td class="tdWidth100">1</td>
                                <td class="tdWidth100">车道灯组</td>
                                <td class="tdWidth100">北机动直行</td>
                                <td class="tdWidth100">1</td>
                                <td class="tdWidth100">2</td>
                                <td class="tdWidth100">3</td>
                                <td class="tdWidth100"><a class="edit">编辑</a><a>删除</a></td>
                            </tr>
                            <tr>
                                <td class="tdWidth100">1</td>
                                <td class="tdWidth100">车道灯组</td>
                                <td class="tdWidth100">北机动直行</td>
                                <td class="tdWidth100">1</td>
                                <td class="tdWidth100">2</td>
                                <td class="tdWidth100">3</td>
                                <td class="tdWidth100"><a class="edit">编辑</a><a>删除</a></td>
                            </tr>
                            <tr>
                                <td class="tdWidth100">1</td>
                                <td class="tdWidth100">人行灯组</td>
                                <td class="tdWidth100">北机动直行</td>
                                <td class="tdWidth100">1</td>
                                <td class="tdWidth100">2</td>
                                <td class="tdWidth100">3</td>
                                <td class="tdWidth100"><a class="edit">编辑</a><a>删除</a></td>
                            </tr>

                        </table>
                    </div>
                </div>
            </div>
            <div class="alert" id="alertPhaseInfo" style="">
                <div class="alertTitle">
                    <span>配置相位信息，2种或3种颜色的灯组成一个灯组</span>
                </div>
                <div class="h50" style="margin-bottom: 0; padding-left: 27px;">
                    <div class="addBtn fl" id="btnZJXW">
                        <i class="fa fa-lightbulb-o fa-lg"></i><span>增加相位</span>
                    </div>
                </div>
                <div style="padding: 10px 37px;">
                    <div class="tableDiv" style="margin-top:0px; height:500px;">
                        <table class="table" id="phaseTable" cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
                            <tr>
                                <th class="tdWidth100">相位编号</th>
                                <th class="tdWidth100">相位名称</th>
                                <th class="tdWidth100">相位车道列表</th>
                                <th class="tdWidth100">红灯端子</th>
                                <th class="tdWidth100">黄灯端子</th>
                                <th class="tdWidth100">绿灯端子</th>
                                <th class="tdWidth100">操作</th>
                            </tr>
                            <tr>
                                <td class="tdWidth100">1</td>
                                <td class="tdWidth100">车道灯组</td>
                                <td class="tdWidth100">北机动直行</td>
                                <td class="tdWidth100">1</td>
                                <td class="tdWidth100">2</td>
                                <td class="tdWidth100">3</td>
                                <td class="tdWidth100"><a class="edit">编辑</a><a>删除</a></td>
                            </tr>
                            <tr>
                                <td class="tdWidth100">1</td>
                                <td class="tdWidth100">车道灯组</td>
                                <td class="tdWidth100">北机动直行</td>
                                <td class="tdWidth100">1</td>
                                <td class="tdWidth100">2</td>
                                <td class="tdWidth100">3</td>
                                <td class="tdWidth100"><a class="edit">编辑</a><a>删除</a></td>
                            </tr>
                            <tr>
                                <td class="tdWidth100">1</td>
                                <td class="tdWidth100">人行灯组</td>
                                <td class="tdWidth100">北机动直行</td>
                                <td class="tdWidth100">1</td>
                                <td class="tdWidth100">2</td>
                                <td class="tdWidth100">3</td>
                                <td class="tdWidth100"><a class="edit">编辑</a><a>删除</a></td>
                            </tr>

                        </table>
                    </div>
                </div>

            </div>
            <div id="addLampForm">
                <div class="alertTitle">
                    <span>增加灯组，请输入灯组名称，选择灯组类型，再灯组模拟图上选择需要的灯</span>
                </div>
                <div class="form" style="height: auto; margin-bottom: 10px;">
                    <div class="item">
                        <div>灯组类型</div>
                        <div>
                            <select>
                                <option selected="selected" value="1">机动车灯组</option>
                                <option value="0">人行灯组</option>
                            </select>
                        </div>

                    </div>
                    <div class="item">
                        <div>灯组方向</div>
                        <div>
                            <select style="width: 20%">
                                <option selected="selected" value="1">北</option>
                                <option value="2">东</option>
                                <option value="3">南</option>
                                <option value="4">西</option>
                            </select>
                           <input id="lampNameInput" style="position:absolute; width: 301px; margin-left: 12px; left:555px;top:90px;" />
                            <select id="lampNameSelect" style="width: 76%; margin-left: 12px;">
                                 <option>常用名称1</option>
                                 <option>常用名称2</option>
                                 <option>常用名称3</option>
                                 <option>常用名称4</option>
                            </select>
                        </div>
                    </div>

                </div>
                <div style="padding: 10px 26px;">
                    <div class="lampBgDiv" id="lampBg2" style="background: url('img/lampPic/deng1.jpg'); -moz-user-select: none;" onselectstart="return false;">
                    </div>
                </div>

                <div class="alertUserInfoFormBottom">
                    <input class="inputBtn" id="addLampCancle" type="button" value="取消" />
                    <input class="inputBtn btnSubmit" id="addLampSave" type="button" value="保存" />
                </div>
            </div>
            <div id="addRoadForm">
                <div class="form" style="height: auto; margin-bottom: 10px;">
                    <div class="item100">
                        <div>车道编号</div>
                        <div>
                            <input type="number" disabled="disabled" />
                        </div>

                    </div>
                    <div class="item100">
                        <div>车道类型</div>
                        <div>
                            <select>
                                <option value="01">直行机动车车道</option>
                                <option value="02">左转机动车车道</option>
                                <option value="03">右转机动车车道</option>
                                <option value="04">直左混行机动车车道</option>
                                <option value="05">直右混行机动车车道</option>
                                <option value="06">掉头机动车车道</option>
                                <option value="07">左转掉头机动车车道</option>
                                <option value="08">左右混行机动车车道</option>
                                <option value="09">左直右混行机动车车道</option>
                                <option value="10">非机动车车道</option>
                                <option value="11">人行道</option>
                            </select>
                        </div>

                    </div>
                    <div class="item100">
                        <div>使用灯组名称</div>
                        <div>
                            <select>
                                <option value="01">灯组1</option>
                                <option value="02">灯组1</option>
                                <option value="03">灯组1</option>
                            </select>
                        </div>

                    </div>
                    <div class="item100">
                        <div>使用检测器名称</div>
                        <div>
                            <select>
                                <option value="01">检测器1</option>
                                <option value="02">检测器1</option>
                                <option value="03">检测器1</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="alertUserInfoFormBottom">
                    <input class="inputBtn" id="addRoadCancle" type="button" value="取消" />
                    <input class="inputBtn btnSubmit" id="addRoadSave" type="button" value="保存" />
                    <input class="inputBtn btnDel" id="btnDelete" type="button" value="删除" />
                </div>
            </div>
            <div id="addPhaseForm">
                <div class="alertTitle">
                    <span>配置车道，车道管理可以选择车道数量，点击车道可以设置车道类型</span>
                </div>
                <div style="padding: 10px 37px;">
                    <div id="phasePicDiv" style="width: 842px; padding: 0px; position: relative; border: 1px solid #ccc;">
                        <img id="phasePic" src="" />
                        <img class="realRoadMap" id="realRoadMap2" src="" width="100" />
                        <div id="phasePicClick"></div>
                        <div id="Nshade1"></div>
                        <div id="Sshade1"></div>
                        <div id="Eshade1"></div>
                        <div id="Wshade1"></div>
                        <img id="ENimg1" class="absolute1" />
                        <img id="ESimg1" class="absolute1" />
                        <img id="CSimg1" class="absolute1" />
                        <img id="WSimg1" class="absolute1" />
                        <img id="WNimg1" class="absolute1" />
                        <div style="width: 234px; height: 600px; border: 1px solid #ccc; position: absolute; right: 0px; top: 0px;">
                            <div class="picDivTitle">添加相位信息</div>
                            <div class="form clearfix">
                                <div id="">
                                    <div class="item100">
                                        <div>相位编号</div>
                                        <div>
                                            <input type="text" />
                                        </div>
                                    </div>

                                    <div class="item100">
                                         <div>相位名称</div>
                                        <div>
                                            <input type="text" />
                                        </div>
                                    </div>
                                    
                                    <div class="item100">
                                         <div>已选车道</div>
                                        <ul style="height:393px;border:1px solid #ccc;width:100%;">
                                            
                                        </ul>
                                    </div>
                                </div>
                                <div style="padding: 10px 37px;">
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="alertUserInfoFormBottom">
                    <button class="inputBtn" id="phaseInfoReload">刷新</button>
                    <button class="inputBtn btnSubmit" id="phaseInfoEdit">保存</button>
                </div>

            </div>
        </div>

        <asp:TextBox ID="txtLoad" runat="server" Style="display: none" value='<?xml version="1.0" encoding="utf-8" ?><document><RoadInfo desc="单个路口信息1"><AreaId desc="区域编号">1</AreaId><AreaName desc="区域名称">浦口区</AreaName><RoadId desc="路口编号">1</RoadId><RoadName desc="路口名称">文德路1</RoadName></RoadInfo><LampList><LampInfo><LampId desc="灯组编号">1</LampId><LampType desc="灯组类型">机动车灯组</LampType><LampDirection desc="灯组类型">东</LampDirection><LampName desc="灯组名称">机动车灯组1</LampName><LampRedId desc="红灯端子号">001</LampRedId><LampYellowId desc="黄灯端子号">002</LampYellowId><LampGreenId desc="绿灯端子号">003</LampGreenId></LampInfo><LampInfo><LampId desc="灯组编号">2</LampId><LampType desc="灯组类型">机动车灯组</LampType><LampDirection desc="灯组类型">南</LampDirection><LampName desc="灯组名称">机动车灯组2</LampName><LampRedId desc="红灯端子号">004</LampRedId><LampYellowId desc="黄灯端子号">005</LampYellowId><LampGreenId desc="绿灯端子号">006</LampGreenId></LampInfo><LampInfo><LampId desc="灯组编号">3</LampId><LampType desc="灯组类型">人行灯组</LampType><LampDirection desc="灯组类型">西</LampDirection><LampName desc="灯组名称">人行横道灯组</LampName><LampRedId desc="红灯端子号">007</LampRedId><LampYellowId desc="黄灯端子号">0</LampYellowId><LampGreenId desc="绿灯端子号">008</LampGreenId></LampInfo></LampList><LineList><LineInfo><LineId desc="车道真实编号">1</LineId><Dierection desc="灯组方向">N</Dierection><LineNum desc="该方向第几个车道1，2，3，4，5，6">1</LineNum><LineType desc="车道类型1-11">1</LineType></LineInfo></LineList></document>'></asp:TextBox>
        <asp:TextBox ID="txtSubmit" runat="server" Style="display: none" value=''></asp:TextBox>
    </form>
</body>
</html>
<script>
    var disableList = [];
    //灯区板模拟图坐标， point1 左上角 point2右上角 point3右下角 point4左下角
    var coordsLampPic = [
        { num: 1, point1: [0, 49], point2: [60, 49], point3: [60, 70], point4: [0, 70], color: "red", yes: false, hasUsed: false },
        { num: 2, point1: [0, 73], point2: [60, 73], point3: [60, 98], point4: [0, 98], color: "yellow", yes: false, hasUsed: false },
        { num: 3, point1: [0, 102], point2: [60, 102], point3: [60, 125], point4: [0, 125], color: "green", yes: false, hasUsed: false },
        { num: 4, point1: [0, 129], point2: [60, 129], point3: [60, 151], point4: [0, 151], color: "red", yes: false, hasUsed: false },
        { num: 5, point1: [0, 157], point2: [60, 157], point3: [60, 180], point4: [0, 180], color: "yellow", yes: false, hasUsed: false },
        { num: 6, point1: [0, 184], point2: [60, 184], point3: [60, 206], point4: [0, 206], color: "green", yes: false, hasUsed: false },
        { num: 7, point1: [0, 211], point2: [60, 211], point3: [60, 233], point4: [0, 233], color: "red", yes: false, hasUsed: false },
        { num: 8, point1: [0, 238], point2: [60, 238], point3: [60, 261], point4: [0, 261], color: "green", yes: false, hasUsed: false },

        { num: 9, point1: [61, 49], point2: [120, 49], point3: [120, 70], point4: [61, 70], color: "red", yes: false, hasUsed: false },
        { num: 10, point1: [61, 73], point2: [120, 73], point3: [120, 98], point4: [61, 98], color: "yellow", yes: false, hasUsed: false },
        { num: 11, point1: [61, 102], point2: [120, 102], point3: [120, 125], point4: [61, 125], color: "green", yes: false, hasUsed: false },
        { num: 12, point1: [61, 129], point2: [120, 129], point3: [120, 151], point4: [61, 151], color: "red", yes: false, hasUsed: false },
        { num: 13, point1: [61, 157], point2: [120, 157], point3: [120, 180], point4: [61, 180], color: "yellow", yes: false, hasUsed: false },
        { num: 14, point1: [61, 184], point2: [120, 184], point3: [120, 206], point4: [61, 206], color: "green", yes: false, hasUsed: false },
        { num: 15, point1: [61, 211], point2: [120, 211], point3: [120, 233], point4: [61, 233], color: "red", yes: false, hasUsed: false },
        { num: 16, point1: [61, 238], point2: [120, 238], point3: [120, 261], point4: [61, 261], color: "green", yes: false, hasUsed: false },

        { num: 17, point1: [121, 49], point2: [180, 49], point3: [180, 70], point4: [121, 70], color: "red", yes: false, hasUsed: false },
        { num: 18, point1: [121, 73], point2: [180, 73], point3: [180, 98], point4: [121, 98], color: "yellow", yes: false, hasUsed: false },
        { num: 19, point1: [121, 102], point2: [180, 102], point3: [180, 125], point4: [121, 125], color: "green", yes: false, hasUsed: false },
        { num: 20, point1: [121, 129], point2: [180, 129], point3: [180, 151], point4: [121, 151], color: "red", yes: false, hasUsed: false },
        { num: 21, point1: [121, 157], point2: [180, 157], point3: [180, 180], point4: [121, 180], color: "yellow", yes: false, hasUsed: false },
        { num: 22, point1: [121, 184], point2: [180, 184], point3: [180, 206], point4: [121, 206], color: "green", yes: false, hasUsed: false },
        { num: 23, point1: [121, 211], point2: [180, 211], point3: [180, 233], point4: [121, 233], color: "red", yes: false, hasUsed: false },
        { num: 24, point1: [121, 238], point2: [180, 238], point3: [180, 261], point4: [121, 261], color: "green", yes: false, hasUsed: false },

        { num: 25, point1: [181, 49], point2: [240, 49], point3: [240, 70], point4: [181, 70], color: "red", yes: false, hasUsed: false },
        { num: 26, point1: [181, 73], point2: [240, 73], point3: [240, 98], point4: [181, 98], color: "yellow", yes: false, hasUsed: false },
        { num: 27, point1: [181, 102], point2: [240, 102], point3: [240, 125], point4: [181, 125], color: "green", yes: false, hasUsed: false },
        { num: 28, point1: [181, 129], point2: [240, 129], point3: [240, 151], point4: [181, 151], color: "red", yes: false, hasUsed: false },
        { num: 29, point1: [181, 157], point2: [240, 157], point3: [240, 180], point4: [181, 180], color: "yellow", yes: false, hasUsed: false },
        { num: 30, point1: [181, 184], point2: [240, 184], point3: [240, 206], point4: [181, 206], color: "green", yes: false, hasUsed: false },
        { num: 31, point1: [181, 211], point2: [240, 211], point3: [240, 233], point4: [181, 233], color: "red", yes: false, hasUsed: false },
        { num: 32, point1: [181, 238], point2: [240, 238], point3: [240, 261], point4: [181, 261], color: "green", yes: false, hasUsed: false },

        { num: 33, point1: [241, 49], point2: [300, 49], point3: [300, 70], point4: [241, 70], color: "red", yes: false, hasUsed: false },
        { num: 34, point1: [241, 73], point2: [300, 73], point3: [300, 98], point4: [241, 98], color: "yellow", yes: false, hasUsed: false },
        { num: 35, point1: [241, 102], point2: [300, 102], point3: [300, 125], point4: [241, 125], color: "green", yes: false, hasUsed: false },
        { num: 36, point1: [241, 129], point2: [300, 129], point3: [300, 151], point4: [241, 151], color: "red", yes: false, hasUsed: false },
        { num: 37, point1: [241, 157], point2: [300, 157], point3: [300, 180], point4: [241, 180], color: "yellow", yes: false, hasUsed: false },
        { num: 38, point1: [241, 184], point2: [300, 184], point3: [300, 206], point4: [241, 206], color: "green", yes: false, hasUsed: false },
        { num: 39, point1: [241, 211], point2: [300, 211], point3: [300, 233], point4: [241, 233], color: "red", yes: false, hasUsed: false },
        { num: 40, point1: [241, 238], point2: [300, 238], point3: [300, 261], point4: [241, 261], color: "green", yes: false, hasUsed: false },

        { num: 41, point1: [301, 49], point2: [360, 49], point3: [360, 70], point4: [301, 70], color: "red", yes: false, hasUsed: false },
        { num: 42, point1: [301, 73], point2: [360, 73], point3: [360, 98], point4: [301, 98], color: "yellow", yes: false, hasUsed: false },
        { num: 43, point1: [301, 102], point2: [360, 102], point3: [360, 125], point4: [301, 125], color: "green", yes: false, hasUsed: false },
        { num: 44, point1: [301, 129], point2: [360, 129], point3: [360, 151], point4: [301, 151], color: "red", yes: false, hasUsed: false },
        { num: 45, point1: [301, 157], point2: [360, 157], point3: [360, 180], point4: [301, 180], color: "yellow", yes: false, hasUsed: false },
        { num: 46, point1: [301, 184], point2: [360, 184], point3: [360, 206], point4: [301, 206], color: "green", yes: false, hasUsed: false },
        { num: 47, point1: [301, 211], point2: [360, 211], point3: [360, 233], point4: [301, 233], color: "red", yes: false, hasUsed: false },
        { num: 48, point1: [301, 238], point2: [360, 238], point3: [360, 261], point4: [301, 261], color: "green", yes: false, hasUsed: false },

        { num: 49, point1: [361, 49], point2: [420, 49], point3: [420, 70], point4: [361, 70], color: "red", yes: false, hasUsed: false },
        { num: 50, point1: [361, 73], point2: [420, 73], point3: [420, 98], point4: [361, 98], color: "yellow", yes: false, hasUsed: false },
        { num: 51, point1: [361, 102], point2: [420, 102], point3: [420, 125], point4: [361, 125], color: "green", yes: false, hasUsed: false },
        { num: 52, point1: [361, 129], point2: [420, 129], point3: [420, 151], point4: [361, 151], color: "red", yes: false, hasUsed: false },
        { num: 53, point1: [361, 157], point2: [420, 157], point3: [420, 180], point4: [361, 180], color: "yellow", yes: false, hasUsed: false },
        { num: 54, point1: [361, 184], point2: [420, 184], point3: [420, 206], point4: [361, 206], color: "green", yes: false, hasUsed: false },
        { num: 55, point1: [361, 211], point2: [420, 211], point3: [420, 233], point4: [361, 233], color: "red", yes: false, hasUsed: false },
        { num: 56, point1: [361, 238], point2: [420, 238], point3: [420, 261], point4: [361, 261], color: "green", yes: false, hasUsed: false },

        { num: 57, point1: [421, 49], point2: [480, 49], point3: [480, 70], point4: [421, 70], color: "red", yes: false, hasUsed: false },
        { num: 58, point1: [421, 73], point2: [480, 73], point3: [480, 98], point4: [421, 98], color: "yellow", yes: false, hasUsed: false },
        { num: 59, point1: [421, 102], point2: [480, 102], point3: [480, 125], point4: [421, 125], color: "green", yes: false, hasUsed: false },
        { num: 60, point1: [421, 129], point2: [480, 129], point3: [480, 151], point4: [421, 151], color: "red", yes: false, hasUsed: false },
        { num: 61, point1: [421, 157], point2: [480, 157], point3: [480, 180], point4: [421, 180], color: "yellow", yes: false, hasUsed: false },
        { num: 62, point1: [421, 184], point2: [480, 184], point3: [480, 206], point4: [421, 206], color: "green", yes: false, hasUsed: false },
        { num: 63, point1: [421, 211], point2: [480, 211], point3: [480, 233], point4: [421, 233], color: "red", yes: false, hasUsed: false },
        { num: 64, point1: [421, 238], point2: [480, 238], point3: [480, 261], point4: [421, 261], color: "green", yes: false, hasUsed: false },

        { num: 65, point1: [481, 49], point2: [540, 49], point3: [540, 70], point4: [481, 70], color: "red", yes: false, hasUsed: false },
        { num: 66, point1: [481, 73], point2: [540, 73], point3: [540, 98], point4: [481, 98], color: "yellow", yes: false, hasUsed: false },
        { num: 67, point1: [481, 102], point2: [540, 102], point3: [540, 125], point4: [481, 125], color: "green", yes: false, hasUsed: false },
        { num: 68, point1: [481, 129], point2: [540, 129], point3: [540, 151], point4: [481, 151], color: "red", yes: false, hasUsed: false },
        { num: 69, point1: [481, 157], point2: [540, 157], point3: [540, 180], point4: [481, 180], color: "yellow", yes: false, hasUsed: false },
        { num: 70, point1: [481, 184], point2: [540, 184], point3: [540, 206], point4: [481, 206], color: "green", yes: false, hasUsed: false },
        { num: 71, point1: [481, 211], point2: [540, 211], point3: [540, 233], point4: [481, 233], color: "red", yes: false, hasUsed: false },
        { num: 72, point1: [481, 238], point2: [540, 238], point3: [540, 261], point4: [481, 261], color: "green", yes: false, hasUsed: false },

        { num: 73, point1: [541, 49], point2: [600, 49], point3: [600, 70], point4: [541, 70], color: "red", yes: false, hasUsed: false },
        { num: 74, point1: [541, 73], point2: [600, 73], point3: [600, 98], point4: [541, 98], color: "yellow", yes: false, hasUsed: false },
        { num: 75, point1: [541, 102], point2: [600, 102], point3: [600, 125], point4: [541, 125], color: "green", yes: false, hasUsed: false },
        { num: 76, point1: [541, 129], point2: [600, 129], point3: [600, 151], point4: [541, 151], color: "red", yes: false, hasUsed: false },
        { num: 77, point1: [541, 157], point2: [600, 157], point3: [600, 180], point4: [541, 180], color: "yellow", yes: false, hasUsed: false },
        { num: 78, point1: [541, 184], point2: [600, 184], point3: [600, 206], point4: [541, 206], color: "green", yes: false, hasUsed: false },
        { num: 79, point1: [541, 211], point2: [600, 211], point3: [600, 233], point4: [541, 233], color: "red", yes: false, hasUsed: false },
        { num: 80, point1: [541, 238], point2: [600, 238], point3: [600, 261], point4: [541, 261], color: "green", yes: false, hasUsed: false },

        { num: 81, point1: [601, 49], point2: [660, 49], point3: [660, 70], point4: [601, 70], color: "red", yes: false, hasUsed: false },
        { num: 82, point1: [601, 73], point2: [660, 73], point3: [660, 98], point4: [601, 98], color: "yellow", yes: false, hasUsed: false },
        { num: 83, point1: [601, 102], point2: [660, 102], point3: [660, 125], point4: [601, 125], color: "green", yes: false, hasUsed: false },
        { num: 84, point1: [601, 129], point2: [660, 129], point3: [660, 151], point4: [601, 151], color: "red", yes: false, hasUsed: false },
        { num: 85, point1: [601, 157], point2: [660, 157], point3: [660, 180], point4: [601, 180], color: "yellow", yes: false, hasUsed: false },
        { num: 86, point1: [601, 184], point2: [660, 184], point3: [660, 206], point4: [601, 206], color: "green", yes: false, hasUsed: false },
        { num: 87, point1: [601, 211], point2: [660, 211], point3: [660, 233], point4: [601, 233], color: "red", yes: false, hasUsed: false },
        { num: 88, point1: [601, 238], point2: [660, 238], point3: [660, 261], point4: [601, 261], color: "green", yes: false, hasUsed: false },

        { num: 89, point1: [661, 49], point2: [720, 49], point3: [720, 70], point4: [661, 70], color: "red", yes: false, hasUsed: false },
        { num: 90, point1: [661, 73], point2: [720, 73], point3: [720, 98], point4: [661, 98], color: "yellow", yes: false, hasUsed: false },
        { num: 91, point1: [661, 102], point2: [720, 102], point3: [720, 125], point4: [661, 125], color: "green", yes: false, hasUsed: false },
        { num: 92, point1: [661, 129], point2: [720, 129], point3: [720, 151], point4: [661, 151], color: "red", yes: false, hasUsed: false },
        { num: 93, point1: [661, 157], point2: [720, 157], point3: [720, 180], point4: [661, 180], color: "yellow", yes: false, hasUsed: false },
        { num: 94, point1: [661, 184], point2: [720, 184], point3: [720, 206], point4: [661, 206], color: "green", yes: false, hasUsed: false },
        { num: 95, point1: [661, 211], point2: [720, 211], point3: [720, 233], point4: [661, 233], color: "red", yes: false, hasUsed: false },
        { num: 96, point1: [661, 238], point2: [720, 238], point3: [720, 261], point4: [661, 261], color: "green", yes: false, hasUsed: false },

        { num: 97, point1: [721, 49], point2: [780, 49], point3: [780, 70], point4: [721, 70], color: "red", yes: false, hasUsed: false },
        { num: 98, point1: [721, 73], point2: [780, 73], point3: [780, 98], point4: [721, 98], color: "yellow", yes: false, hasUsed: false },
        { num: 99, point1: [721, 102], point2: [780, 102], point3: [780, 125], point4: [721, 125], color: "green", yes: false, hasUsed: false },
        { num: 100, point1: [721, 129], point2: [780, 129], point3: [780, 151], point4: [721, 151], color: "red", yes: false, hasUsed: false },
        { num: 101, point1: [721, 157], point2: [780, 157], point3: [780, 180], point4: [721, 180], color: "yellow", yes: false, hasUsed: false },
        { num: 102, point1: [721, 184], point2: [780, 184], point3: [780, 206], point4: [721, 206], color: "green", yes: false, hasUsed: false },
        { num: 103, point1: [721, 211], point2: [780, 211], point3: [780, 233], point4: [721, 233], color: "red", yes: false, hasUsed: false },
        { num: 104, point1: [721, 238], point2: [780, 238], point3: [780, 261], point4: [721, 261], color: "green", yes: false, hasUsed: false },

        { num: 105, point1: [781, 49], point2: [840, 49], point3: [840, 70], point4: [781, 70], color: "red", yes: false, hasUsed: false },
        { num: 106, point1: [781, 73], point2: [840, 73], point3: [840, 98], point4: [781, 98], color: "yellow", yes: false, hasUsed: false },
        { num: 107, point1: [781, 102], point2: [840, 102], point3: [840, 125], point4: [781, 125], color: "green", yes: false, hasUsed: false },
        { num: 108, point1: [781, 129], point2: [840, 129], point3: [840, 151], point4: [781, 151], color: "red", yes: false, hasUsed: false },
        { num: 109, point1: [781, 157], point2: [840, 157], point3: [840, 180], point4: [781, 180], color: "yellow", yes: false, hasUsed: false },
        { num: 110, point1: [781, 184], point2: [840, 184], point3: [840, 206], point4: [781, 206], color: "green", yes: false, hasUsed: false },
        { num: 111, point1: [781, 211], point2: [840, 211], point3: [840, 233], point4: [781, 233], color: "red", yes: false, hasUsed: false },
        { num: 112, point1: [781, 238], point2: [840, 238], point3: [840, 261], point4: [781, 261], color: "green", yes: false, hasUsed: false },

    ];
    var renxingList = [7, 8, 15, 16, 23, 24, 31, 32, 39, 40, 47, 48, 55, 56, 63, 64, 71, 72, 79, 80, 87, 88, 95, 96, 103, 104, 111, 112];
    var jidognList = [1, 2, 3, 4, 5, 6, 9, 10, 11, 12, 13, 14, 17, 18, 19, 20, 21, 22, 25, 26, 27, 28, 29, 30, 33, 34, 35, 36, 37, 38, 41, 42, 43, 44, 45, 46, 49, 50, 51, 52, 53, 54, 57, 58, 59, 60, 61, 62, 65, 66, 67, 68, 69, 70, 73, 74, 75, 76, 77, 78, 81, 82, 83, 84, 85, 86, 89, 90, 91, 92, 93, 94, 97, 98, 99, 100, 101, 102, 105, 106, 107, 108, 109, 110];
    //direction 车道方向，num 改方向上的车道编号，point1 代表车道线和停靠线顶角坐标，point2是车道线上另一个坐标， point3是point1的对角，point4是point2的对角
    var coords = [
        { direction: "N", num: 1, point3: [201, 72], point2: [228, 72], point1: [228, 142], point4: [201, 142] },
        { direction: "N", num: 2, point3: [231, 72], point2: [258, 72], point1: [258, 142], point4: [231, 142] },
        { direction: "N", num: 3, point3: [262, 72], point2: [288, 72], point1: [288, 142], point4: [262, 142] },
        { direction: "N", num: 4, point3: [291, 72], point2: [318, 72], point1: [318, 142], point4: [291, 142] },
        { direction: "N", num: 5, point3: [317, 72], point2: [348, 72], point1: [348, 142], point4: [317, 142] },
        { direction: "N", num: 6, point3: [351, 72], point2: [378, 72], point1: [378, 142], point4: [351, 142] },
        { direction: "N", num: 7, point3: [201, 152], point2: [399, 152], point1: [399, 176], point4: [201, 176] },

        { direction: "S", num: 1, point1: [372, 459], point2: [372, 528], point3: [399, 528], point4: [399, 459] },
        { direction: "S", num: 2, point1: [343, 459], point2: [343, 528], point3: [369, 528], point4: [369, 459] },
        { direction: "S", num: 3, point1: [312, 459], point2: [312, 528], point3: [339, 528], point4: [339, 459] },
        { direction: "S", num: 4, point1: [283, 459], point2: [283, 528], point3: [309, 528], point4: [309, 459] },
        { direction: "S", num: 5, point1: [253, 459], point2: [253, 528], point3: [279, 528], point4: [279, 459] },
        { direction: "S", num: 6, point1: [223, 459], point2: [223, 528], point3: [249, 528], point4: [255, 459] },
        { direction: "S", num: 7, point1: [201, 423], point2: [201, 449], point3: [399, 449], point4: [255, 423] },

        { direction: "E", num: 1, point1: [459, 228], point2: [528, 228], point3: [528, 201], point4: [459, 201] },
        { direction: "E", num: 2, point1: [459, 258], point2: [528, 258], point3: [528, 231], point4: [459, 231] },
        { direction: "E", num: 3, point1: [459, 288], point2: [528, 288], point3: [528, 262], point4: [459, 262] },
        { direction: "E", num: 4, point1: [459, 318], point2: [528, 318], point3: [528, 291], point4: [459, 291] },
        { direction: "E", num: 5, point1: [459, 348], point2: [528, 348], point3: [528, 322], point4: [459, 322] },
        { direction: "E", num: 6, point1: [459, 378], point2: [528, 378], point3: [528, 352], point4: [462, 352] },
        { direction: "E", num: 7, point1: [423, 399], point2: [449, 399], point3: [449, 201], point4: [423, 201] },

        { direction: "W", num: 1, point1: [142, 373], point2: [72, 373], point3: [72, 400], point4: [142, 400] },
        { direction: "W", num: 2, point1: [142, 343], point2: [72, 343], point3: [72, 370], point4: [142, 370] },
        { direction: "W", num: 3, point1: [142, 313], point2: [72, 313], point3: [72, 339], point4: [142, 339] },
        { direction: "W", num: 4, point1: [142, 282], point2: [72, 282], point3: [72, 310], point4: [142, 310] },
        { direction: "W", num: 5, point1: [142, 253], point2: [72, 253], point3: [72, 279], point4: [142, 279] },
        { direction: "W", num: 6, point1: [142, 222], point2: [72, 222], point3: [72, 249], point4: [142, 249] },
        { direction: "W", num: 7, point1: [176, 201], point2: [150, 231], point3: [150, 400], point4: [176, 400] },

    ];
    var coordsFive = [
        { direction: "EN", num: 1, point1: [354, 93], point2: [394, 42], point3: [371, 28], point4: [336, 78] },
        { direction: "EN", num: 2, point1: [377, 110], point2: [418, 58], point3: [395, 44], point4: [359, 98] },
        { direction: "EN", num: 3, point1: [402, 128], point2: [439, 77], point3: [421, 62], point4: [384, 114] },
        { direction: "EN", num: 4, point1: [426, 146], point2: [466, 94], point3: [443, 80], point4: [408, 132] },
        { direction: "EN", num: 5, point1: [449, 164], point2: [491, 112], point3: [469, 98], point4: [431, 150] },
        { direction: "EN", num: 6, point1: [473, 182], point2: [513, 217], point3: [493, 117], point4: [454, 167] },
        { direction: "EN", num: 7, point1: [325, 91], point2: [312, 111], point3: [468, 226], point4: [481, 204] },

        { direction: "ES", num: 1, point1: [506, 280], point2: [570, 300], point3: [580, 280], point4: [514, 260] },
        { direction: "ES", num: 2, point1: [497, 309], point2: [562, 332], point3: [562, 306], point4: [505, 281] },
        { direction: "ES", num: 3, point1: [488, 337], point2: [554, 359], point3: [560, 334], point4: [498, 314] },
        { direction: "ES", num: 4, point1: [478, 366], point2: [544, 387], point3: [551, 361], point4: [487, 341] },
        { direction: "ES", num: 5, point1: [470, 393], point2: [533, 415], point3: [540, 391], point4: [479, 371] },
        { direction: "ES", num: 6, point1: [459, 423], point2: [562, 443], point3: [534, 420], point4: [470, 399] },
        { direction: "ES", num: 7, point1: [501, 257], point2: [474, 249], point3: [418, 428], point4: [442, 435] },

        { direction: "CS", num: 1, point1: [373, 487], point2: [373, 552], point3: [398, 552], point4: [398, 487] },
        { direction: "CS", num: 2, point1: [343, 486], point2: [343, 552], point3: [370, 552], point4: [370, 487] },
        { direction: "CS", num: 3, point1: [313, 487], point2: [313, 552], point3: [340, 552], point4: [340, 487] },
        { direction: "CS", num: 4, point1: [284, 487], point2: [284, 552], point3: [310, 552], point4: [310, 487] },
        { direction: "CS", num: 5, point1: [254, 487], point2: [254, 552], point3: [280, 552], point4: [280, 487] },
        { direction: "CS", num: 6, point1: [223, 487], point2: [223, 552], point3: [250, 552], point4: [250, 487] },
        { direction: "CS", num: 7, point1: [398, 473], point2: [396, 446], point3: [205, 449], point4: [205, 473] },

        { direction: "WS", num: 1, point1: [139, 418], point2: [78, 441], point3: [87, 463], point4: [148, 442] },
        { direction: "WS", num: 2, point1: [130, 389], point2: [69, 413], point3: [77, 435], point4: [138, 406] },
        { direction: "WS", num: 3, point1: [121, 361], point2: [60, 384], point3: [67, 405], point4: [130, 385] },
        { direction: "WS", num: 4, point1: [111, 333], point2: [52, 353], point3: [60, 375], point4: [118, 358] },
        { direction: "WS", num: 5, point1: [102, 305], point2: [39, 326], point3: [48, 349], point4: [108, 329] },
        { direction: "WS", num: 6, point1: [93, 277], point2: [29, 296], point3: [40, 322], point4: [101, 300] },
        { direction: "WS", num: 7, point1: [158, 437], point2: [183, 431], point3: [124, 249], point4: [100, 256] },

        { direction: "WN", num: 1, point1: [129, 180], point2: [89, 127], point3: [71, 141], point4: [109, 194] },
        { direction: "WN", num: 2, point1: [153, 162], point2: [115, 111], point3: [94, 125], point4: [133, 179] },
        { direction: "WN", num: 3, point1: [178, 144], point2: [139, 94], point3: [117, 107], point4: [157, 159] },
        { direction: "WN", num: 4, point1: [201, 125], point2: [164, 75], point3: [143, 89], point4: [181, 141] },
        { direction: "WN", num: 5, point1: [225, 109], point2: [186, 58], point3: [168, 73], point4: [205, 123] },
        { direction: "WN", num: 6, point1: [250, 92], point2: [228, 106], point3: [191, 56], point4: [210, 39] },
        { direction: "WN", num: 7, point1: [119, 205], point2: [134, 224], point3: [287, 115], point4: [273, 92] },
    ];
    var RenXingcoords = [
        { direction: "N", num: 71, point1: [202, 152], point2: [202, 197], point3: [222, 197], point4: [222, 152], hasUsed: false },
        { direction: "N", num: 72, point1: [222, 152], point2: [222, 197], point3: [242, 197], point4: [242, 152], hasUsed: false },
        { direction: "N", num: 73, point1: [242, 152], point2: [242, 197], point3: [262, 197], point4: [262, 152], hasUsed: false },
        { direction: "N", num: 74, point1: [262, 152], point2: [262, 197], point3: [282, 197], point4: [282, 152], hasUsed: false },
        { direction: "N", num: 75, point1: [282, 152], point2: [282, 197], point3: [302, 197], point4: [302, 152], hasUsed: false },

        { direction: "E", num: 71, point1: [403, 201], point2: [403, 221], point3: [448, 221], point4: [448, 201], hasUsed: false },
        { direction: "E", num: 72, point1: [403, 221], point2: [403, 241], point3: [448, 241], point4: [448, 221], hasUsed: false },
        { direction: "E", num: 73, point1: [403, 241], point2: [403, 261], point3: [448, 261], point4: [448, 241], hasUsed: false },
        { direction: "E", num: 74, point1: [403, 261], point2: [403, 281], point3: [448, 281], point4: [448, 261], hasUsed: false },
        { direction: "E", num: 75, point1: [403, 281], point2: [403, 301], point3: [448, 301], point4: [448, 281], hasUsed: false },

        { direction: "S", num: 71, point1: [379, 403], point2: [399, 403], point3: [399, 443], point4: [379, 443], hasUsed: false },
        { direction: "S", num: 72, point1: [359, 403], point2: [379, 403], point3: [379, 483], point4: [359, 483], hasUsed: false },
        { direction: "S", num: 73, point1: [339, 403], point2: [359, 403], point3: [359, 523], point4: [339, 523], hasUsed: false },
        { direction: "S", num: 74, point1: [319, 403], point2: [339, 403], point3: [339, 563], point4: [319, 563], hasUsed: false },
        { direction: "S", num: 75, point1: [299, 403], point2: [319, 403], point3: [319, 603], point4: [299, 603], hasUsed: false },

        { direction: "W", num: 71, point1: [150, 379], point2: [150, 399], point3: [195, 399], point4: [195, 379], hasUsed: false },
        { direction: "W", num: 72, point1: [150, 359], point2: [150, 379], point3: [195, 379], point4: [195, 359], hasUsed: false },
        { direction: "W", num: 73, point1: [150, 339], point2: [150, 359], point3: [195, 359], point4: [195, 339], hasUsed: false },
        { direction: "W", num: 74, point1: [150, 319], point2: [150, 339], point3: [195, 339], point4: [195, 319], hasUsed: false },
        { direction: "W", num: 75, point1: [150, 299], point2: [150, 319], point3: [195, 319], point4: [195, 299], hasUsed: false },

    ];
    var FiveRenXingcoords = [
        { direction: "EN", num: 71, point1: [324, 93], point2: [300, 118], point3: [316, 135], point4: [342, 104], hasUsed: false },
        { direction: "EN", num: 72, point1: [319, 133], point2: [344, 104], point3: [335, 146], point4: [360, 115], hasUsed: false },
        { direction: "EN", num: 73, point1: [359, 114], point2: [333, 143], point3: [349, 158], point4: [373, 127], hasUsed: false },
        { direction: "EN", num: 74, point1: [375, 126], point2: [348, 159], point3: [366, 169], point4: [391, 136], hasUsed: false },
        { direction: "EN", num: 75, point1: [390, 136], point2: [365, 168], point3: [384, 181], point4: [408, 150], hasUsed: false },

        { direction: "ES", num: 71, point1: [504, 255], point2: [464, 241], point3: [456, 260], point4: [496, 274], hasUsed: false },
        { direction: "ES", num: 72, point1: [496, 274], point2: [456, 258], point3: [448, 275], point4: [489, 294], hasUsed: false },
        { direction: "ES", num: 73, point1: [489, 294], point2: [451, 277], point3: [444, 295], point4: [483, 310], hasUsed: false },
        { direction: "ES", num: 74, point1: [483, 310], point2: [444, 295], point3: [435, 313], point4: [479, 328], hasUsed: false },
        { direction: "ES", num: 75, point1: [479, 328], point2: [439, 315], point3: [432, 333], point4: [474, 350], hasUsed: false },

        { direction: "CS", num: 71, point1: [398, 475], point2: [398, 430], point3: [378, 430], point4: [378, 475], hasUsed: false },
        { direction: "CS", num: 72, point1: [378, 475], point2: [378, 430], point3: [358, 430], point4: [358, 475], hasUsed: false },
        { direction: "CS", num: 73, point1: [358, 475], point2: [358, 430], point3: [338, 430], point4: [338, 475], hasUsed: false },
        { direction: "CS", num: 74, point1: [338, 475], point2: [338, 430], point3: [318, 430], point4: [318, 475], hasUsed: false },
        { direction: "CS", num: 75, point1: [318, 475], point2: [318, 430], point3: [298, 430], point4: [298, 475], hasUsed: false },

        { direction: "WS", num: 71, point1: [163, 439], point2: [201, 427], point3: [196, 410], point4: [157, 422], hasUsed: false },
        { direction: "WS", num: 72, point1: [157, 422], point2: [197, 407], point3: [191, 387], point4: [150, 400], hasUsed: false },
        { direction: "WS", num: 73, point1: [150, 400], point2: [189, 387], point3: [183, 369], point4: [144, 382], hasUsed: false },
        { direction: "WS", num: 74, point1: [144, 382], point2: [186, 368], point3: [176, 349], point4: [139, 363], hasUsed: false },
        { direction: "WS", num: 75, point1: [139, 363], point2: [176, 349], point3: [169, 333], point4: [129, 345], hasUsed: false },

        { direction: "WN", num: 71, point1: [119, 207], point2: [140, 238], point3: [162, 230], point4: [136, 196], hasUsed: false },
        { direction: "WN", num: 72, point1: [136, 196], point2: [161, 230], point3: [176, 218], point4: [151, 185], hasUsed: false },
        { direction: "WN", num: 73, point1: [151, 185], point2: [177, 218], point3: [193, 208], point4: [166, 173], hasUsed: false },
        { direction: "WN", num: 74, point1: [166, 173], point2: [192, 206], point3: [205, 193], point4: [182, 162], hasUsed: false },
        { direction: "WN", num: 75, point1: [182, 162], point2: [207, 196], point3: [222, 183], point4: [198, 151], hasUsed: false },

    ];
    var alertForm = null;
    var layer1 = null;
    var layer2 = null;
    function LampPic(num, id, src) {
        if (num == 0) {
            return false;
        }
        var x = coordsLampPic[num - 1].point1[0] + 6 + "px";
        var y = coordsLampPic[num - 1].point1[1] + 1 + "px";
        var color = coordsLampPic[num - 1].color;
        var obj1 = coordsLampPic[num - 1];
        if (src) {
            var obj = $('<img id="' + id + '_' + num + '" class="absolute" src="' + src + '" />').css({ "left": x, "top": y });
        }
        else {
            var obj = $('<img id="' + id + '_' + num + '" class="absolute" src="img/lampPic/' + color + '.png" />').css({ "left": x, "top": y });
        }
        $("#" + id).append(obj);

    }
    function hasUsedDraw() {
        for (var i in coordsLampPic) {
            if (coordsLampPic[i].hasUsed) {
                var x = coordsLampPic[i].point1[0] + 6 + "px";
                var y = coordsLampPic[i].point1[1] + 1 + "px";
                var color = coordsLampPic[i].color;
                var obj1 = coordsLampPic[i];
                var obj = $('<img id="lampBg2_' + coordsLampPic[i].num + '" class="absolute" src= "img/lampPic/hui.png" />').css({ "left": x, "top": y });
                $("#lampBg2").append(obj);
            }
        }
    }
    function GetPostion(e) {
        var Point = {};
        Point.x = getX(e);
        Point.y = getY(e);
        return Point;

    }
    function getX(e) {
        e = e || window.event;
        return e.pageX || e.clientX + document.body.scroolLeft;
    }
    function getY(e) {
        e = e || window.event;
        return e.pageY || e.clientY + document.boyd.scrollTop;
    }
    //计算面积相关函数
    function s(a, b, c) {
        var p = (a + b + c) / 2;
        return Math.sqrt(p * (p - a) * (p - b) * (p - c));
    }
    function getA(x, y) {
        var xx = Math.abs(x[0] - y[0]);
        var yy = Math.abs(x[1] - y[1]);
        alert
        return Math.sqrt(xx * xx + yy * yy);
    }
    function area(point1, point2, point) {
        var a = getA(point1, point2);
        var b = getA(point1, point);
        var c = getA(point2, point);
        return s(a, b, c);
    }
    function getB(coords, point) {
        var area1 = area(coords.point1, coords.point2, point);
        var area2 = area(coords.point2, coords.point3, point);
        var area3 = area(coords.point3, coords.point4, point);
        var area4 = area(coords.point4, coords.point1, point);
        var area1234 = area1 + area2 + area3 + area4;
        var area5 = area(coords.point1, coords.point3, coords.point4) + area(coords.point1, coords.point2, coords.point3);
        if (area1234 <= area5 + 1) {
            return true;
        }
    }
    function clearCoordsLampPic() {
        for (var i in coordsLampPic) {
            $("#lampBg2_" + coordsLampPic[i].num).remove();
        }
    }
    function hasUsedTrue(list) {
        for (var i = 0; i < list.length; i++) {
            coordsLampPic[list[i] - 1].hasUsed = true;
        }
    }
    function hasUsedTrue1(list) {
        for (var i = 0; i < list.length; i++) {
            if ($("#lampBg2_" + list[i]).length > 0) {
                $("#lampBg2_" + list[i]).remove();
            }
            if (coordsLampPic[list[i] - 1]) {
                coordsLampPic[list[i] - 1].hasUsed = false;
                LampPic(list[i], "lampBg2");
            }
        }

    }
    function hasUsedFalse(list) {
        for (var i = 0; i < list.length; i++) {
            if ($("#lampBg2_" + list[i]).length > 0) {
                $("#lampBg2_" + list[i]).remove();
            }
            if (coordsLampPic[list[i] - 1]) {
                coordsLampPic[list[i] - 1].hasUsed = false;
            }

        }
    }
    function enableLamp(list) {
        for (var i in coordsLampPic) {
            for (var j = 0; j < list.length; j++) {
                if (coordsLampPic[i].num == list[j]) {
                    coordsLampPic[i].hasUsed = false;
                }
            }
        }
    }
    function alertZJDZ() {
        var width = (($(window).width() - 916) / 2) - ($(parent.window).width() - $(parent.$(".right")).width()) / 2;
        layer2 = layer.open({
            id: "layer2",
            title: "增加灯组",
            type: 1,
            move: false,
            offset: ["40px", width],
            area: '916px',
            content: $("#addLampForm"),
            end: function () {
                parent.$(".shade1").hide();
            }
        });
        parent.$(".shade1").show();
    }
    function alertZJXW() {
        var width = (($(window).width() - 916) / 2) - ($(parent.window).width() - $(parent.$(".right")).width()) / 2;
        layer2 = layer.open({
            id: "layer2",
            title: "增加相位",
            type: 1,
            move: false,
            offset: ["0px", width],
            area: '916px',
            content: $("#addPhaseForm"),
            end: function () {
                parent.$(".shade1").hide();
            }
        });
        parent.$(".shade1").show();
    }
    function alertCDBD() {
        var width = 303 + (($(window).width() - 270) / 2) - ($(parent.window).width() - $(parent.$(".right")).width()) / 2;
        $("#btnDelete").hide();
        layer2 = layer.open({
            id: "layer2",
            title: "修改车道类型",
            type: 1,
            move: false,
            offset: ["40px", width],
            area: '290px',
            content: $("#addRoadForm"),
            end: function () {
                parent.$(".shade1").hide();
            }
        });
        parent.$(".shade1").show();
    }
    function layer2Position() {
        var point = {};
        point.x = parseInt($("#layer2").parent().css("left"));
        point.y = parseInt($("#layer2").parent().css("top"));
        return point;
    }
    function layer1Position() {
        var point = {};
        point.x = parseInt($("#layer1").parent().css("left"));
        point.y = parseInt($("#layer1").parent().css("top"));

        //point.x = $(layer2).css("left");
        return point;
    }
    function UpdateHasUsed() {
        for (var i in LampInfo) {
            var LampRedId = parseInt(LampInfo[i].LampRedId);
            var LampYellowId = parseInt(LampInfo[i].LampYellowId);
            var LampGreenId = parseInt(LampInfo[i].LampGreenId);
            for (var j = 0; j < coordsLampPic.length; j++) {
                if (coordsLampPic[j].num == LampRedId || coordsLampPic[j].num == LampYellowId || coordsLampPic[j].num == LampGreenId) {
                    coordsLampPic[j].hasUsed = true;
                }
            }

        }
    }
    function HasUsedToPic() {
        UpdateHasUsed();
        for (var i in coordsLampPic) {
            if (coordsLampPic[i].hasUsed) {
                var id = coordsLampPic[i].num;
                if ($("#lampBg2_" + id).length > 0) {
                    return false;
                }
                else {
                    LampPic(id, "lampBg2", "img/lampPic/hui.png");
                }
            }
        }
    }
    function lampBgInit() {
        for (var i in LampInfo) {
            var LampRedId = parseInt(LampInfo[i].LampRedId);
            var LampYellowId = parseInt(LampInfo[i].LampYellowId);
            var LampGreenId = parseInt(LampInfo[i].LampGreenId);
            LampPic(LampRedId, "lampBg"); LampPic(LampYellowId, "lampBg"); LampPic(LampGreenId, "lampBg");
        }
    }
    function renxignFuncClick(Point) {
        for (var j in RenXingcoords) {
            if (Point.x > RenXingcoords[j].point1[0] && Point.x < RenXingcoords[j].point3[0] && Point.y > RenXingcoords[j].point1[1] && Point.y < RenXingcoords[j].point3[1]) {
                if (RenXingcoords[j].hasUsed == false) {
                    return null;
                }
                else {
                    alertCDBD();
                    $("#btnDelete").show();
                    return RenXingcoords[j];
                }

            }
        }
        return null;

    }
    function renxingFuncClick5(Point) {
        for (var i in FiveRenXingcoords) {
            if (getB(FiveRenXingcoords[i], Point)) {
                if (FiveRenXingcoords[i].hasUsed == false) {
                    return null;
                } else {
                    alertCDBD();
                    $("#btnDelete").show();
                    return FiveRenXingcoords[i];
                }
            }
        }
    }
    function renxingFuncHasUsedFalse(direction, num, arrObj) {
        if (renxingFuncHasUsedFalse.arguments.length == 3) {
            for (var i = 0; i < arrObj.length; i++) {
                if (arrObj[i].direction == direction && (arrObj[i].num == num)) {
                    arrObj[i].hasUsed = false;
                }
            }
        }
        else {
            for (var i = 0; i < RenXingcoords.length; i++) {
                if (RenXingcoords[i].direction == direction && (RenXingcoords[i].num == num)) {
                    RenXingcoords[i].hasUsed = false;
                }
            }
        }

    }
    function renxingFuncHasUsed(direction, num, arrObj) {
        if (renxingFuncHasUsed.arguments.length == 3) {
            for (var i = 0; i < arrObj.length; i++) {
                if (arrObj[i].direction == direction && (arrObj[i].num == num)) {
                    return arrObj[i].hasUsed;
                }
            }
        }
        else {
            for (var i = 0; i < RenXingcoords.length; i++) {
                if (RenXingcoords[i].direction == direction && (RenXingcoords[i].num == num)) {
                    return RenXingcoords[i].hasUsed;
                }
            }
        }

    }
    function renxingFuncReDraw(direction, num) {
        var newNum = parseInt(num) - 1;
        if (newNum < 71) {
            return false;
        } else {
            for (var i = 0; i < RenXingcoords.length; i++) {
                if (RenXingcoords[i].direction == direction && RenXingcoords[i].num == num) {
                    RenXingcoords[i].hasUsed = false;
                    $("#" + direction + num).remove();
                }
            }
            var obj = $('<img id="' + + '" class="absolute" src="' + str + '" />');
            $("#roadPicDiv").append(obj);
            obj1.hasUsed = true;

        }

    }
    function roadClickBind(event) {

        if ($("#DrivewayInfoEdit").text() == "编辑") {
            return false;
        }
        else {
            var Point = GetPostion(event);
            var point = layer1Position();
            Point.x = Point.x - point.x - 39;
            Point.y = Point.y - point.y - 106;
            var renxingObj = renxignFuncClick(Point);
            if (renxingObj == null) {
                for (var i in coords) {
                    if (Point.x < coords[i].point1[0] && Point.x > coords[i].point3[0] && Point.y < coords[i].point1[1] && Point.y > coords[i].point3[1]) {
                        var direction = coords[i].direction;
                        var num = coords[i].num;
                    }
                    if (Point.x < coords[i].point3[0] && Point.x > coords[i].point1[0] && Point.y > coords[i].point1[1] && Point.y < coords[i].point3[1]) {
                        var direction = coords[i].direction;
                        var num = coords[i].num;
                    }
                    if (Point.x < coords[i].point3[0] && Point.x > coords[i].point1[0] && Point.y < coords[i].point1[1] && Point.y > coords[i].point3[1]) {
                        var direction = coords[i].direction;
                        var num = coords[i].num;
                    }
                    if (Point.x < coords[i].point1[0] && Point.x > coords[i].point3[0] && Point.y < coords[i].point3[1] && Point.y > coords[i].point1[1]) {
                        var direction = coords[i].direction;
                        var num = coords[i].num;
                    }

                }
                if (direction != null && num != null) {
                    if (num == 7) {
                        $($("#addRoadForm select")[0]).val("11").attr("disabled", "disabled");
                        for (var j = 0; j < RenXingcoords.length; j++) {
                            if (RenXingcoords[j].hasUsed == false && RenXingcoords[j].direction == direction) {
                                num = RenXingcoords[j].num;
                                break;
                            }
                        }
                        if (num == 7) {
                            return false;   //说明5个人形全用了，不能再添加了。
                        }
                    } else {
                        $($("#addRoadForm select")[0]).val("01").removeAttr("disabled");
                        $($("#addRoadForm select")[0]).find("option[value='11']").attr("disabled", "disabled");
                    }
                    $("#addRoadForm").attr("direction", direction).attr("num", num).attr("type1", "");
                    alertCDBD();
                }
            }
            else {
                $($("#addRoadForm select")[0]).val("11").attr("disabled", "disabled");
                $("#addRoadForm").attr("direction", renxingObj.direction).attr("num", renxingObj.num).attr("type1", "");
            }

        }
    }
    function fiveXRoadClickBind(event) {
        if ($("#DrivewayInfoEdit").text() == "编辑") {
            return false;
        }
        else {
            var Point = GetPostion(event);
            var point = layer1Position();
            Point.x = parseInt(Point.x - point.x - 39);
            Point.y = parseInt(Point.y - point.y - 106);
            var P = [Point.x, Point.y];
            var renxingObj = renxingFuncClick5(P);
            if (renxingObj == null) {
                for (var i in coordsFive) {
                    if (getB(coordsFive[i], P)) {
                        var direction = coordsFive[i].direction;
                        var num = coordsFive[i].num;
                        break;
                    }
                }
                if (direction != null && num != null) {
                    if (num == 7) {
                        $($("#addRoadForm select")[0]).val("11").attr("disabled", "disabled");
                        for (var j = 0; j < FiveRenXingcoords.length; j++) {
                            if (FiveRenXingcoords[j].hasUsed == false && FiveRenXingcoords[j].direction == direction) {
                                num = FiveRenXingcoords[j].num;
                                break;
                            }
                        }
                        if (num == 7) {
                            return false;   //说明5个人形全用了，不能再添加了。
                        }
                    } else {
                        $($("#addRoadForm select")[0]).val("01").removeAttr("disabled");
                        $($("#addRoadForm select")[0]).find("option[value='11']").attr("disabled", "disabled");
                    }
                    $("#addRoadForm").attr("direction", direction).attr("num", num).attr("type1", "5X");
                    alertCDBD();
                }

            } else {
                $($("#addRoadForm select")[0]).val("11").attr("disabled", "disabled");
                $("#addRoadForm").attr("direction", renxingObj.direction).attr("num", renxingObj.num).attr("type1", "5X");
            }


        }
    }
    function fiveXRoadInit() {
        $("#Wshade").hide();
        $("#Nshade").hide();
        $("#Eshade").hide();
        $("#Sshade").hide();
        $("#direction4Form").hide();
        $("#direction5Form").show();
        $(".absolute1").show();
        $("#DrivewayInfoEdit").text("编辑");
        $("#alertDrivewayInfo  select").attr("disabled", "disabled");
        $("#roadPicClick").unbind("click", roadClickBind);
        $("#roadPicClick").bind("click", fiveXRoadClickBind);
    }
    function RoadInit(hideId) {
        $("#DrivewayInfoEdit").text("编辑");
        $("#alertDrivewayInfo  select").attr("disabled", "disabled");
        $(".absolute1").hide();
        $("#direction5Form").hide();
        $("#direction4Form").show();
        $("#Wshade").show();
        $("#Nshade").show();
        $("#Eshade").show();
        $("#Sshade").show();
        if (hideId) {
            $(hideId).hide();
        }
        $("#roadPicClick").bind("click", roadClickBind);
        $("#roadPicClick").unbind("click", fiveXRoadClickBind);
    }
    function phaseInit(hideId) {
        if (hideId=="5X") {
            $("#Wshade1").hide();
            $("#Nshade1").hide();
            $("#Eshade1").hide();
            $("#Sshade1").hide();
            $(".absolute1").show();
        }
        else {
            $(".absolute1").hide();
            $("#Wshade1").show();
            $("#Nshade1").show();
            $("#Eshade1").show();
            $("#Sshade1").show();
            if (hideId) {
                $(hideId).hide();
            }
        }
      
        $("#roadPicClick").bind("click", roadClickBind);
        $("#roadPicClick").unbind("click", fiveXRoadClickBind);
    }
    function fiveXPosition(direction, type) {
        var offset = { x: 0, y: 0 };
        if (direction == "EN") {
            if (type == "01") {
                offset.x = 10;
                offset.y = 46;
            }
            if (type == "02") {
                offset.x = 10;
                offset.y = 48;
            }
            if (type == "03") {
                offset.x = 11;
                offset.y = 44;
            }
            if (type == "04") {
                offset.x = 10;
                offset.y = 48;
            }
            if (type == "05") {
                offset.x = 7;
                offset.y = 47;
            }
            if (type == "06") {
                offset.x = 10;
                offset.y = 48;
            }
            if (type == "07") {
                offset.x = 10;
                offset.y = 51;
            }
            if (type == "08") {
                offset.x = 8;
                offset.y = 44;
            }
            if (type == "09") {
                offset.x = 8;
                offset.y = 46;
            }
            if (type == "10") {
                offset.x = 9;
                offset.y = 43;
            }

        }
        if (direction == "ES") {
            if (type == "01") {
                offset.x = -7;
                offset.y = 13;
            }
            if (type == "02") {
                offset.x = -7;
                offset.y = 14;
            }
            if (type == "03") {
                offset.x = -7;
                offset.y = 16;
            }
            if (type == "04") {
                offset.x = -10;
                offset.y = 17;
            }
            if (type == "05") {
                offset.x = -7;
                offset.y = 12;
            }
            if (type == "06") {
                offset.x = -7;
                offset.y = 17;
            }
            if (type == "07") {
                offset.x = -7;
                offset.y = 16;
            }
            if (type == "08") {
                offset.x = -7;
                offset.y = 15;
            }
            if (type == "09") {
                offset.x = -7;
                offset.y = 10;
            }
            if (type == "10") {
                offset.x = -10;
                offset.y = 16;
            }
        }
        if (direction == "CS") {
            if (type == "01") {
                offset.x = -6;
                offset.y = -6;
            }
            if (type == "02") {
                offset.x = -6;
                offset.y = -6;
            }
            if (type == "03") {
                offset.x = -6;
                offset.y = -4;
            }
            if (type == "04") {
                offset.x = -4;
                offset.y = -6;
            }
            if (type == "05") {
                offset.x = -4;
                offset.y = -6;
            }
            if (type == "06") {
                offset.x = -5;
                offset.y = -3;
            }
            if (type == "07") {
                offset.x = -4;
                offset.y = -5;
            }
            if (type == "08") {
                offset.x = -4;
                offset.y = -6;
            }
            if (type == "09") {
                offset.x = -4;
                offset.y = -6;
            }
            if (type == "10") {
                offset.x = -4;
                offset.y = -6;
            }
        }
        if (direction == "WS") {
            if (type == "01") {
                offset.x = 42;
                offset.y = -10;
            }
            if (type == "02") {
                offset.x = 42;
                offset.y = -9;
            }
            if (type == "03") {
                offset.x = 45;
                offset.y = -10;
            }
            if (type == "04") {
                offset.x = 46;
                offset.y = -11;
            }
            if (type == "05") {
                offset.x = 42;
                offset.y = -10;
            }
            if (type == "06") {
                offset.x = 46;
                offset.y = -9;
            }
            if (type == "07") {
                offset.x = 45;
                offset.y = -9;
            }
            if (type == "08") {
                offset.x = 42;
                offset.y = -10;
            }
            if (type == "09") {
                offset.x = 46;
                offset.y = -10;
            }
            if (type == "10") {
                offset.x = 46;
                offset.y = -8;
            }
        }
        if (direction == "WN") {
            if (type == "01") {
                offset.x = 41;
                offset.y = 33;
            }
            if (type == "02") {
                offset.x = 39;
                offset.y = 35;
            }
            if (type == "03") {
                offset.x = 39;
                offset.y = 34;
            }
            if (type == "04") {
                offset.x = 38;
                offset.y = 33;
            }
            if (type == "05") {
                offset.x = 41;
                offset.y = 30;
            }
            if (type == "06") {
                offset.x = 37;
                offset.y = 31;
            }
            if (type == "07") {
                offset.x = 47;
                offset.y = 35;
            }
            if (type == "08") {
                offset.x = 35;
                offset.y = 30;
            }
            if (type == "09") {
                offset.x = 44;
                offset.y = 33;
            }
            if (type == "10") {
                offset.x = 41;
                offset.y = 27;
            }
        }
        return offset;
    }
    function fiveXPosition1(direction, num) {
        var position = {};
        if (direction == "EN") {
            if (num == "71") {
                position.x = 298;
                position.y = 87;
            }
            if (num == "72") {
                position.x = 316;
                position.y = 97;
            }
            if (num == "73") {
                position.x = 331;
                position.y = 109;
            }
            if (num == "74") {
                position.x = 347;
                position.y = 120;
            }
            if (num == "75") {
                position.x = 362;
                position.y = 132;
            }
        }
        if (direction == "ES") {
            if (num == "71") {
                position.x = 452;
                position.y = 237;
            }
            if (num == "72") {
                position.x = 445;
                position.y = 256;
            }
            if (num == "73") {
                position.x = 439;
                position.y = 274;
            }
            if (num == "74") {
                position.x = 433;
                position.y = 293;
            }
            if (num == "75") {
                position.x = 428;
                position.y = 311;
            }
        }
        if (direction == "CS") {
            if (num == "71") {
                position.x = 377;
                position.y = 427;
            }
            if (num == "72") {
                position.x = 357;
                position.y = 427;
            }
            if (num == "73") {
                position.x = 337;
                position.y = 427;
            }
            if (num == "74") {
                position.x = 317;
                position.y = 427;
            }
            if (num == "75") {
                position.x = 297;
                position.y = 427;
            }
        }
        if (direction == "WS") {
            if (num == "71") {
                position.x = 152;
                position.y = 406;
            }
            if (num == "72") {
                position.x = 146;
                position.y = 384;
            }
            if (num == "73") {
                position.x = 140;
                position.y = 366;
            }
            if (num == "74") {
                position.x = 133;
                position.y = 347;
            }
            if (num == "75") {
                position.x = 126;
                position.y = 329;
            }
        }
        if (direction == "WN") {
            if (num == "71") {
                position.x = 116;
                position.y = 190;
            }
            if (num == "72") {
                position.x = 131;
                position.y = 179;
            }
            if (num == "73") {
                position.x = 147;
                position.y = 167;
            }
            if (num == "74") {
                position.x = 162;
                position.y = 156;
            }
            if (num == "75") {
                position.x = 177;
                position.y = 145;
            }
        }

        return position;
    }
    function addSave(arr) {
        for (var i in arr) {

        }
    }
    $(".cl1").css("height", parent.$(".tab-body").innerHeight() - 20);
    $(".cl1>.paramBody>.h50 .addBtn").bind("click", function () {
        var id = "#alert" + $(this).attr("id").charAt(0).toUpperCase() + $(this).attr("id").substr(1);
        var width = (($(window).width() - 916) / 2) - ($(parent.window).width() - $(parent.$(".right")).width()) / 2;
        var title = "";
        switch (id) {
            case id = "#alertLampGroupInfo":
                title = "灯组设置"; break;
            case id = "#alertDrivewayInfo":
                title = "车道设置"; break;
            case id = "#alertDetectorInfo":
                title = "检测器设置"; break;
            case id = "#alertPhaseInfo":
                title = "相位设置"; break;
            default:
        }

        alertForm = layer.open({
                id: "layer1",
                title: title,
                type: 1,
                offset: ["0px", width],
                area: '916px',
                content: $(id),
                end: function () {
                    parent.$(".shade").hide();
                    if ($("#roadPicDiv img[class='absolute']").length > 0) {
                        $("#roadPicDiv img[class='absolute']").remove();
                    }
                    layer.closeAll();
                }
            });
        parent.$(".shade").show();
    });
    $(".basicInfoFrom .item input , .basicInfoFrom .item select").attr("disabled", "disabled");
    $("#alertDrivewayInfo .item100 select").attr("disabled", "disabled");
    $(".realRoadMap").bind("click", function () {
        if ($(this).outerWidth() == 100) {
            $(this).animate({ width: '600px' });
        } else {
            $(this).animate({ width: '100px' });
        }
    });
    $("#paramEdit").bind("click", function (event) {
        event.preventDefault();
        if ($(this).text() == "编辑") {
            $(this).text("保存");
            $(".basicInfoFrom .item input,.basicInfoFrom .item select").attr("disabled", false);
            return false;
        }
        if ($(this).text() == "保存") {
            $(".basicInfoFrom .item input,.basicInfoFrom .item select").attr("disabled", true);
            $(this).text("编辑");
            var str = "img/roadPic/" + $($(".basicInfoFrom .item select")[0]).val() + ".jpg"
            $(".picDiv img").attr("src", str);
            return false;
        }
    });
    $("#lampNameSelect").bind("change", function () {
        $("#lampNameInput").val("");
        var option = $("#lampNameSelect").find("option:selected").text();
        $("#lampNameInput").val(option);
    });
    //灯组弹窗交互
    $(function () {
        xmlToLampTable(toXmlDom($("#txtLoad").val()));
        lampBgInit();
        $(".alert #btnZJDZ").bind("click", function () {
            $($("#addLampForm select")[0]).val("1");
            $($("#addLampForm input")[0]).val("");
            $("#addLampForm").attr("make", "ADD");
            $("#addLampForm").attr("lampId", "0");
            clearCoordsLampPic();
            if ($($("#addLampForm select")[0]).val == "0") {
                hasUsedTrue(jidognList);
                hasUsedFalse(renxingList);
            } else {
                hasUsedTrue(renxingList);
                hasUsedFalse(jidognList);
            }
            UpdateHasUsed();
            hasUsedDraw();
            alertZJDZ();
        });
        $("#alertLampGroupInfo tr td a.edit").bind("click", function () {
            var id = $($(this).parent().parent().find("td")[0]).text();
            $("#addLampForm").attr("make", "EDIT");
            $("#addLampForm").attr("lampId", id);
            alertZJDZ();
            clearCoordsLampPic();
            var direction = $(this).parent().parent().attr("dir");
            var lampName = $($(this).parent().parent().find("td")[2]).text();
            var num1 = parseInt($($(this).parent().parent().find("td")[3]).text());
            var num2 = parseInt($($(this).parent().parent().find("td")[4]).text());
            var num3 = parseInt($($(this).parent().parent().find("td")[5]).text());
            var lampType = $($(this).parent().parent().find("td")[1]).text();
            $($("#addLampForm select")[0]).attr("disabled", "disabled");
            $($("#addLampForm input")[0]).val(lampName);

            switch (direction) {
                case direction = "北":
                    $($("#addLampForm select")[1]).val("1"); break;
                case direction = "东":
                    $($("#addLampForm select")[1]).val("2"); break;
                case direction = "南":
                    $($("#addLampForm select")[1]).val("3"); break;
                case direction = "西":
                    $($("#addLampForm select")[1]).val("4"); break;
                default:
                    return false;
            }
            if (lampType == "人行灯组") {
                $($("#addLampForm select")[0]).val("0");
                hasUsedTrue(jidognList);
                hasUsedFalse(renxingList);
            }
            else {
                $($("#addLampForm select")[0]).val("1");
                hasUsedTrue(renxingList);
                hasUsedFalse(jidognList);
            }
            UpdateHasUsed();
            hasUsedDraw();
            hasUsedTrue1([num1, num2, num3]);

        });
        $("#lampBg2").bind("click", function (event) {
            var Point = GetPostion(event);
            var point = layer2Position();
            Point.x = Point.x - point.x - 36;
            Point.y = Point.y - point.y - 186;

            for (var i in coordsLampPic) {
                if (coordsLampPic[i].point1[0] < Point.x && Point.x < coordsLampPic[i].point2[0] && coordsLampPic[i].point1[1] < Point.y && Point.y < coordsLampPic[i].point3[1]) {
                    if (coordsLampPic[i].hasUsed) {
                        return false;
                    }
                    var obj = coordsLampPic[i];
                    break;
                }
            }
            if (obj.yes == false) {
                var color = obj.color;
                if ($("#lampBg2 img[src='img/lampPic/" + color + ".png']").length > 0) {
                    var id = $($("#lampBg2 img[src='img/lampPic/" + color + ".png']")[0]).attr("id").replace("lampBg2_", "");
                    id = parseInt(id);
                    coordsLampPic[id - 1].yes = false;
                    $($("#lampBg2 img[src='img/lampPic/" + color + ".png']")[0]).remove();
                }
                LampPic(obj.num, "lampBg2");
                obj.yes = true;
            }
            else if (obj.yes == true) {
                obj.yes = false;
                $("#lampBg2_" + coordsLampPic[i].num).remove();

            }

        });
        $($("#addLampForm select")[0]).bind("change", function () {
            $("#lampBg2 img").remove();
            if ($(this).val() == 0) {
                hasUsedTrue(jidognList);
                hasUsedFalse(renxingList);
            }
            if ($(this).val() == 1) {
                hasUsedTrue(renxingList);
                hasUsedFalse(jidognList);
            }
            UpdateHasUsed();
            hasUsedDraw();
        });
        $("#addLampSave").bind("click", function () {
            var id = $("#addLampForm").attr("lampId");
            var str = '<?xml version= "1.0" encoding= "utf-8" ?><document><RoadInfo><AreaId>' + roadInfo.AreaId + '</AreaId><AreaName>' + roadInfo.AreaName + '</AreaName><RoadId>' + roadInfo.RoadId + '</RoadId><RoadName>' + roadInfo.RoadName + '</RoadName></RoadInfo>';
            var lampName = $($("#addLampForm input")[0]).val();
            var lampType = $($("#addLampForm select")[0]).val();
            var direction = $($("#addLampForm select")[1]).val();
            var manageType = $("#addLampForm").attr("make");
            if (lampName == "") {
                parent.layer.alert("灯组名不能位空");
            }
            else {
                if (lampType == "0") {
                    if (!($('#lampBg2 img[src="img/lampPic/red.png"]').length > 0 && $('#addLampForm img[src="img/lampPic/green.png"]').length > 0)) {
                        parent.layer.alert("人形灯组必须选择红绿灯端子");
                    }
                    var yellowNum = 0;
                }
                if (lampType == "1") {
                    if (!($('#lampBg2 img[src="img/lampPic/red.png"]').length > 0 && $('#addLampForm img[src="img/lampPic/green.png"]').length > 0 && $('#addLampForm img[src="img/lampPic/yellow.png"]').length > 0)) {
                        parent.layer.alert("机动车灯组必须选择红黄绿灯端子");
                    }
                    var yellowNum = parseInt($('#addLampForm img[src="img/lampPic/yellow.png"]').attr("id").replace("lampBg2_", ""));
                }
                var redNum = parseInt($('#lampBg2 img[src="img/lampPic/red.png"]').attr("id").replace("lampBg2_", ""));
                var greenNum = parseInt($('#addLampForm img[src="img/lampPic/green.png"]').attr("id").replace("lampBg2_", ""));
                str += '<LampList><LampInfo><ManageType>' + manageType + '</ManageType><LampId>' + id + '</LampId><LampType>' + lampType + '</LampType><LampDirection>' + direction + '</LampDirection><LampName>' + lampName + '</LampName><LampRedId>' + redNum + '</LampRedId><LampYellowId>' + yellowNum + '</LampYellowId><LampGreenId>' + greenNum + '</LampGreenId></LampInfo>';
                console.log(str);

                addLampFormDisplay();
            }


        });
        function addLampFormDisplay() {
            $("#lampBg2 img").remove();
            $($("#addLampForm select")[0]).removeAttr("disabled");
            parent.$(".shade1").hide();
            layer.close(layer2);
        }
        $("#addLampCancle").bind("click", addLampFormDisplay);
    });
    //车道弹出窗交互
    $(function () {
        $("#drivewayInfo").bind("click", function () {
            var src = $($(".picDiv img")[0]).attr("src");
            switch (src) {
                case src = "img/roadPic/131.jpg":
                    RoadInit("#Wshade"); break;
                case src = "img/roadPic/132.jpg":
                    RoadInit("#Nshade"); break;
                case src = "img/roadPic/133.jpg":
                    RoadInit("#Eshade"); break;
                case src = "img/roadPic/134.jpg":
                    RoadInit("#Sshade"); break;
                case src = "img/roadPic/140.jpg":
                    RoadInit(); break;
                case src = "img/roadPic/150.jpg":
                    fiveXRoadInit();
                    break;
                default:
            }
            $($("#alertDrivewayInfo img")[0]).attr("src", $($(".picDiv img")[0]).attr("src"));
            $($("#alertDrivewayInfo img")[1]).attr("src", $($(".picDiv img")[0]).attr("src"));
        });
        $("#alertDrivewayInfo button").bind("click", function (event) {
            event.preventDefault();
        });
        function closeLayer2() {
            parent.$(".shade1").hide();
            var id = $("#layer2").parent().attr("id");
            id = id.replace("layui-layer", "");
            layer.close(layer2);// 一个BUG 修改了一下午找到得解决办法
            layer.close(parseInt(id));
        }
        $("#addRoadForm .inputBtn").live("click", closeLayer2);

        $("#addRoadSave").bind("click", function () {
            var x = "";
            var y = "";
            var direction = $("#addRoadForm").attr("direction");
            var num = $("#addRoadForm").attr("num");
            var id = direction + num;
            var val = $($("#addRoadForm select")[0]).val();
            if ($("#addRoadForm").attr("type1") == "5X") {
                var str = "31";
                switch (direction) {
                    case direction = "EN":
                        str += "1w"; break;
                    case direction = "ES":
                        str += "2w"; break;
                    case direction = "CS":
                        str += "3w"; break;
                    case direction = "WS":
                        str += "4w"; break;
                    case direction = "WN":
                        str += "5w"; break;
                    default:
                }
                str = "img/roadPic/" + str + val + ".png";
                var obj = $('<img id="' + id + '" class="absolute" src="' + str + '" />');
                for (var i in coordsFive) {
                    if (coordsFive[i].direction == direction && coordsFive[i].num == num) {
                        x = coordsFive[i].point1[0];
                        y = coordsFive[i].point1[1];
                        var obj1 = coordsFive[i];
                    }
                }
                for (var j in FiveRenXingcoords) {
                    if (FiveRenXingcoords[j].direction == direction && FiveRenXingcoords[j].num == num) {
                        var obj1 = FiveRenXingcoords[j];
                    }
                }
                if ($("#" + id).length > 0) {
                    $("#" + id).attr("src", str);
                } else if (num.charAt(0) != "7") {
                    var offset = fiveXPosition(direction, val);
                    x = x - offset.x;
                    y = y - offset.y;
                    obj.css({ left: x, top: y });
                    $("#roadPicDiv").append(obj);
                    obj1.hasUsed = true;
                } else {
                    var position = fiveXPosition1(direction, num);
                    obj.css({ left: position.x, top: position.y });
                    $("#roadPicDiv").append(obj);
                    obj1.hasUsed = true;
                }
            }
            else {
                if ($("#roadPic").attr("src") != "img/roadPic/150.jpg") {
                    var str = "30";
                    switch (direction) {
                        case direction = "E":
                            str += "1w"; break;
                        case direction = "S":
                            str += "2w"; break;
                        case direction = "W":
                            str += "3w"; break;
                        case direction = "N":
                            str += "4w"; break;
                        default:
                    }
                    str = "img/roadPic/" + str + val + ".png";
                }
                var obj = $('<img id="' + id + '" class="absolute" src="' + str + '" />');
                for (var i in coords) {
                    if (coords[i].direction == direction && coords[i].num == num) {
                        x = coords[i].point1[0];
                        y = coords[i].point1[1];
                        var obj1 = coords[i];
                    }
                }
                for (var j in RenXingcoords) {
                    if (RenXingcoords[j].direction == direction && RenXingcoords[j].num == num) {
                        x = RenXingcoords[j].point1[0];
                        y = RenXingcoords[j].point1[1];
                        var obj1 = RenXingcoords[j];
                    }
                }

                if ($("#" + id).length > 0) {
                    $("#" + id).attr("src", str);
                } else if (num.charAt(0) != "7") {
                    if (direction == "N") {
                        x = x - 27;
                        y = y - 60;
                        obj.css({ left: x, top: y });
                    }
                    if (direction == "E") {
                        x = x + 10;
                        y = y - 27;
                        obj.css({ left: x, top: y });
                    }
                    if (direction == "S") {
                        y = y + 10;
                        obj.css({ left: x, top: y });
                    }
                    if (direction == "W") {
                        x = x - 60;

                        obj.css({ left: x, top: y });
                    }
                    $("#roadPicDiv").append(obj);
                    obj1.hasUsed = true;

                } else {
                    x = x;
                    y = y;
                    obj.css({ left: x, top: y });
                    $("#roadPicDiv").append(obj);
                    obj1.hasUsed = true;
                    for (var i = 0; i < RenXingcoords.length; i++) {
                        console.log(RenXingcoords[i]);
                    }
                }
            }


        })
        $("#btnDelete").bind("click", function () {
            var direction = $("#addRoadForm").attr("direction");
            var num = $("#addRoadForm").attr("num");
            var type = $("#addRoadForm").attr("type1");
            if (type == "5X") {
                if (renxingFuncHasUsed(direction, num, FiveRenXingcoords)) {
                    $("#" + direction + num).remove();
                    renxingFuncHasUsedFalse(direction, num, FiveRenXingcoords);
                }
            } else {
                if (renxingFuncHasUsed(direction, num)) {
                    $("#" + direction + num).remove();
                    renxingFuncHasUsedFalse(direction, num);
                }
            }

        });
        $("#DrivewayInfoEdit").bind("click", function () {
            if ($(this).text() == "编辑") {
                $(this).text("保存");
                $("#alertDrivewayInfo  select").removeAttr("disabled");
                return false;
            }
            if ($(this).text() == "保存") {
                $(this).text("编辑");
                $("#alertDrivewayInfo  select").attr("disabled", "disabled");
                return false;
            }
        });
        $("#Nnum").change(function () {
            var left = 0;
            if ($(this).val() == 6) {
                left = 378;
                $("#Nshade").css("width", 15);
            }
            if ($(this).val() == 5) {
                left = 348;
                $("#Nshade").css("width", 50);
            }
            if ($(this).val() == 4) {
                left = 318;
                $("#Nshade").css("width", 80);
            }
            if ($(this).val() == 3) {
                left = 288;
                $("#Nshade").css("width", 100);
            }
            if ($(this).val() == 2) {
                left = 258;
                $("#Nshade").css("width", 125);
            }

            if ($(this).val() == 1) {
                left = 228;
                $("#Nshade").css("width", 160);
            }
            $("#Nshade").css("left", left);

        });
        $("#Enum").change(function () {
            var top = 0;
            if ($(this).val() == 6) {
                top = 378;
                $("#Eshade").css("height", 20);
            }
            if ($(this).val() == 5) {
                top = 348;
                $("#Eshade").css("height", 50);
            }
            if ($(this).val() == 4) {
                top = 318;
                $("#Eshade").css("height", 70);
            }
            if ($(this).val() == 3) {
                top = 288;
                $("#Eshade").css("height", 100);
            }
            if ($(this).val() == 2) {
                top = 258;
                $("#Eshade").css("height", 140);
            }

            if ($(this).val() == 1) {
                top = 228;
                $("#Eshade").css("height", 160);
            }
            $("#Eshade").css("top", top);
        });
        $("#Snum").change(function () {
            var x = 0;
            if ($(this).val() == 6) {
                x = 17;
                $("#Sshade").css("width", 17);
            }
            if ($(this).val() == 5) {
                x = 47;
                $("#Sshade").css("width", 47);
            }
            if ($(this).val() == 4) {
                x = 77;
                $("#Sshade").css("width", 77);
            }
            if ($(this).val() == 3) {
                x = 107;
                $("#Sshade").css("width", 107);
            }
            if ($(this).val() == 2) {
                x = 137;
                $("#Sshade").css("width", 137);
            }

            if ($(this).val() == 1) {
                x = 167;
                $("#Sshade").css("width", 167);
            }
            $("#Sshade").css("backgroundPosition", x + "px -7px ");

        });
        $("#Wnum").change(function () {
            var y = 0;
            if ($(this).val() == 6) {
                y = 19;
                $("#Wshade").css("height", 19);
            }

            if ($(this).val() == 5) {
                y = 49;
                $("#Wshade").css("height", 49);
            }
            if ($(this).val() == 4) {
                y = 79;
                $("#Wshade").css("height", 79);
            }
            if ($(this).val() == 3) {
                y = 109;
                $("#Wshade").css("height", 109);
            }
            if ($(this).val() == 2) {
                y = 139;
                $("#Wshade").css("height", 139);
            }

            if ($(this).val() == 1) {
                y = 169;
                $("#Wshade").css("height", 169);
            }
            $("#Wshade").css("backgroundPosition", "0px " + y + "px");


        });
        $("#ENnum").change(function () {
            if ($(this).val() == 6) {
                $("#ENimg").attr("src", "");
            } else {
                if ($(this).val() == 1) {
                    $("#ENimg").attr("src", "img/roadPic/2125.png").css({ "left": 347, "top": 13 });
                }
                if ($(this).val() == 2) {
                    $("#ENimg").attr("src", "img/roadPic/2124.png").css({ "left": 373, "top": 28 });
                }
                if ($(this).val() == 3) {
                    $("#ENimg").attr("src", "img/roadPic/2123.png").css({ "left": 396, "top": 46 });
                }
                if ($(this).val() == 4) {
                    $("#ENimg").attr("src", "img/roadPic/2122.png").css({ "left": 420, "top": 65 });
                }
                if ($(this).val() == 5) {
                    $("#ENimg").attr("src", "img/roadPic/2121.png").css({ "left": 444, "top": 82 });
                }
            }
        });
        $("#ESnum").change(function () {
            if ($(this).val() == 6) {
                $("#ESimg").attr("src", "");
            } else {
                if ($(this).val() == 1) {
                    $("#ESimg").attr("src", "img/roadPic/2145.png").css({ "left": 446, "top": 276 });
                }
                if ($(this).val() == 2) {
                    $("#ESimg").attr("src", "img/roadPic/2144.png").css({ "left": 447, "top": 305 });
                }
                if ($(this).val() == 3) {
                    $("#ESimg").attr("src", "img/roadPic/2143.png").css({ "left": 448, "top": 334 });
                }
                if ($(this).val() == 4) {
                    $("#ESimg").attr("src", "img/roadPic/2142.png").css({ "left": 448, "top": 362 });
                }
                if ($(this).val() == 5) {
                    $("#ESimg").attr("src", "img/roadPic/2141.png").css({ "left": 446, "top": 390 });
                }
            }
        });
        $("#CSnum").change(function () {
            if ($(this).val() == 6) {
                $("#CSimg").attr("src", "");
            } else {
                if ($(this).val() == 1) {
                    $("#CSimg").attr("src", "img/roadPic/2135.png").css({ "left": 209, "top": 476 });
                }
                if ($(this).val() == 2) {
                    $("#CSimg").attr("src", "img/roadPic/2134.png").css({ "left": 209, "top": 476 });
                }
                if ($(this).val() == 3) {
                    $("#CSimg").attr("src", "img/roadPic/2133.png").css({ "left": 209, "top": 476 });
                }
                if ($(this).val() == 4) {
                    $("#CSimg").attr("src", "img/roadPic/2132.png").css({ "left": 209, "top": 476 });
                }
                if ($(this).val() == 5) {
                    $("#CSimg").attr("src", "img/roadPic/2131.png").css({ "left": 209, "top": 478 });
                }
            }
        });
        $("#WSnum").change(function () {
            if ($(this).val() == 6) {
                $("#WSimg").attr("src", "");
            } else {
                if ($(this).val() == 1) {
                    $("#WSimg").attr("src", "img/roadPic/2155.png").css({ "left": 1, "top": 257 });
                }
                if ($(this).val() == 2) {
                    $("#WSimg").attr("src", "img/roadPic/2154.png").css({ "left": 1, "top": 257 });
                }
                if ($(this).val() == 3) {
                    $("#WSimg").attr("src", "img/roadPic/2153.png").css({ "left": 1, "top": 257 });
                }
                if ($(this).val() == 4) {
                    $("#WSimg").attr("src", "img/roadPic/2152.png").css({ "left": 0, "top": 257 });
                }
                if ($(this).val() == 5) {
                    $("#WSimg").attr("src", "img/roadPic/2151.png").css({ "left": -1, "top": 259 });
                }
            }
        });
        $("#WNnum").change(function () {
            if ($(this).val() == 6) {
                $("#WNimg").attr("src", "");
            } else {
                if ($(this).val() == 1) {
                    $("#WNimg").attr("src", "img/roadPic/2115.png").css({ "left": 68, "top": 0 });
                }
                if ($(this).val() == 2) {
                    $("#WNimg").attr("src", "img/roadPic/2114.png").css({ "left": 92, "top": -1 });
                }
                if ($(this).val() == 3) {
                    $("#WNimg").attr("src", "img/roadPic/2113.png").css({ "left": 118, "top": -1 });
                }
                if ($(this).val() == 4) {
                    $("#WNimg").attr("src", "img/roadPic/2112.png").css({ "left": 141, "top": -1 });
                }
                if ($(this).val() == 5) {
                    $("#WNimg").attr("src", "img/roadPic/2111.png").css({ "left": 164, "top": -1 });
                }
            }
        });
    });
    //相位弹出窗交互
    $(function () {
        $("#btnZJXW").bind("click", function () {
            var src = $($(".picDiv img")[0]).attr("src");
            switch (src) {
                case src = "img/roadPic/131.jpg":
                    phaseInit("#Wshade"); break;
                case src = "img/roadPic/132.jpg":
                    phaseInit("#Nshade"); break;
                case src = "img/roadPic/133.jpg":
                    phaseInit("#Eshade"); break;
                case src = "img/roadPic/134.jpg":
                    phaseInit("#Sshade"); break;
                case src = "img/roadPic/140.jpg":
                    phaseInit(); break;
                case src = "img/roadPic/150.jpg":
                    phaseInit("5X");
                    break;
                default:
            }
            $($("#addPhaseForm img")[0]).attr("src", $($(".picDiv img")[0]).attr("src"));
            $($("#addPhaseForm img")[1]).attr("src", $($(".picDiv img")[0]).attr("src"));
            alertZJXW();
        });
       
    });

</script>
