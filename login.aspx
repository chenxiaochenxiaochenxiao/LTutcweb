<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   	<title>登录页面</title>
	<link href="css/login.css" rel="stylesheet" />
	<script src="js/jquery.js"></script>
	<script src="js/login.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    	<div class="pic1"><img src="img/bj.png" alt="" /></div>
		<div class="pic2"><img src="img/font_pic.png" alt="" /></div>
        <div class="login">
			<form action='index.html'  id="frm" method = 'post' onsubmit = "return checkUser();">
				<div class="user" >
					<div class="info">
						<input type="text" name="user" id="user" placeholder="用户名:">       
					</div>
					<div class="info">
						<input type="password" name="pwd" id="pwd" placeholder="密&emsp;码:">
					</div>
					<div>
						<input type="checkbox" id="box" name="box">记住密码
					</div>
					<div>
						<asp:Button ID="Button1" runat="server" Text="登&nbsp;录" style="border: none" />
					</div>
				</div>
			</form>
		</div>
        	<div class="foot">
			<span>技术所有&emsp;蓝泰交通设施有限公司</span>
		</div>
    </form>
</body>
</html>
