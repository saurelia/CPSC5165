<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Chapter 4: Shopping Cart</title>
    <link href="Styles/Main.css" rel="stylesheet" />
    <link href="Styles/Cart.css" rel="stylesheet" />
</head>
<body>
    <header>
        <img src="Images/banner.jpg" alt="Halloween Store" />
    </header>
    <section>
        <form id="form1" runat="server">
            <h1>Your shopping cart</h1>
            <asp:ListBox ID="lstCart" runat="server"></asp:ListBox>
            <div id="cartbuttons">
                <asp:Button ID="btnRemove" runat="server" Text="Remove Item" CssClass="button" /><br />
                <asp:Button ID="btnEmpty" runat="server" Text="Empty Cart" CssClass="button" />
            </div>
            <div id="shopbuttons">
                <asp:Button ID="btnContinue" runat="server" Text="Continue Shopping" CssClass="button" />
                <asp:Button ID="btnCheckOut" runat="server" Text="Check Out" CssClass="button" />
            </div>
            <asp:Label ID="lblMessage" runat="server" CssClass="button"></asp:Label>
        </form>
    </section>
</body>
</html>
