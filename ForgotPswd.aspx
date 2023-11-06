<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPswd.aspx.cs" Inherits="MobileShoppingWebsite.ForgotPswd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="ForgotPswd.css" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 330px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
        <h2>Forgot Password</h2>
        <p>Enter your username below to reset your password.</p>

        <div>
            <label for="txtEmail" class="auto-style1">Username:</label>
            <asp:TextBox ID="txtUser" runat="server" TextMode="Email" CssClass="form-control" required="required"></asp:TextBox>
        </div>
        <div> 
            <asp:Button ID="Button1" runat="server" class="btnVerify" Text="Verify" />
        </div>
            <div>

        <div>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords Don't Match" ForeColor="Red"></asp:CompareValidator>
        </div>

            </div>
        <div>
            <asp:Label ID="Npass" runat="server">New Password</asp:Label><asp:TextBox ID="txtPass" runat="server" CssClass="form-control" required="required"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="CNpass" runat="server">Confirm New Password</asp:Label><asp:TextBox ID="txtCPass" runat="server" CssClass="form-control" required="required"></asp:TextBox>
        </div>

        <div>
            <asp:Button ID="Conf" runat="server" class="btnConf" Text="Update" OnClick="Conf_Click"></asp:Button>
        </div>

        </div>
    </form>
</body>
</html>

