﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login-moblie.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>系统登录界面</title>
    <link href="css/css.css" rel="stylesheet" />
    <style>
        .bg {
            background: url("image/login.jpg") no-repeat;
            /*该图片由Free-PhotosPixabay上发布*/
        }
    </style>
</head>
<script type="text/javascript">
    function browserRedirect() {
        var sUserAgent = navigator.userAgent.toLowerCase();
        var bIsIpad = sUserAgent.match(/ipad/i) == "ipad";
        var bIsIphoneOs = sUserAgent.match(/iphone os/i) == "iphone os";
        var bIsMidp = sUserAgent.match(/midp/i) == "midp";
        var bIsUc7 = sUserAgent.match(/rv:1.2.3.4/i) == "rv:1.2.3.4";
        var bIsUc = sUserAgent.match(/ucweb/i) == "ucweb";
        var bIsAndroid = sUserAgent.match(/android/i) == "android";
        var bIsCE = sUserAgent.match(/windows ce/i) == "windows ce";
        var bIsWM = sUserAgent.match(/windows mobile/i) == "windows mobile";
        if (bIsIpad || bIsIphoneOs || bIsMidp || bIsUc7 || bIsUc || bIsAndroid || bIsCE || bIsWM) {
            //跳转移动端页面
            window.location.href = "admin.aspx";
        } else {
            //跳转pc端页面
        }
    }
    browserRedirect(); 
</script>
<body class="bg">
    <form id="form1" runat="server">
        <div id="login">
            <div class="login-text">加班管理系统</div>
            <div class="login-table">
                <div class="login-input">
                    <asp:TextBox ID="TextBox1" runat="server" value="请输入数字账号" MaxLength="10" CssClass="input"></asp:TextBox>
                </div>
            </div>
            <div class="login-table">
                <div class="login-input">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="input"></asp:TextBox>
                </div>
            </div>
            <div class="login-table">
                <div class="submit-left">
                    <asp:Button ID="Button1" runat="server" Text="登录" OnClick="Button1_Click" CssClass="submit"></asp:Button>
                </div>
                <div class="submit-right">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="重置" CssClass="submit" />
                </div>
                <div style="padding: 50px; text-align: left">
                    管理员：001<br />
                    领导层：002<br />
                    员工：003<br />
                    测试账号的账密相同
                </div>
            </div>
        </div>
    </form>
</body>
</html>