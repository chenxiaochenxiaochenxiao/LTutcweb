<%@ Page Language="C#" AutoEventWireup="true" CodeFile="runLog.aspx.cs" Inherits="runLog" %>

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
    <script type="text/javascript" src="three/zTree_v3-master/js/jquery.ztree.core.min.js"></script>
    <script type="text/javascript" src="three/zTree_v3-master/js/jquery.ztree.excheck.min.js"></script>
    <script type="text/javascript" src="js/dataShow.js"></script>
    <link href="three/layui/css/layui.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="three/layui/layui.js"></script>
    <script type="text/javascript" src="js/dataShow.js"></script>
    <style>
        .cl1 {
            position:absolute;top:0;bottom:0;left:0px;right:0px; overflow:hidden;
        }
         .h800 {
            margin: 0px auto;
            overflow:auto;
            position:absolute;
            bottom:80px;
            top:60px;
            left:0px;
            right:0px;
        }
        .pageDiv { 
            position:absolute;
            bottom:10px;
            left:0px;
         
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
       <div id="runLog"  style="overflow:hidden">
            <div class="cl1" style="">

                <div class="h50">
                    <div class="layui-form-pane" style="">
                        <div class="layui-form-item">
                            <label class="layui-form-label">选择时间</label>
                            <div class="layui-input-inline" style="margin-right:2px;">
                                <input class="layui-input" placeholder="开始日" id="LAY_demorange_s" />
                            </div>
                            <div class="layui-input-inline" style="width:15px;height:2px;background:#19a094; margin-top:20px; margin-right:2px;"></div>
                            <div class="layui-input-inline">
                                <input class="layui-input" placeholder="截止日" id="LAY_demorange_e" />
                            </div>
                            <label class="layui-form-label">选择账户</label>
                            <div class="layui-input-inline">
                                <select name="modules" class="layui-select" style="width: 185px;">
                                    <option value="">请选择</option>
                                    <option value="1">layer</option>
                                    <option value="2">form</option>
                                    <option value="3">layim</option>
                                </select>
                            </div>
                            <label class="layui-form-label" style="width: 140px">选择操作类型</label>
                            <div class="layui-input-inline">
                                <select name="modules" class="layui-select" style="width: 185px;">
                                    <option value="">请选择</option>
                                    <option value="1">layer</option>
                                    <option value="2">form</option>
                                    <option value="3">layim</option>
                                </select>
                            </div>
                                <div class="layui-input-inline">
                                    <button class="layui-btn" lay-submit lay-filter="formDemo">搜索</button>
                                </div>
               
                        </div>
                    </div>
                </div>

                <div class="h800">
                    <table id="tbGroup" class="table" cellspacing="0" cellpadding="0" width="100%" align="center" border="0" >
                    <tr>
                        <th class="tdWidth100">编号</th>
                        <th class="tdWidth300">时间</th>
                        <th class="tdWidth300">账户</th>
                        <th class="tdWidth300">类型</th>
                        <th class="tdAuto">内容</th>
                        <th class="tdWidth100">比对</th>
                    </tr>
                    <tr>
                        <td class="tdWidth100">1</td>
                        <td class="tdWidth300">2017-5-15 20:20:21</td>
                        <td class="tdWidth300">杨建伟</td>
                        <td class="tdWidth300">路口管理</td>
                        <td class="tdAuto">增加了一个路口</td>
                        <td class="tdWidth100"><a>比对</a></td>
                    </tr>
                </table>
                </div>
                <div class="h50 pageDiv"><div id="demo7" style="float:right;"></div></div>
            </div>
        </div>
    </form>
</body>
</html>
<script>

    var alertForm = null;  //存储弹出表单对象；
    var ztree = null;//存储路口树对项目
    var ztreePower = null//存储功能列表树对象

    $(".cl1").css("height", parent.$(".tab-body").innerHeight() - 20);
    $(function () {
        layui.use(['form', 'laydate', 'laypage'], function () {
            var form = layui.form();
            var laydate = layui.laydate();
            var laypage = layui.laypage;
            laypage({
                cont: 'demo7'
                , pages: 100
                , skip: true
            });
            var start = { elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss' };

            var end = { elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss' };

            document.getElementById('LAY_demorange_s').onclick = function () {
                start.elem = this;
                laydate(start);
            }
            document.getElementById('LAY_demorange_e').onclick = function () {
                end.elem = this
                laydate(end);
            }

        });
    });


    $(function () {
        $("#tbGroup td a").live("click", function () {
            alertForm = parent.layer.open({
                title: "日志比对",
                type: 1,
                area: '90%',
                content: parent.$("#compare"),
            });
        });
    });
</script>
