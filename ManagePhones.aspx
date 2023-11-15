<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManagePhones.aspx.cs" Inherits="MobileShoppingWebsite.ManagePhones" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Admin Page</title>
    <link rel="stylesheet" type="text/css" href="ManagePhones.css" />
</head>
<body>
    <header>
           <h1>Welcome to MobiKart</h1>
    <nav>
        <ul>
            <li><a href="AdminHome.aspx">Home</a></li>
            <li><a href="Reports.aspx">Reports</a></li>
            <li><a href="UserManagement.aspx">User Management</a></li>
            <li><a href="LoginPage.aspx">Logout</a></li>
        </ul>
    </nav>
</header>

    <div class="container">
        <h2>Manage Phone Stock</h2>
        <div class="add-phone-form">
            <h3>Add a New Phone</h3>
            <div class="form-group">
                <label for="phoneName">Phone Name:</label>
                <asp:TextBox ID="phoneName" runat="server" CssClass="form-input" />
            </div>
            <div class="form-group">
                <label for="phonePrice">Price:</label>
                <asp:TextBox ID="phonePrice" runat="server" CssClass="form-input" />
            </div>
            <asp:Button ID="addPhoneButton" runat="server" Text="Add Phone"  CssClass="admin-button" />
        </div>

        <div class="remove-phone-form">
            <h3>Remove a Phone</h3>
            <div class="form-group">
                <label for="removePhoneName">Phone Name:</label>
                <asp:DropDownList ID="removePhoneName" runat="server" CssClass="form-input" />
            </div>
            <asp:Button ID="removePhoneButton" runat="server" Text="Remove Phone" CssClass="admin-button" />
        </div>
    </div>

    <footer>
    <p>&copy; 2023 Mobile Shopping</p>   

    </footer>
</body>
</html>
