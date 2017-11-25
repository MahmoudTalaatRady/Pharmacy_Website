<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <title>pharmacy</title>
    <link rel="shortcut icon" type="image/x-icon" href="images/pageicon.png" />
    
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="css/login-style.css">

    <script src="js/functions.js"></script>

</head>
<body onload="startTime()">

    <div class="header">
        <div class="wrap" id="wrap1">
            <div class="logo">
                <a href="#"><img src="images/logo.png" title="logo" /></a>
            </div>
            <div class="contact-info">
                <ul>
                    <li>TODAY</li>
                    <li id="date"></li>
                    <li id="time"></li>
                </ul>
            </div>
            <div class="clear"> </div>
        </div>
    </div>
    <div id="container">
        <div class="login">
            <div class="heading">
                <h2>STAFF LOGIN</h2>
                <form id="form1" runat="server">
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon"><i class="fa fa-user"></i></span>
                        <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control" placeholder="Username or email"  style="font-size:2em" required></asp:TextBox>
                    </div>
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Password" TextMode="Password" style="font-size:2em" required></asp:TextBox>
                    </div>
                    <asp:Button ID="btnLogin" runat="server"  CssClass="float" Text="Login" OnClick="btnLogin_Click" />
                    <asp:Label ID="lblCheck" runat="server" ForeColor="#FF3300" ></asp:Label>
                </form>
            </div>
        </div>
    </div>

    <script type="text/javascript">
        var d = new Date();
        document.getElementById("date").innerHTML = d.toDateString();

    </script>

</body>
</html>
