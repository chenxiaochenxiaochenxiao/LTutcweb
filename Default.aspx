<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>交通信号控制</title>
    <link href="css/reset.css" type="text/css" rel="stylesheet" />
    <link href="css/layout.css" type="text/css" rel="stylesheet" />
    <link href="three/font-awesome-4.7.0/css/font-awesome.min.css" type="text/css" rel="stylesheet" />
    <link href="three/zTree_v3-master/css/zTreeStyle/zTreeStyle.css" type="text/css" rel="stylesheet" />
    <link href="css/table.css" type="text/css" rel="stylesheet" />

    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="three/zTree_v3-master/js/jquery.ztree.core.min.js"></script>
    <script type="text/javascript" src="three/zTree_v3-master/js/jquery.ztree.excheck.min.js"></script>
    <script type="text/javascript" src="three/layer/layer.js"></script>
    <script type="text/javascript" src="js/dataShow.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="body">
            <div class="top">
                <div class="fl">
                    <div class="logo">
                        <img src="icon/logo.jpg" width="50" style="border-radius: 10px; margin: 5px 10px;" />
                        <p>交通信号控制系统</p>
                    </div>
                </div>
                <div class="fl topBg" style="">
                    <img src="img/topbg12.png" />
                </div>
                <%--  <div class="fl listBtn"><i class="fa fa-list fa-2x"></i></div>--%>
            </div>
            <div class="left">
                <ul>
                    <li>
                        <div class="bindDiv roadTree ">
                            <i class="fa fa-lg fa-list"></i><span>路口列表</span><div id="div1" class="close1">
                                <div id="div2" class="close2"></div>
                            </div>
                        </div>

                    </li>
                    <li>
                        <div class="item select item1" tit="实时地图"><i class="fa fa-lg fa-map"></i><span>实时地图</span><i class=""></i></div>
                    </li>
                    <li>
                        <div class="bindDiv"><i class="fa fa-lg fa-users"></i><span>人员管理</span><i class="fa dot fa-chevron-up "></i></div>
                        <ul style="display: none">
                            <li>
                                <div class="item" tit="部门管理"><i class="fa fa-lg fa-users"></i><span>部门管理</span><i class=""></i></div>
                            </li>
                            <li>
                                <div class="item" tit="账户管理"><i class="fa fa-lg fa-user" style="margin-left:2px;"></i><span style="margin-left:36px;">账户管理</span><i class=""></i></div>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <div class="item item1" tit="路口管理"><i class="fa fa-lg fa-road"></i><span>路口管理</span><i class=""></i></div>
                    </li>
                     <li>
                        <div class="bindDiv"><i class="fa fa-lg fa-cog" style="margin-left:2px;"></i><span style="margin-left:32px;">参数配置</span><i class=" fa dot fa-chevron-up"></i></div>
                        <ul style="display: none">
                            <li>
                                <div class="item" tit="设备参数"><i class="fa fa-lg fa-wrench"></i><span>设备参数</span><i class=""></i></div>
                            </li>
                            <li>
                                <div class="item" tit="运行方案"><i class="fa fa-lg fa-map"></i><span>运行方案</span><i class=""></i></div>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <div class="item item1" tit="操作日志"><i class="fa fa-lg fa-table" style="margin-left:1px;"></i><span>操作日志</span><i class=""></i></div>
                    </li>
                    <li>
                        <div class="item item1" tit="运行日志"><i class="fa fa-lg fa-table" style="margin-left:1px;"></i><span>运行日志</span><i class=""></i></div>
                    </li>
                </ul>
                <div class="roadlist">
                    <div class="roadListTitle">
                        <%-- <span>查找路口</span>--%>
                        <div class="input">
                            <input type="text" /><i class="fa fa-search fa-2x"></i>
                        </div>

                    </div>
                    <div>
                        <ul id="tree" class="ztree" style="margin: 10px;"></ul>
                    </div>
                </div>
            </div>
            <div class="right">

                <div class="content">
                    <div class="tab-tit">
                        <ul>
                            <li class="select" tit="实时地图" style="margin-left:2px;"><i class="fa fa-map"> </i>实时地图</li>
                        </ul>
                    </div>
                    <div class="tab-body">
                        <iframe name="timeMap" id="timeMap" src="map.aspx" tit="实时地图" style="display: block; width: 100%; height: 100%" frameborder="no" scrolling="auto"></iframe>
                        <iframe name="groupManage" id="groupManage" src="groupManage.aspx" tit="部门管理" style="display: none; width: 100%; height: 100%" frameborder="no" scrolling="auto"></iframe>
                        <iframe name="userManage" id="userManage" src="userManage.aspx" tit="账户管理" style="display: none; width: 100%; height: 100%" frameborder="no" scrolling="auto"></iframe>
                        <iframe name="roadManage" id="roadManage" src="roadManage.aspx" tit="路口管理" style="display: none; width: 100%; height: 100%" frameborder="no" scrolling="auto"></iframe>
                        <iframe name="operationLog" id="operationLog" src="operationLog.aspx" tit="操作日志" style="display: none; width: 100%; height: 100%" frameborder="no" scrolling="auto"></iframe>
                        <iframe name="runLog" id="runLog" src="runLog.aspx" tit="运行日志" style="display: none; width: 100%; height: 100%" frameborder="no" scrolling="auto"></iframe>
                        <iframe name="runLog" id="basicParam" src="basicParam.aspx" tit="设备参数" style="display: none; width: 100%; height: 100%" frameborder="no" scrolling="auto"></iframe>
                    </div>
                </div>
            </div>
            <%--   右上角用户小图标单独定位--%>
            <div class="user">
                <div class="userDiv">
                    <p><span>admin</span></p>
                </div>
                <div class="userItem"><i class="fa fa-lg fa-lock"></i><span style="border-top:none; margin-left: 25px;">修改密码</span></div>
                <div class="userItem" style="padding-left: 23px;"><i class="fa fa-lg fa-power-off"></i><span style="margin-left: 22px;">退出系统</span></div>
            </div>

            <div id="userPsw" class="alertUserInfoForm" style="width: 500px;">
                    <div class="col3" style="width:100%;height:260px;padding:10px 36px; float:none;">
                        <div>原密码</div>
                        <div>
                            <input type="password" placeholder="请输入原密码" />
                        </div>
                        <div>新密码</div>
                        <div>
                            <input type="password" placeholder="新密码至少6位"/>
                        </div>
                        <div>确认新密码</div>
                        <div>
                            <input type="password" placeholder="请再次输入新密码" />
                        </div>
                </div>
                    <div style="height:80px;background: #ffffff;border-top: 1px solid #ccc;margin-top:5px;">
                        <input class="inputBtn" id="newPwdCancleBtn" type="button" value="取消" />
                        <asp:Button class="inputBtn btnSubmit" ID="newPwdSubmitBtn" runat="server" Text="保存" AutoPostBack="false" />
                    </div>
            </div>
        <div class="shade" id="shade1"></div>
        <div class="shade" id="shade2"></div>
        <div class="shade" id="shade3"></div>
        <div class="shade" id="shade4"></div>
        <div class="shade1" id="shade5"></div>
        <div class="shade1" id="shade6"></div>
        <div class="shade1" id="shade7"></div>
        <div class="shade1" id="shade8"></div>
            </div>
    </form>
