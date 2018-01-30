<%@ Page Language="C#" AutoEventWireup="true" CodeFile="basicParam - 复制.aspx.cs" Inherits="bascParam" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="css/reset.css" type="text/css" rel="stylesheet" />
    <link href="css/layout.css" type="text/css" rel="stylesheet" />
    <link href="three/font-awesome-4.7.0/css/font-awesome.min.css" type="text/css" rel="stylesheet" />
    <link href="three/zTree_v3-master/css/zTreeStyle/zTreeStyle.css" type="text/css" rel="stylesheet" />
    <link href="css/table.css" type="text/css" rel="stylesheet" />
    <link href="css/basicParam.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="three/zTree_v3-master/js/jquery.ztree.core.min.js"></script>
    <script type="text/javascript" src="three/zTree_v3-master/js/jquery.ztree.excheck.min.js"></script>
    <script type="text/javascript" src="three/layer/layer.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="basicParam">
            <div class="cl1">
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
                <div class="paramBody">
                    <div class="picDiv fl">
                        <img src="img/map-four.jpg" />
                        <img class="realRoadMap" src="img/map-four.jpg" width="100" />
                    </div>
                    <div class="basicInfoFrom">
                        <div class="picDivTitle">基本信息</div>
                        <div class="form clearfix">
                            <div class="item">
                                <div>路口编号</div>
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
                                <div>区域编号</div>
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
                                <div>主机编号</div>
                                <div>
                                    <input type="number" />
                                </div>
                            </div>
                            <div class="item">
                                <div>主机类型</div>
                                <div>
                                    <input type="number" />
                                </div>

                            </div>
                            <div class="item">
                                <div>最大绿</div>
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
                                <div>最大红</div>
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
                                <div>开机黄闪</div>
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
                            <div class="item">
                                <div>路口类型</div>
                                <div>
                                    <input type="number" />
                                </div>
                            </div>
                        </div>
                        <div style="height: 60px; border-top: 1px solid #ccc; margin-top: 5px;">
                            <input class="inputBtn" id="newPwdCancleBtn" type="button" value="取消" style="margin-top: 12px" />
                            <asp:Button class="inputBtn btnSubmit" ID="newPwdSubmitBtn" runat="server" Text="提交" AutoPostBack="false" Style="margin-top: 12px" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="alert" id="alertLampGroupInfo">

                <div class="">
                    <div class="h50">
                        <div class="addBtn fl" >
                            <i class="fa fa-plus fa-lg"></i><span>增加灯组</span>
                        </div>
                        <div class="delBtn fl" id="">
                            <i class="fa fa-minus fa-lg"></i><span>删除灯组</span>
                        </div>
                    </div>
                    <table class="table" cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
                        <tr>
                            <th class="tdWidth55"></th>
                            <th class="tdWidth100">部门编号</th>
                            <th class="tdWidth300">部门名称</th>
                            <th class="tdAuto">备注</th>
                            <th class="tdWidth300">功能权限</th>
                            <th class="tdWidth300">路口权限</th>
                            <th class="tdWidth100">编辑</th>
                        </tr>
                        <tr>
                            <td class="tdWidtd55"></td>
                            <td class="tdWidtd100">部门编号</td>
                            <td class="tdWidtd300">部门名称</td>
                            <td class="tdAuto">备注</td>
                            <td class="tdWidtd300">功能权限</td>
                            <td class="tdWidtd300">路口权限</td>
                            <td class="tdWidtd100">编辑</td>
                        </tr>
                    </table>
                </div>
                <table class="table" id="lampGropuTable">
                    <tr>
                        <th>灯驱1</th>
                        <th>灯驱2</th>
                        <th>灯驱3</th>
                        <th>灯驱4</th>
                        <th>灯驱5</th>
                        <th>灯驱6</th>
                        <th>灯驱7</th>
                        <th>灯驱8</th>
                        <th>灯驱9</th>
                        <th>灯驱10</th>
                        <th>灯驱11</th>
                        <th>灯驱12</th>
                        <th>灯驱13</th>
                        <th>灯驱13</th>
                    </tr>
                    <tr class="red">
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr class="yellow">
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr class="green">
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr class="red">
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr class="yellow">
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr class="green">
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr class="red">
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr class="green">
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </table>
            </div>
            <div class="alert" id="alertDrivewayInfo"></div>
            <div class="alert" id="alertDetectorInfo"></div>
            <div class="alert" id="alertPhaseInfo"></div>
        </div>
    </form>
</body>
</html>
<script>
    var alertForm = null;
    $(".realRoadMap").bind("click", function () {
        if ($(this).outerWidth() == 100) {
            $(this).animate({ width: '600px' });
        } else {
            $(this).animate({ width: '100px' });
        }
    });
    $(".h50 .addBtn").bind("click", function () {
        var id = "#alert" + $(this).attr("id").charAt(0).toUpperCase() + $(this).attr("id").substr(1);
        var width = (($(window).width() - 800) / 2) - ($(parent.window).width() - $(parent.$(".right")).width()) / 2;
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
            title: title,
            type: 1,
            offset: ["0px", width],
            area: '800px',
            content: $(id),
            end: function () {
                parent.$(".shade").hide();
            }
        });
        parent.$(".shade").show();

    })
    $(function () {
        $(".cl1").css("height", parent.$(".tab-body").innerHeight() - 20);
    });
</script>
