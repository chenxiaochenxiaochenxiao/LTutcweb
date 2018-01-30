<%@ Page Language="C#" AutoEventWireup="true" CodeFile="groupManage.aspx.cs" Inherits="groupManage" %>
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
    <script type="text/javascript" src="js/dataShow.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="groupManage">
            <div class="cl1">
                <div class="h50">
                    <div class="addBtn fl" id="addBtn">
                        <i class="fa fa-plus fa-lg"></i><span>增加部门</span>
                    </div>
                    <div class="delBtn fl" id="delBtn">
                        <i class="fa fa-minus fa-lg"></i><span>删除部门</span>
                    </div>
                </div>
                <table id="tbGroup" class="table" cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
                    <tr>
                        <th class="tdWidth55"></th>
                        <th class="tdWidth100">部门编号</th>
                        <th class="tdWidth300">部门名称</th>
                        <th class="tdAuto">备注</th>
                        <th class="tdWidth300">功能权限</th>
                        <th class="tdWidth300">路口权限</th>
                        <th class="tdWidth100">编辑</th>
                    </tr>
                </table>
            </div>
        </div>
        <div id="addGroupForm" class="alertUserInfoForm" style="">
        <div class="alertUserInfoFormTip"><span>创建一个新用户，并设置相关的属性，例如该用户的主项目和角色</span></div>
        <div class="alertcontent">
            <div class="col3">
                <div class="col3Title">基本信息</div>
                <div>部门编号</div>
                <div>
                    <input type="text" value="0" disabled />
                </div>
                <div>部门名称</div>
                <div>
                    <input type="text" />
                </div>
                <div>备注</div>

                <textarea>

                </textarea>

            </div>
            <div class="col3" style="margin: 0 36px; width: 220px;">

                <div class="col3Title">功能权限分配</div>
                <ul id="createGroupSelectFuncTree" class="ztree"></ul>
            </div>
            <div class="col3" style="float: right; width: 380px;">
                <div class="col3Title">路口权限分配</div>
                <ul id="createGroupSelectRoadTree" class="ztree"></ul>
            </div>
        </div>
        <div class="alertUserInfoFormBottom">
            <input class="inputBtn" id="createGroupCancleBtn" type="button" value="取消" />
           <%-- UseSubmitBehavior="false" --%>
            <asp:Button class="inputBtn btnSubmit" id="createGroupSubmitBtn"  runat="server" Text="保存" AutoPostBack="false" OnClick="createGroupSubmitBtn_Click" />
        </div>
        </div>
        <asp:TextBox ID="txtLoad" runat="server" Style="display: none" value=''></asp:TextBox>
        <asp:TextBox ID="txtSubmit" runat="server" Style="display: none" value=''></asp:TextBox>
    </form>
