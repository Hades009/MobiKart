<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPswd.aspx.cs" Inherits="MobileShoppingWebsite.ForgotPswd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="ForgotPswd.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
        <h2>Forgot Password</h2>
        <p>Enter your email address below to reset your password.</p>

        <div>
            <asp:Label ID="lblMessage" runat="server" ForeColor="Green" Visible="false"></asp:Label>
            <asp:Label ID="lblError" runat="server" ForeColor="Red" Visible="false"></asp:Label>
        </div>

        <div>
            <label for="txtEmail">Email Address:</label>
            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="form-control" required="required"></asp:TextBox>
        </div>
        <div> 
            <button class="btnVerify">Verify</button>
        </div>
            <div>

            </div>
        <div>
            <asp:Label ID="Npass" runat="server">New Password</asp:Label><asp:TextBox ID="txtPass" runat="server" CssClass="form-control" required="required"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="CNpass" runat="server">Confirm New Password</asp:Label><asp:TextBox ID="txtCPass" runat="server" CssClass="form-control" required="required"></asp:TextBox>
        </div>

        <div>
            <asp:Button ID="Conf" runat="server" class="btnConf" Text="Update"></asp:Button>
        </div>

        </div>
    </form>
</body>
</html>

