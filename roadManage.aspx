<%@ Page Language="C#" AutoEventWireup="true" CodeFile="roadManage.aspx.cs" Inherits="roadManage" %>

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
    <script type="text/javascript" src="js/roadDataShow.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="roadManage">
            <div class="cl1">
                <div class="h50">
                    <div class="addBtn fl" id="areaSlideToggle" style="background: #07aa25;">
                        <i class="fa fa-minus fa-lg"></i><span>收起全部</span>
                    </div>
                      <div class="addBtn fl" id="addAreaBtn">
                        <i class="fa fa-plus fa-lg"></i><span>增加区域</span>
                    </div>
                    <div class="delBtn fl" id="delAreaBtn">
                        <i class="fa fa-minus fa-lg"></i><span>删除区域</span>
                    </div>
                    <div class="addBtn fl" id="addRoadBtn">
                        <i class="fa fa-plus fa-lg"></i><span>增加路口</span>
                    </div>
                    <div class="delBtn fl" id="delRoadBtn">
                        <i class="fa fa-minus fa-lg"></i><span>删除路口</span>
                    </div>
                  
                  <%--  <div class="disableBtn fl" >
                        <i class="fa fa-minus fa-lg"></i><span>删除区域</span>
                    </div>--%>
                </div>
                <table id="tbRoad" class="table" cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
                    <tr>
                        <th class="">
                            <input type="checkbox" id="tbSelectAllRoad" style="visibility: hidden;" /></th>
                        <th>区域编号</th>
                        <th>区域名称</th>
                        <th class="">路口编号</th>
                        <th class="">路口名称</th>
                        <th class="">备注</th>
                        <th class="">编辑</th>
                    </tr>

                </table>
            </div>
        </div>
        <div id="addAreaForm" class="alertUserInfoForm" style="width: 714px;">
        <div class="alertUserInfoFormTip" style="margin: 22px; width: 94%;"><span>创建一个新用户，并设置相关的属性，例如该用户的主项目和角色</span></div>
        <div class="alertcontent" style="width: 637px; margin: 0 38px;margin-bottom:10px;">
            <div class="col3" style="width: 636px;">
                <div class="col3Title">基本信息</div>
                <div>区域编号</div>
                <div>
                    <input type="text" value="0" disabled />
                </div>
                <div>区域名称</div>
                <div>
                    <input type="text" />
                </div>
                <div>备注</div>

                <textarea>

                </textarea>

            </div>
        </div>
        <div class="alertUserInfoFormBottom">
            <input class="inputBtn" id="createAreaCancleBtn" type="button" value="取消" />
            <asp:Button class="inputBtn btnSubmit" id="createAreaSubmitBtn"  runat="server" Text="保存" AutoPostBack="false" />
        </div>
    </div>
        <div id="addRoadForm" class="alertUserInfoForm" style="width: 714px;">
        <div class="alertUserInfoFormTip" style="margin: 22px; width: 94%;"><span>创建一个新用户，并设置相关的属性，例如该用户的主项目和角色</span></div>
        <div class="alertcontent" style="width: 637px; margin: 0 38px;margin-bottom:10px;">
            <div class="col3">
                <div class="col3Title">基本信息</div>
                <div>路口编号</div>
                <div>
                    <input type="text" value="0" disabled />
                </div>
                <div>路口名称</div>
                <div>
                    <input type="text" />
                </div>
                <div>所属区域</div>
                <select id="roadSelectArea">
                    <option value="0">请选择区域</option>
                </select>
                <div>备注</div>

                <textarea style="height: 144px">

                </textarea>

            </div>
            <div class="col3" style="margin-left: 36px;">
                <div class="col3Title">分配给用户</div>
                <ul id="createRoadSelectUserTree" class="ztree"></ul>
            </div>
        </div>
        <div class="alertUserInfoFormBottom">
            <input class="inputBtn" id="createRoadCancleBtn" type="button" value="取消" />
            <asp:Button  class="inputBtn btnSubmit" id="createRoadSubmitBtn"  runat="server" Text="保存" AutoPostBack="false"  />
        </div>
    </div>
        <asp:TextBox ID="txtLoad" runat="server" Style="display: none" value='<?xml version="1.0" encoding="utf-8" ?><document><AreaList desc="区域列表"><AreaInfo desc="单个区域信息1"><AreaId desc="区域编号" FieldLength="值范围:1-255">1</AreaId><AreaName desc="区域名称" FieldLength="最大15个汉字">浦口区</AreaName><AreaMemo desc="区域备注" FieldLength="最大200个汉字">浦口区备注</AreaMemo></AreaInfo><AreaInfo desc="单个区域信息2"><AreaId desc="区域编号">2</AreaId><AreaName desc="区域名称">六合区</AreaName><AreaMemo desc="区域备注">六合区备注</AreaMemo></AreaInfo></AreaList><RoadList desc="路口列表"><RoadInfo desc="单个路口信息1"><AreaId desc="区域编号">1</AreaId><RoadId desc="路口编号" FieldLength="值范围:1-255">1</RoadId><RoadName desc="路口名称" FieldLength="最大15个汉字">文德路1</RoadName><RoadMemo desc="路口备注" FieldLength="最大200个汉字">文德路1备注</RoadMemo><DepartList desc="部门列表" FieldLength="DepartId1;DepartId2;...DepartN;">1</DepartList><UserList desc="用户列表" FieldLength="UserId1;UserId2;...UserIdN;">1;2</UserList></RoadInfo><RoadInfo desc="单个路口信息2"><AreaId desc="区域编号">1</AreaId><RoadId desc="路口编号">2</RoadId><RoadName desc="路口名称">文德路2</RoadName><RoadMemo desc="路口备注">文德路2备注</RoadMemo><DepartList desc="部门列表">1;2</DepartList><UserList desc="用户列表">1;2;3;4</UserList></RoadInfo><RoadInfo desc="单个路口信息1"><AreaId desc="区域编号">2</AreaId><RoadId desc="路口编号" FieldLength="值范围:1-255">1</RoadId><RoadName desc="路口名称" FieldLength="最大15个汉字">六合路口1</RoadName><RoadMemo desc="路口备注" FieldLength="最大200个汉字">六合路口1备注</RoadMemo><DepartList desc="部门列表" FieldLength="DepartId1;DepartId2;...DepartN;">2</DepartList><UserList desc="用户列表" FieldLength="UserId1;UserId2;...UserIdN;">1;2;3</UserList></RoadInfo><RoadInfo desc="单个路口信息2"><AreaId desc="区域编号">2</AreaId><RoadId desc="路口编号">2</RoadId><RoadName desc="路口名称">六合路口2</RoadName><RoadMemo desc="路口备注">六合路口2备注</RoadMemo><DepartList desc="部门列表">1;2</DepartList><UserList desc="用户列表">2;3;4</UserList></RoadInfo></RoadList><DepartList desc="部门列表"><DepartInfo desc="单个部门信息1"><DepartId desc="部门编号">1</DepartId><DepartName desc="部门名称">研发部</DepartName><DepartSeq desc="部门排序编号">1</DepartSeq></DepartInfo><DepartInfo desc="单个部门信息2"><DepartId desc="部门编号">2</DepartId><DepartName desc="部门名称">商务部</DepartName><DepartSeq desc="部门排序编号">2</DepartSeq></DepartInfo></DepartList><UserList desc="账户列表"><UserInfo desc="单个账户信息1"><UserId desc="账户编号">1</UserId><UserName desc="账户名称">杨建伟</UserName><DepartId desc="账户所属部门编号">1</DepartId></UserInfo><UserInfo desc="单个账户信息2"><UserId desc="账户编号">2</UserId><UserName desc="账户名称">陈潇</UserName><DepartId desc="账户所属部门编号">1</DepartId></UserInfo><UserInfo desc="单个账户信息1"><UserId desc="账户编号">3</UserId><UserName desc="账户名称">刘建</UserName><DepartId desc="账户所属部门编号">2</DepartId></UserInfo><UserInfo desc="单个账户信息2"><UserId desc="账户编号">4</UserId><UserName desc="账户名称">曹建</UserName><DepartId desc="账户所属部门编号">2</DepartId></UserInfo></UserList></document>'></asp:TextBox>
        <asp:TextBox ID="txtSubmit" runat="server" Style="display: none" value=''></asp:TextBox>
    </form>