</body>
</html>
<script>
    var layer1 = null;
    var layer2 = null;
    var timer = null;
    $(function () {
        /**退出系统**/
        function logout() {
            layer.confirm('您确定要退出本系统吗？', {
                btn: ['确定', '取消'] //按钮
            }, function () {
                window.location.href = "login.aspx";
            }, function () {
            });
        }
        /**加入收藏夹**/
        function addfavorite() {
            var ua = navigator.userAgent.toLowerCase();
            if (ua.indexOf("360se") > -1) {
                art.dialog({ icon: 'error', title: '友情提示', drag: false, resize: false, content: '由于360浏览器功能限制，加入收藏夹功能失效', ok: true, });
            } else if (ua.indexOf("msie 8") > -1) {
                window.external.AddToFavoritesBar('${dynamicURL}/authority/loginInit.action', '蓝泰交通信号管理系统');//IE8
            } else if (document.all) {
                window.external.addFavorite('${dynamicURL}/authority/loginInit.action', '蓝泰交通信号管理系统');
            } else {
                art.dialog({ icon: 'error', title: '友情提示', drag: false, resize: false, content: '添加失败，请用ctrl+D进行添加', ok: true, });
            }
        }

        $($(".userItem")[1]).bind("click", logout);
        $($(".userItem")[0]).bind("click", function () {
            $("#userPsw input[type='password']").val("");
            layer1=layer.open({
                title: "密码修改",
                type: 1,
                area: '500px',
                content: $("#userPsw"),
            });
        });
        $("#newPwdCancleBtn").bind("click", function () {
            layer.close(layer1);
        });
        $("#newPwdSubmitBtn").bind("click", function () {
            var input1 = $($("#userPsw input[type='password']")[0]).val();
            var input2 = $($("#userPsw input[type='password']")[1]).val();
            var input3 = $($("#userPsw input[type='password']")[2]).val();
            if (input1 == "" || input2 == "" || input3 == "" ) {
                layer.msg("输入框不能位空");
                return false;
            }
            if (input1 == false) {
                layer.msg("密码错误");
                return false;
            }
            if (input2 != input3) {
                layer.msg("2次输入的新密码不一致");
                return false;
            }
            if (input2.length<6) {
                layer.msg("密码长度低于6位");
                return false;
            } 
            layer.close(layer1);
            layer.msg("密码修改成果，请从新登陆");
        });

        //左侧菜单展开
        $(".left ul li div").bind("click", bindDiv);
        function  bindDiv() {
            if ($(this).hasClass("bindDiv")) {
                if ($(this).parent().find("ul").is(":hidden")) {
                    $(".left>ul li ul").slideUp();
                    $(this).parent().find("ul").slideToggle();
                    $("i.dot").attr("class", "fa dot fa-chevron-up");
                    $($(this).find("i")[1]).attr("class", "fa dot fa-chevron-down");
                }
                else {
                    $(this).parent().find("ul").slideUp();
                    $($(this).find("i")[1]).attr("class", "fa dot fa-chevron-up");
                }
            }
            if ($(this).hasClass("item")) {
                $(this).parents().find("div").removeClass("select");
                $(this).addClass("select");
                if ($(this).hasClass("item1")) {
                    $(".left>ul li ul").slideUp();
                    $("i.dot").attr("class", "fa dot fa-chevron-up");

                }
            }
        }
        //选项卡切换
        $(".content .tab-tit ul li").live("click", function () {
                $(this).siblings().removeClass("select");
                $(this).addClass("select");
                $(".tab-body>iframe").hide();
                $(".tab-body>iframe[tit=" + $(this).attr("tit") + "]").show();
                if ($(this).attr("tit") != "实时地图") {
                    $(".left").animate({
                        width: '220px'
                    });
                    $(".right").animate({
                        left: '220px',
                    });
                    $("#div1").removeClass("open1").addClass("close1");
                    $("#div2").removeClass("open2").addClass("close2");
                }
                var text = $(this).attr("tit");
                if ($(".left .item[tit='" + text + "']").attr("class").indexOf("select") < 0) {
                    if ($(".left .item[tit='" + text + "']").parent().parent().is(":hidden")) {
                        $(".left .item[tit='" + text + "']").parent().parent().prev().trigger("click","bindDiv");
                    }
                    $(".left .item[tit='" + text + "']").trigger("click", "bindDiv");
                }      
                });

        $("iframe").css("height", $(".tab-body").height());  //兼容chrome浏览器  ，iframe 不能height=100%失效了
        //左右菜单和内容区域滑动
        function slide520() {
            if ($(".left").outerWidth() == 220) {
                $(".left").animate({
                    width: '520px'
                });
                $(".right").animate({
                    left: '520px',
                });
            }
            if ($(".left").outerWidth() == 520) {
                $(".left").animate({
                    width: '220px'
                });
                $(".right").animate({
                    left: '220px',
                });
            }
        }

        //路口树开关
        $("#div1").bind("click", function () {

            if ($(".tab-tit ul li[class='select']").attr("tit") == "实时地图") {
                $("#div1").toggleClass("open1").toggleClass("close1");
                $("#div2").toggleClass("open2").toggleClass("close2", slide520());
            }
            else {
                layer.msg('实时地图页面才可以使用路口列表', { icon: 1 });
                return false;
            }
        });

        $(".left .item").bind("click", function () {
            var $tabtitle = $(".tab-tit li");
            for (var i = 0; i < $tabtitle.length; i++) {
                if ($($tabtitle[i]).attr("tit") == $(this).attr("tit")) {
                    $($tabtitle[i]).trigger("click");
                    return false;
                }
            }
            var str = '"'+$($(this).find("i")[0]).attr("class").replace("fa-lg", "")+'"';
            str = '<i class=' + str + '></i>'
            var node = new $('<li tit=' + $(this).attr("tit") + '>' + str + $(this).text() + '<a class="closeIcon"></a></li>');
            $tabtitle.parent().append(node);
            node.trigger("click");
        });

        $(".closeIcon").live("click", function (event) {
            event.stopPropagation();
            var tit = $(this).parent().attr("tit");
            $(this).parent().prev().trigger("click");
            $(this).parent().remove();

        });
   
        //路口列表节点数

        var roadNodes = [
            { id: 1, pId: 0, name: "浦口区", open: true },
            { id: 11, pId: 1, name: "路口1" },
            { id: 12, pId: 1, name: "路口1" },
            { id: 2, pId: 0, name: "六合区" },
            { id: 21, pId: 2, name: "六合路口1" },
            { id: 22, pId: 2, name: "六合路口1" },
        ];

        var funcNodes = [
            { id: 1, pId: 0, name: "实时地图", open: true },
            { id: 11, pId: 1, name: "地图1" },
            { id: 12, pId: 1, name: "地图2" },
            { id: 2, pId: 0, name: "用户管理", open: true },
            { id: 21, pId: 2, name: "地图1" },
            { id: 22, pId: 2, name: "地图2" },
        ];
        var userNodes = [
            { id: 1, pId: 0, name: "研发部", open: true },
            { id: 11, pId: 1, name: "杨建伟" },
            { id: 12, pId: 1, name: "陈潇" },
            { id: 2, pId: 0, name: "商务部", open: true },
            { id: 21, pId: 2, name: "用户1" },
            { id: 22, pId: 2, name: "用户2" },
        ]

        $(document).ready(function () {
            $.fn.zTree.init($("#UserInfoFormSelectFuncTree"), setting1, funcNodes).expandAll(true);
            $.fn.zTree.init($("#UserInfoFormSelectRoadTree"), setting1, roadNodes).expandAll(true);
            $.fn.zTree.init($("#createAreaSelectUserTree"), setting1, userNodes).expandAll(true);
            $.fn.zTree.init($("#createRoadSelectUserTree"), setting1, userNodes).expandAll(true);
        });
    });
</script>
