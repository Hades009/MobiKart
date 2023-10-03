<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="MobileShoppingWebsite.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mobile Shopping</title>
<link rel="stylesheet" type="text/css" href="Cart.css" />
</head>
<body>
    <form runat="server">
        <header>
               <h1>Welcome to Mobile Shopping</h1>
                <nav>
                     <ul>
                        <li><a href="Main.aspx">Home</a></li>
                        <li><a href="Products.aspx">Products</a></li>
                        <li><a href="Cart.aspx">Cart</a></li>
                     </ul>
                 </nav>
        </header>
        <div class="container">
            <h2>Shopping Cart</h2>
            <div class="cart-items">
                <!-- Cart items go here -->
                <div class="cart-item">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/img/phone1.jpg" />
                     <h3>Samsung S23 Ultra</h3>
                    <p>Price: ₹ 124,999.00</p>
                    <div class="quantity">
                        <label for="quantity1">Quantity:</label>
                        <asp:TextBox ID="quantity1" runat="server" Text="1" CssClass="quantity-input" />
                    </div>
                    <p class="subtotal">Subtotal: ₹124,999.00</p>
                    <asp:Button ID="removeButton1" runat="server" Text="Remove" CssClass="remove-button"  />
                </div>
                <div class="cart-item">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/img/phone2.jpg"/>
                     <h3>Samsung S22</h3>
                    <p>Price:₹52,990.00</p>
                    <div class="quantity">
                        <label for="quantity2">Quantity:</label>
                        <asp:TextBox ID="quantity2" runat="server" Text="1" CssClass="quantity-input" />
                    </div>
                    <p class="subtotal">Subtotal:₹52,990.00</p>
                    <asp:Button ID="removeButton2" runat="server" Text="Remove" CssClass="remove-button" />
                </div>
                <!-- Add more cart items as needed -->
            </div>

            <div class="cart-total">
                <p>Total: $<asp:Label ID="totalLabel" runat="server" Text="0" /></p>
                <asp:Button ID="checkoutButton" runat="server" Text="Checkout" CssClass="checkout-button" />
            </div>
        </div>
    </form>

    <footer>
         <p>&copy; 2023 Mobile Shopping</p>
    </footer>
</body>
</html>
