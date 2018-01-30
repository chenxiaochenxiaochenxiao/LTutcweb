<%@ Page Language="C#" AutoEventWireup="true" CodeFile="compare.aspx.cs" Inherits="comparePage_compare" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../css/reset.css" type="text/css" rel="stylesheet" />
    <link href="../css/layout.css" type="text/css" rel="stylesheet" />
    <link href="../three/font-awesome-4.7.0/css/font-awesome.min.css" type="text/css" rel="stylesheet" />
    <link href="../three/layui/css/layui.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="../js/jquery.js"></script>
    <script type="text/javascript" src="../three/layui/layui.js"></script>
    <style>
        body {
            position: absolute;
            left: 0;
            bottom: 0;
            right: 0;
            top: 0;
            overflow: hidden;
            font-family: "微软雅黑","华文细黑",Arial, Helvetica, sans-serif;
        }

        .title {
            width: 100%;
            height: 50px;
            background: #1660a3;
           
            line-height: 50px;
            color: white;
            font-size: 22px;
            letter-spacing: 8px;
            text-align: center;
        }

            .title h2 {
                   font-size: 22px;
            }
        .old {
            width: 50%;
            padding:10px;
            float: left;
            border: 1px solid #f0f0f0;
        }
            .old .oldTitle {
                height: 50px;
                line-height: 50px;
                background: #3fda7a;
               
                font-size: 20px;
                text-align: center;
            }

        .list {
            width: 200px;
            background: #f0f0f0;
        }

        .pic {
        }

            .pic .picImg {
                height: 600px;
                border-bottom: 1px solid #f0f0f0;
            }

            .pic .picParam {
                padding: 10px;
                overflow: auto;
            }

        .list .listTitle {
            padding-left: 20px;
            width: 200px;
            height: 50px;
            border-bottom: 1px solid #ffffff;
            line-height: 50px;
            padding: 0 20px;
            font-size: 16px;
        }

        .list ul {
            color: #333;
            font-size: 16px;
        }

            .list ul li {
                height: 38px;
                padding-left: 20px;
                line-height: 38px;
                cursor: pointer;
                position: relative;
            }

                .list ul li a {
                    display: inline-block;
                    margin-left: 40px;
                }

                .list ul li i {
                    position: absolute;
                    top: 14px;
                    color: red;
                    font-size: 12px;
                    display: inline-block;
                }
                #new .list ul li i {
                    color: #3fda7a;
                }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="title">
            <h2>运行日志比对页面</h2>
        </div>
        <div class="old fl" style="padding-right:0;">
            <div class="oldTitle"><span>某某</span>方案修改前</div>
            <div class="fl list">
                <div class="listTitle">方案路口列表</div>
                <ul>
                    <li><a>第一个路口</a></li>
                    <li><i class="fa fa-circle"></i><a>第一个路口</a></li>
                    <li><a>第一个路口</a></li>
                    <li><a>第一个路口</a></li>
                    <li><i class="fa fa-circle"></i><a>第一个路口</a></li>
                    <li><a>第一个路口</a></li>
                    <li><a>第一个路口</a></li>
                    <li><i class="fa fa-circle"></i><a>第一个路口</a></li>
                    <li><a>第一个路口</a></li>
                    <li><a>第一个路口</a></li>
                </ul>
            </div>
            <div class="fl pic">
                <div class="picImg">
                </div>
                <div class="picParam">
                    <div class="layui-form-pane" style="overflow: auto">
                        <div class="layui-form-item">
                            <label class="layui-form-label">选择账户</label>
                            <div class="layui-input-inline">
                                   <input type="text" name="title" placeholder="请输入标题"  disabled class="layui-input" />
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
                        </div>
                        <div class="layui-form-item">
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
                        </div>
                    </div>
                </div>
            </div>
        </div>
          <div class="old fl" id="new"  style="padding-left:0;">
            <div class="oldTitle"><span>某某</span>方案修改后</div>
            <div class="fl pic">
                <div class="picImg">
                </div>
                <div class="picParam">
                    <div class="layui-form-pane" style="overflow: auto">
                        <div class="layui-form-item">
                            <label class="layui-form-label">选择账户</label>
                            <div class="layui-input-inline">
                                   <input type="text" name="title" placeholder="请输入标题"  disabled class="layui-input" />
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
                        </div>
                        <div class="layui-form-item">
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
                        </div>
                    </div>
                </div>
            </div>
            <div class="fl list">
                <div class="listTitle">方案路口列表</div>
                <ul>
                    <li><a>第一个路口</a></li>
                    <li><i class="fa fa-circle"></i><a>第一个路口</a></li>
                    <li><a>第一个路口</a></li>
                    <li><a>第一个路口</a></li>
                    <li><i class="fa fa-circle"></i><a>第一个路口</a></li>
                    <li><a>第一个路口</a></li>
                    <li><a>第一个路口</a></li>
                    <li><i class="fa fa-circle"></i><a>第一个路口</a></li>
                    <li><a>第一个路口</a></li>
                    <li><a>第一个路口</a></li>
                </ul>
            </div>
        </div>
    </form>
</body>
</html>
<script>
    $(".old").css("height", $("body").innerHeight() - 70);
    $(".list,.pic").css("height", $(".old").innerHeight() - 70);
    $(".pic").css("width", $(".old").innerWidth() - 222);
    $(function () {
        layui.use(['form'], function () {
            var form = layui.form;

        });
    });
</script>