</body>
</html>
<script>
    var alertForm = null;  //存储弹出表单对象；
    var ztree = null;//存储路口树对项目
    $(function () {
        $("#roadManage table input[type='checkbox']").live("click", function (event) {
            event.stopPropagation();
        });
        $("#addAreaBtn").bind("click", function () {
            $("#addAreaForm .btnSubmit").attr("make", "ADD");
            var $input = $("#addAreaForm .alertcontent input");
            $($input[0]).val("");
            $($input[1]).val("");
            $($("#addAreaForm textarea")[0]).val("");
            var width = (($(window).width() - 714) / 2) - ($(parent.window).width() - $(parent.$(".right")).width()) / 2;
            alertForm = layer.open({
                title: "添加区域",
                type: 1,
                offset: ["0px", width],
                area: '714px',
                content: $("#addAreaForm"),
                end: function () {
                    parent.$(".shade").hide();
                }
            });
            parent.$(".shade").show();
        });
        $("#addRoadBtn").live("click", function () {
            $("#addRoadForm .btnSubmit").attr("make", "ADD");
            var $input = $("#addRoadForm .alertcontent input");
            $($input[0]).val("");
            $($input[1]).val("");
            $($("#addRoadForm textarea")[0]).val("");
            $("#roadSelectArea option[value=0]").attr("selected", true);
            var width = (($(window).width() - 714) / 2) - ($(parent.window).width() - $(parent.$(".right")).width()) / 2;
            ztree = $.fn.zTree.init($("#createRoadSelectUserTree"), setting1, DepartList());
            ztree.expandAll(true);

            alertForm =layer.open({
                title: "添加路口",
                type: 1,
                offset: ["0px", width],
                area: '714px',
                content: $("#addRoadForm"),
                end: function () {
                    parent.$(".shade").hide();
                }
            });
            parent.$(".shade").show();
        });
        $("#createAreaCancleBtn").bind("click", function () {
            $("#addAreaForm").find("input[type='text']").val("");
            $("#addAreaForm").find("textarea").val("");
            layer.close(alertForm);
        });
        $("#createRoadCancleBtn").bind("click", function () {
            $("#addRoadForm").find("input[type='text']").val("");
            $("#roadSelectArea option[value=0]").attr("selected", true);
            $("#addRoadForm").find("textarea").val("");
            layer.close(alertForm);
        });
        $("#delAreaBtn").bind("click", function () {
            var $checkbox = $("#tbRoad input[name='b']");
            var yes = true;
            for (var i = 0; i < $checkbox.length; i++) {
                if ($($checkbox[i]).is(":checked")) {
                    var pid = $($checkbox[i]).parent().next().text();
                    if ($("#tbRoad tr[pid=" + pid + "]").length != 0) {
                            parent.layer.alert('该区域还有路口，不能删除', {
                            closeBtn: 0
                        });
                        return;
                    }
                    yes = false; break;
                }
            }
            if (yes) {
                parent.layer.alert('请选择需要删除的区域', {
                    closeBtn: 0
                });
                return;
            }


            var layer1 = parent.layer.confirm('您确定要删除此区域？',
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
        $("#delRoadBtn").bind("click", function () {
            var $checkbox = $("#tbRoad input[name='a']");
            var yes = true;
            for (var i = 0; i < $checkbox.length; i++) {
                if ($($checkbox[i]).is(":checked")) {
                    yes = false; break;
                }
            }
            if (yes) {
                    parent.layer.alert('请选择需要删除的路口', {
                    closeBtn: 0
                });
                return;
            }
            var layer1 = parent.layer.confirm('您确定要删除此路口？',
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
        $("#roadManage  table tr td a").live("click", function (event) {
            var width = (($(window).width() - 714) / 2) - ($(parent.window).width() - $(parent.$(".right")).width()) / 2;
            if ($(this).parent().parent().hasClass("areaTr")) {
                $("#addAreaForm .btnSubmit").attr("make", "Edit");
                var $input = $("#addAreaBtn .alertcontent input");
                $($input[0]).val("");
                $($input[1]).val("");
                $($("#addAreaForm textarea")[0]).val("");
                var $td = $(this).parent().parent().find("td");
                var $input = $("#addAreaForm .alertcontent input");
                $($input[0]).val($($td[1]).text());
                $($input[1]).val($($td[2]).text());
                $("#addAreaForm .alertcontent textarea").val($($td[5]).text());
                alertForm = layer.open({
                    title: "编辑区域",
                    offset: ["0px", width],
                    type: 1,
                    area: '714px',
                    content: $("#addAreaForm"),
                    end: function () {
                        parent.$(".shade").hide();
                    }
                });
            }
            else {
                $("#addRoadForm .btnSubmit").attr("make", "EDIT");
                ztree = $.fn.zTree.init($("#createRoadSelectUserTree"), setting1, DepartList());
                ztree.expandAll(true);
           
                var $td = $(this).parent().parent().find("td");
                var $input = $("#addRoadForm .alertcontent input");
                $($input[0]).val($($td[3]).text());
                $($input[1]).val($($td[4]).text());
                $("#addRoadForm .alertcontent textarea").val($($td[5]).text());
                RoadIdToSelectArea($($td[3]).text());
                setSelectNodeTree(ztree, roadIdToUserList($($td[3]).text()));

                alertForm = layer.open({
                    title: "编辑路口",
                    type: 1,
                    offset: ["0px", width],
                    area: '714px',
                    content: $("#addRoadForm"),
                    end: function () {
                        parent.$(".shade").hide();
                    }
                });
            }
            parent.$(".shade").show();
            event.stopPropagation();
        });
        $("#roadManage  table tr td:contains('编辑')").live("click", function () {
            $(this).find("a").trigger("click");
        });
        //$("#tbRoad .areaTr i").live("click", function (event) {
        //    var pid = $($(this).parent().parent().find("td")[1]).text();
        //    var str = "tr[pid=" + pid + "]";
        //    if ($(this).attr("class").indexOf("up") > 0) {
        //        $(this).attr("class", "fa fa-chevron-down fa-lg");
        //        $("#tbRoad").find(str).slideDown();
        //    }
        //    else {
        //        $(this).attr("class", "fa fa-chevron-up fa-lg");
        //        $("#tbRoad").find(str).slideUp(0);
        //    }
        //    //$("#tbRoad").find(str).slideToggle();
        //    event.stopPropagation();
        //});
        $("#tbRoad .areaTr").live("click", function (event) {
            var pid = $($(this).find("td")[1]).text();
            var str = "tr[pid=" + pid + "]";
            if ($(this).find(".fa").attr("class").indexOf("up") > 0) {
                $(this).find(".fa").attr("class", "fa fa-chevron-down fa-lg");
                $("#tbRoad").find(str).slideDown();
            }
            else {
                $(this).find(".fa").attr("class", "fa fa-chevron-up fa-lg");
                $("#tbRoad").find(str).slideUp(0);
            }
            event.stopPropagation();
        });

        $("#areaSlideToggle").bind("click", function () {
            if ($($(this).find("span")[0]).text() == "收起全部") {
                $($(this).find("span")[0]).text("全部展开");
                $($(this).find("i")[0]).removeClass("fa-minus").addClass("fa-plus");
                $("#tbRoad .areaTr i").attr("class", "fa fa-chevron-up fa-lg");
                $("#tbRoad tr[pid]").slideUp(0);
            }
            else {
                $($(this).find("span")[0]).text("收起全部");
                $($(this).find("i")[0]).removeClass("fa-plus").addClass("fa-minus");
                $("#tbRoad .areaTr i").attr("class", "fa fa-chevron-down fa-lg");
                $("#tbRoad tr[pid]").slideDown();
            }
        })
        xmlToRoadTable(toXmlDom($("#txtLoad").val()));
        $("#areaSlideToggle").trigger("click");
        AreaArrToSelect($("#roadSelectArea"));

        //提交区域XML字符串
        $("#createAreaSubmitBtn").bind("click", function () {
            AreaSubmit($(this).attr("make"));
            $(".alertUserInfoForm").find("input[type='text']").val("");
            $(".alertUserInfoForm").find("textarea").val("");
            layer.close(alertForm);
            parent.$(".shade").hide();
        });

        //提交路口XML字符串
        $("#createRoadSubmitBtn").bind("click", function () {
            RoadSubmit($(this).attr("make"));
            $(".alertUserInfoForm").find("input[type='text']").val("");
            $(".alertUserInfoForm").find("textarea").val("");
            layer.close(alertForm);
            parent.$(".shade").hide();
        });

        //路口管理只选中一个
        $("#tbRoad input[type='checkbox']").live("click",function () {
            if (this.checked || this.checked == 'checked') {
                $("#tbRoad input[type='checkbox']").prop('checked', false);
                $(this).prop("checked", true);
            }
        });
        $("#tbRoad tr .tdWidth55").live("click", function (event) {
            $("#tbRoad input[type='checkbox']").prop('checked', false);
            $(this).find("input").trigger("click");
            event.stopPropagation();
        })

        $(".cl1").css("height", parent.$(".tab-body").innerHeight() - 20);
        //AreaArrtoSelect(AreaArr,$("#roadSelectArea"));
     
    });
</script>
