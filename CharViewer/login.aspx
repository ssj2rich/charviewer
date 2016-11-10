<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="CharViewer.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="viewport" content="width=1080, user-scalable=no">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="height:70px;">
                <asp:TextBox ID="tbUserName" runat="server" placeholder="User Name" style="width: 300px; height: 50px; font-size: 30px;"></asp:TextBox>
            </div>
            <div style="height:70px;">
                <asp:TextBox ID="tbPassword" runat="server" placeholder="password" type="password" style="width: 300px; height: 50px; font-size: 30px;"></asp:TextBox>
            </div>

            <div style="height:70px;">
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" style="width: 300px; height: 50px; font-size: 30px;" />
            </div>
        </div>
    </form>
</body>
</html>
