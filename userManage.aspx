<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userManage.aspx.cs" Inherits="userManage" %>

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
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="three/zTree_v3-master/js/jquery.ztree.core.min.js"></script>
    <script type="text/javascript" src="three/zTree_v3-master/js/jquery.ztree.excheck.min.js"></script>
    <script type="text/javascript" src="three/layer/layer.js"></script>
    <script type="text/javascript" src="js/userDataShow.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="userManage">
            <div class="cl1">
                <div class="h50">
                    <div class="addBtn fl" id="addUserBtn">
                        <i class="fa fa-plus fa-lg"></i><span>增加账户</span>
                    </div>
                    <div class="delBtn fl" id="delUserBtn">
                        <i class="fa fa-minus fa-lg"></i><span>删除账户</span>
                    </div>
                </div>
                <table id="tbUser" class="table" cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
                    <tr>
                        <th class=""></th>
                        <th class="">用户编号</th>
                        <th class="">用户名称</th>
                        <th class="">所属部门</th>
                        <th class="">备注</th>
                        <th class="">功能权限</th>
                        <th class="">路口权限</th>
                        <th class="">编辑</th>
                    </tr>
                </table>
            </div>
        </div>
        <div id="addUserForm" class="alertUserInfoForm">
        <div class="alertUserInfoFormTip"><span>创建一个新用户，并设置相关的属性，例如该用户的主项目和角色</span></div>
        <div class="alertcontent">
            <div class="col3">
                <div class="col3Title">基本信息</div>
                <div>用户编号</div>
                <div>
                    <input type="text" value="0" disabled />
                </div>
                <div>用户名称</div>
                <div>
                    <input type="text" />
                </div>
                <div>所属部门</div>
                <div>
                    <select id="userSelectGroup">
                        <option value="0">请选择部门</option>

                    </select>
                </div>
                <div>备注</div>

                <textarea style="height: 139px">

                </textarea>

            </div>
            <div class="col3" style="margin: 0 36px; width: 220px;">

                <div class="col3Title">功能权限分配</div>
                <ul id="UserInfoFormSelectFuncTree" class="ztree"></ul>
            </div>
            <div class="col3" style="float: right; width: 380px;">
                <div class="col3Title">路口权限分配</div>
                <ul id="UserInfoFormSelectRoadTree" class="ztree"></ul>
            </div>
        </div>
        <div class="alertUserInfoFormBottom">
            <input class="inputBtn" id="createUserCancleBtn" type="button" value="取消" />
            <input class="inputBtn btnSubmit" id="createUserSubmitBtn" type="submit" value="保存" />
        </div>
    </div>
        <asp:TextBox ID="txtLoad" runat="server" Style="display: none" value='<?xml version="1.0" encoding="utf-8" ?><document><UserList><UserInfo><UserId>001</UserId><UserName>杨建伟</UserName><Password></Password><UserMemo>杨建伟账户备注</UserMemo><DepartId>001</DepartId><PowerList>1;2</PowerList><RoadList>1,1;1,2</RoadList></UserInfo><UserInfo><UserId>002</UserId><UserName>杨建伟</UserName><Password></Password><UserMemo>杨建伟账户备注</UserMemo><DepartId>002</DepartId><PowerList>1;2;3</PowerList><RoadList>1,1;1,2;2,1;2,2</RoadList></UserInfo></UserList><DepartList><DepartInfo><DepartId>001</DepartId><DepartName>研发部</DepartName><DepartSeq>1</DepartSeq></DepartInfo><DepartInfo><DepartId>002</DepartId><DepartName>商务部</DepartName><DepartSeq>2</DepartSeq></DepartInfo></DepartList><PowerList><PowerInfo><PowerId>1</PowerId><PowerName>实时地图</PowerName><PowerGroup>0</PowerGroup><PowerSeq>1</PowerSeq></PowerInfo><PowerInfo><PowerId>2</PowerId><PowerName>人员管理</PowerName><PowerGroup>0</PowerGroup><PowerSeq>2</PowerSeq></PowerInfo><PowerInfo><PowerId>3</PowerId><PowerName>路口管理</PowerName><PowerGroup>0</PowerGroup><PowerSeq>3</PowerSeq></PowerInfo></PowerList><RoadList><RoadInfo><AreaId>1</AreaId><AreaName>浦口区</AreaName><RoadId>1</RoadId><RoadName>文德路1</RoadName></RoadInfo><RoadInfo><AreaId>1</AreaId><AreaName>浦口区</AreaName><RoadId>2</RoadId><RoadName>文德路2</RoadName></RoadInfo><RoadInfo><AreaId>2</AreaId><AreaName>六合区</AreaName><RoadId>1</RoadId><RoadName>六合路口1</RoadName></RoadInfo><RoadInfo><AreaId>2</AreaId><AreaName>六合区</AreaName><RoadId>2</RoadId><RoadName>六合路口2</RoadName></RoadInfo></RoadList><AreaList><AreaInfo><AreaId>1</AreaId><AreaName>浦口区</AreaName><AreaMemo>浦口区备注</AreaMemo></AreaInfo><AreaInfo><AreaId>2</AreaId><AreaName>六合区</AreaName><AreaMemo>六合区备注</AreaMemo></AreaInfo></AreaList></document>'></asp:TextBox>
        <asp:TextBox ID="txtSubmit" runat="server" Style="display: none" value=''></asp:TextBox>
     </form>