</body>
</html>
<script>
    var alertForm = null;  //存储弹出表单对象；
    var ztree = null;//存储路口树对项目
    var ztreePower = null//存储功能列表树对象
    $(function () {
       
        $(".tdDepartFunctree i").live("click", function (event) {
            event.stopPropagation();
            if ($(this).attr("class").indexOf("fa-chevron-up") > 0) {
                var id = $($(this).parent().parent().find("td")[1]).text();
                var treeNode = PowerListToZtreeData(DepartIdToPowerList(id));
                var obj = $.fn.zTree.init($(this).parent().find("ul"), setting, treeNode);
                $(this).attr("class", "fa fa-chevron-down fa-lg alertFuncTreeI");
                $(this).parent().find("ul").css("height", treeNode.length * 30 + 10 > 600 ? 600 : treeNode.length * 30 + 10);
                $(this).parent().find("ul").slideDown(100);
                obj.expandAll(true);
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
                var treeNode = RoadListToZtreeData(DepartIdToRoadList(id));
                var obj = $.fn.zTree.init($(this).parent().find("ul"), setting, treeNode);
                $(this).attr("class", "fa fa-chevron-down fa-lg alertRoadTreeI");
                $(this).parent().find("ul").css("height", treeNode.length * 30 + 10 > 600 ? 600 : treeNode.length * 30 + 10);
                $(this).parent().find("ul").slideDown(100);
                obj.expandAll(true);
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
            $("#tbGroup tr td .fa").attr("class", "fa fa-chevron-up fa-lg alertFuncTreeI");
        });
        $(parent.document.body).live("click", function () {
            $(".departFunctree").hide();
            $(".departRoadtree").hide();
            $("#tbGroup tr td .fa").attr("class", "fa fa-chevron-up fa-lg alertFuncTreeI");
        });
        $("#groupManage table tr td>a").live("click", function (event) {
            event.stopPropagation();
            var $td = $(this).parent().parent().find("td");
            var id = $($(this).parent().parent().find("td")[1]).text();
            var treeNode = GetAllRoadList();
            var treeNodePower = GetAllPowerList();
            var $input = $("#addGroupForm .alertcontent input");
            $("#addGroupForm .btnSubmit").attr("make", "EDIT");
            $($input[0]).val($($td[1]).text());
            $($input[1]).val($($td[2]).text());
            $($input[2]).val($($td[2]).text());
            var width = (($(window).width() - 1049) / 2) - ($(parent.window).width() - $(parent.$(".right")).width()) / 2;

            ztreePower = $.fn.zTree.init($("#createGroupSelectFuncTree"), setting1, treeNodePower);
            ztreePower.expandAll(true);
            var powerlist = DepartIdToPowerList(id);
            setPowerSelectNodeTree(ztreePower, powerlist);
            ztree = $.fn.zTree.init($("#createGroupSelectRoadTree"), setting1, treeNode);
            ztree.expandAll(true);
            var roadlist = DepartIdToRoadList(id);
            setSelectNodeTree(ztree, roadlist);
            alertForm = layer.open({
                title: "编辑部门",
                type: 1,
                offset: ["0px", width],
                area: '1049px',
                content: $("#addGroupForm"),
                end: function () {
                    parent.$(".shade").hide();
                }
            });
            parent.$(".shade").show();
        });
        $("#groupManage  table tr td:contains('编辑')").live("click", function (event) {
            $(this).find("a").trigger("click");
            event.stopPropagation();
        });
        $("#createGroupCancleBtn").bind("click", function () {
           $(".alertUserInfoForm").find("input[type='text']").val("");
           $(".alertUserInfoForm").find("textarea").val("");
           layer.close(alertForm);
           parent.$(".shade").hide();
        });
        //提交部门XML字符串
        $("#createGroupSubmitBtn").bind("click", function () {
            DepartSubmit($(this).attr("make"));
            $(".alertUserInfoForm").find("input[type='text']").val("");
            $(".alertUserInfoForm").find("textarea").val("");
            layer.close(alertForm);
            parent.$(".shade").hide();
        });
        $("#addBtn").bind("click", function () {
            var width = (($(window).width() - 1049) / 2) - ($(parent.window).width() - $(parent.$(".right")).width()) / 2;
            $("#addGroupForm .btnSubmit").attr("make", "ADD");
            var $input = $("#addGroupForm .alertcontent input");
            $($input[0]).val("");
            $($input[1]).val("");
            $($input[2]).val("");
            $($("#addGroupForm textarea")[0]).val("");
            var treeNode = GetAllRoadList();
            var treeNodePower = GetAllPowerList();
            ztreePower = $.fn.zTree.init($("#createGroupSelectFuncTree"), setting1, treeNodePower);
            ztreePower.expandAll(true);
            ztree = $.fn.zTree.init($("#createGroupSelectRoadTree"), setting1, treeNode);
            ztree.expandAll(true);
            alertForm = layer.open({
                title: "添加部门",
                type: 1,
                offset: ["0px", width],
                area: '1049px',
                content: $("#addGroupForm"),
                end: function () {
                    parent.$(".shade").hide();
                }
            });
            parent.$(".shade").show();
        });
        $("#delBtn").bind("click", function () {
            var $checkbox = $("#tbGroup input[name='a']");
            var yes = true;
            for (var i = 0; i < $checkbox.length; i++) {
                if ($($checkbox[i]).is(":checked")) {
                    yes = false; break;
                }
            }
            if (yes) {
                parent.layer.alert('请选择需要删除的部门', {
                    closeBtn: 0
                });
                return;
            }
            var layer1 = parent.layer.confirm('您确定要删除此部门？',
                {
                    btn: ['确定', '取消'] //按钮
                },
                function () {
                    $checkbox.each(function () {

                        if ($(this).attr("checked")) {
                            DepartDELETE($($(this).parent().parent().find("td")[1]).text());
                            parent.layer.msg('删除成果', { icon: 1 });
                        }
                    },
                        function () {

                        });

                });
        })
        //XML数据相关 
        //读取部门XML字符串
        xmlToGroupTable(toXmlDom($("#txtLoad").val()));
      
        //部门管理只选中一个
        $("#tbGroup input[name='a']").live("click", function (event) {
            event.stopPropagation();
            if (this.checked || this.checked == 'checked') {
                $("#tbGroup input[name='a']").prop('checked', false);
                $(this).prop("checked", true);
            } 
        });
        //$("#tbGroup tr .tdWidth55").live("click", function (event) {
        //    $(this).find("input").trigger("click");
        //    event.stopPropagation();
        //})
        $(".cl1").css("height", parent.$(".tab-body").innerHeight() - 20);
    });
</script>
