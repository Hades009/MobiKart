<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="MobileShoppingWebsite.Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Payment Page</title>
    <link rel="stylesheet" href="Payment.css" />
    <!-- Include your other head elements here -->
</head>
<body>
    <form id="form1" runat="server">
       <header>
         <h1>Welcome to MobiKart</h1>
         <nav>
             <ul>
                <li><a href="Main.aspx">Home</a></li>
                <li><a href="Cart.aspx">Cart</a></li>
                <li><a href="LoginPage.aspx">Logout</a></li>
             </ul>
         </nav>
       </header>
        <div class="payment-container">
            <h2>Payment Details</h2>
            <div class="payment-form">
                <label for="cardNumber">Card Number:</label>
                <asp:TextBox runat="server" ID="cardNumber" CssClass="input-field" placeholder="Enter card number" ></asp:TextBox>

                <label for="expiryDate">Expiry Date:</label>
                <asp:TextBox runat="server" ID="expiryDate" CssClass="input-field" placeholder="MM/YY" ></asp:TextBox>

                <label for="cvv">CVV:</label>
                <asp:TextBox runat="server" ID="cvv" CssClass="input-field" placeholder="CVV" ></asp:TextBox>

                <asp:Button runat="server" ID="payButton" Text="Pay Now" CssClass="pay-button"  />
            </div>
        </div>
    </form>
</body>
</html>