</body>
</html>
<script>
    var alertForm = null;  //存储弹出表单对象；
    var ztree = null;//存储路口树对项目
    var ztreePower = null//存储功能列表树对象
    $(function () {
        //点击权限td下拉弹出权限列表书
        $(".tdDepartFunctree i").live("click", function (event) {
            event.stopPropagation();
            if ($(this).attr("class").indexOf("fa-chevron-up") > 0) {
                var id = $($(this).parent().parent().find("td")[1]).text();
                var treeNode = PowerListToZtreeData(UserIdToPowerList(id));
                $.fn.zTree.init($(this).parent().find("ul"), setting, treeNode);
                $(this).attr("class", "fa fa-chevron-down fa-lg alertFuncTreeI");
                $(this).parent().find("ul").css("height", treeNode.length * 30 + 10 > 600 ? 600 : treeNode.length * 30 + 10);
                $(this).parent().find("ul").slideDown(100);
                return false;
            }
            if ($(this).attr("class").indexOf("fa-chevron-down") > 0) {
                $(this).parent().find("ul").slideUp(100);
                $(this).attr("class", "fa fa-chevron-up fa-lg alertFuncTreeI");
                return false;
            }
        })
        $(".tdDepartRoadtree i").live("click", function (event) {
            event.stopPropagation();
            if ($(this).attr("class").indexOf("fa-chevron-up") > 0) {
                var id = $($(this).parent().parent().find("td")[1]).text();
                var treeNode = RoadListToZtreeData(UserIdToRoadList(id));
               var obj=  $.fn.zTree.init($(this).parent().find("ul"), setting, treeNode);
                $(this).attr("class", "fa fa-chevron-down fa-lg alertRoadTreeI");
                $(this).parent().find("ul").css("height", treeNode.length * 30 + 10 > 600 ? 600 : treeNode.length * 30 + 10);
                $(this).parent().find("ul").slideToggle(100);
                $.fn.zTree.init($(this).parent().find("ul"), setting, treeNode).expandAll(true);
                return false;
            }
            if ($(this).attr("class").indexOf("fa-chevron-down") > 0) {
                $(this).parent().find("ul").slideUp(100);
                $(this).attr("class", "fa fa-chevron-up fa-lg alertRoadTreeI");
                return false;
            }
        })
        $(".showList ul").live("click", function (event) {
            event.stopPropagation();
        });
        //取消查看用户权限和路口权限
        $("body").live("click", function () {
            $(".departFunctree").hide();
            $(".departRoadtree").hide();
            $("#tbUser tr td .fa").attr("class", "fa fa-chevron-up fa-lg alertFuncTreeI");
        });
        $(parent.document.body).live("click", function () {
            $(".departFunctree").hide();
            $(".departRoadtree").hide();
            $("#tbUser tr td .fa").attr("class", "fa fa-chevron-up fa-lg alertFuncTreeI");
        });
        //点击权限td下拉弹出权限列表书完成

        $("#userManage  table tr td>a").live("click", function (event) {
            event.stopPropagation();
            var width = (($(window).width() - 1049) / 2) - ($(parent.window).width() - $(parent.$(".right")).width()) / 2;
            var $td = $(this).parent().parent().find("td");
            var $input = $("#addUserForm .alertcontent input");
            var id = $($(this).parent().parent().find("td")[1]).text();
            UserIdToSelectDepart(id);
            var treeNode = GetAllRoadList();
            var treeNodePower = GetAllPowerList();
            $("#addUserForm .btnSubmit").attr("make", "EDIT");
            ztreePower = $.fn.zTree.init($("#UserInfoFormSelectFuncTree"), setting1, treeNodePower);
            ztreePower.expandAll(true);
            var powerlist = UserIdToPowerList(id);
            setPowerSelectNodeTree(ztreePower, powerlist);
            ztree = $.fn.zTree.init($("#UserInfoFormSelectRoadTree"), setting1, treeNode);
            ztree.expandAll(true);
            var roadlist = UserIdToRoadList(id);
            setSelectNodeTree(ztree, roadlist);

            $($input[0]).val($($td[1]).text());
            $($input[1]).val($($td[2]).text());
            $($input[2]).val($($td[2]).text());
            parent.$(".shade").show();
            alertForm = layer.open({
                title: "编辑用户",
                type: 1,
                offset: ["0px", width],
                area: '1049px',
                content: $("#addUserForm"),
                end: function () {
                    parent.$(".shade").hide();
                }
            });
            parent.$(".shade").show();
        });
        $("#userManage  table tr td:contains('编辑')").live("click", function (event) {
            event.stopPropagation();
            $(this).find("a").trigger("click");
        });
        $("#addUserBtn").bind("click", function () {
            $("#addUserForm .btnSubmit").attr("make", "ADD");
            var $input = $("#addUserForm .alertcontent input");
            $($input[0]).val("");
            $($input[1]).val("");
            $($input[2]).val("");
            $($("#addUserForm textarea")[0]).val("");
            var treeNode = GetAllRoadList();
            var treeNodePower = GetAllPowerList();
            ztreePower = $.fn.zTree.init($("#UserInfoFormSelectFuncTree"), setting1, treeNodePower);
            ztreePower.expandAll(true);
            ztree = $.fn.zTree.init($("#UserInfoFormSelectRoadTree"), setting1, treeNode);
            ztree.expandAll(true);
            var width = (($(window).width() - 1049) / 2) - ($(parent.window).width() - $(parent.$(".right")).width()) / 2;
            alertForm = layer.open({
                title: "添加账户",
                type: 1,
                offset: ["0px", width],
                area: '1049px',
                content: $("#addUserForm"),
                end: function () {
                    parent.$(".shade").hide();
                }
            });
            parent.$(".shade").show();
        });
        $("#createUserCancleBtn").bind("click", function () {
            $(".alertUserInfoForm").find("input[type='text']").val("");
            $(".alertUserInfoForm").find("textarea").val("");
            layer.close(alertForm);
            parent.$(".shade").hide();
        });
        //提交用户XML字符串
        $("#createUserSubmitBtn").bind("click", function () {
            UserSubmit($(this).attr("make"));
            //$(".alertUserInfoForm").find("input[type='text']").val("");
            //$(".alertUserInfoForm").find("textarea").val("");
            layer.close(alertForm);
            parent.$(".shade").hide();
        });
     
        $("#delUserBtn").bind("click", function () {

            var $checkbox = $("#tbUser input[name='a']");
            var yes = true;
            for (var i = 0; i < $checkbox.length; i++) {
                if ($($checkbox[i]).is(":checked")) {
                    yes = false; break;
                }
            }
            if (yes) {
                parent.layer.alert('请选择需要删除的用户', {
                    closeBtn: 0
                });
                return;
            }
            var layer1 = parent.layer.confirm('您确定要删除此用户？',
                {
                    btn: ['确定', '取消'] //按钮
                },
                function () {
                    $checkbox.each(function () {
                        if ($(this).attr("checked")) {
                            $(this).parent().parent().remove();
                            parent.layer.msg('删除成果', { icon: 1 });
                        }
                    },
                        function () {

                        });

                });
        });

        xmlToUserTable(toXmlDom($("#txtLoad").val()));
        DepartArrToSelect($("#userSelectGroup"));//部门下拉框初始化
        $("#tbUser input[name='a']").live("click", function (event) {
            event.stopPropagation();
            if (this.checked || this.checked == 'checked') {
                $("#tbUser input[name='a']").prop('checked', false);
                $(this).prop("checked", true);
            }
        });

        $("#tbUser tr .tdWidth55").live("click", function (event) {
            $("#tbUser input[type='checkbox']").prop('checked', false);
            $(this).find("input").trigger("click");
            event.stopPropagation();
        })
        $(".cl1").css("height", parent.$(".tab-body").innerHeight() - 20);
    });
</script>
