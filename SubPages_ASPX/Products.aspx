<%@ Page Language="C#" Title="Donate" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="SubPages_ASPX_Products" MasterPageFile="~/MasterPages/MasterPage.master" %>

<asp:Content ID="Main_Content" ContentPlaceHolderID="Main" runat="server">
    <div>
            <h1 style="text-align:center" class="jumbotron">Contact Me</h1>
            
            <div style="text-align:center">
                <p>
                    This is my "Products" Page!
                    [Fill Me Out]
                </p>
                
            </div>
        </div>
       
        <div class="container" style="text-align:center">
            <div class="column-left">
                <asp:ListBox ID="ListBox1" runat="server" Rows ="10" Width="400px" SelectionMode="Multiple" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged"></asp:ListBox>
            </div>
            <div class="column-center">
                <asp:Button ID="AddButton" Text=" + " runat="server" OnClick="AddButton_Click" />
                <p>
                    <asp:Button ID="RemoveButton" Text=" - " runat="server" OnClick="RemoveButton_Click" />
                </p>
            </div>
            <div class="column-right">
                <p>
                    <asp:ListBox ID="ListBox2" runat="server" Rows ="10" Width="400px" SelectionMode="Multiple" OnSelectedIndexChanged="ListBox2_SelectedIndexChanged" ></asp:ListBox>
                </p>
                <p>
                    <asp:Label ID="ShoppingCartLabel" runat="server">[Shopping Cart]</asp:Label>
                </p>
                <p>
                    <asp:Label ID="TotalCostLabel" runat="server">[Total Cost]</asp:Label>
                </p>
            </div>
        </div>

</asp:Content>

<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Products</title>
    <link href="../Content/Test.css" type="text/css" rel="stylesheet" />
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css"/>

    <script type="text/javascript" src="Scripts/jquery-1.10.2.js"></script>
    <script src="../Scripts/Test.js"></script>
</head>
<body>
    <form id="Form1" runat="server" onkeydown="OnKeyDown">
        <div>
            <h1 style="text-align:center" class="jumbotron">Contact Me</h1>
            
            <div style="text-align:center">
                <p>
                    This is my "Products" Page!
                    [Fill Me Out]
                </p>
                
            </div>
        </div>
       
        <div class="container" style="text-align:center">
            <div class="column-left">
                <asp:ListBox ID="ListBox1" runat="server" Rows ="10" Width="400px" SelectionMode="Multiple" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged"></asp:ListBox>
            </div>
            <div class="column-center">
                <asp:Button ID="AddButton" Text=" + " runat="server" OnClick="AddButton_Click" />
                <p>
                    <asp:Button ID="RemoveButton" Text=" - " runat="server" OnClick="RemoveButton_Click" />
                </p>
            </div>
            <div class="column-right">
                <p>
                    <asp:ListBox ID="ListBox2" runat="server" Rows ="10" Width="400px" SelectionMode="Multiple" OnSelectedIndexChanged="ListBox2_SelectedIndexChanged" ></asp:ListBox>
                </p>
                <p>
                    <asp:Label ID="ShoppingCartLabel" runat="server">[Shopping Cart]</asp:Label>
                </p>
                <p>
                    <asp:Label ID="TotalCostLabel" runat="server">[Total Cost]</asp:Label>
                </p>
            </div>
        </div>
         --%>
        <%--<dl>
            <dt class="reveal , button">
                [ITEM 1]
                <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
                <p class="hide">
                    [ITEM INFO]
                </p>
            </dt>
            <dt class="reveal, button">
                [ITEM 2]
                <p class="hide">
                    [ITEM INFO]
                </p>
            </dt>
            <dt class="reveal, button">
                [ITEM 3]
                <p class="hide">
                    [ITEM INFO]
                </p>
            </dt>
        </dl>
            <dl>
            <dt class="reveal, button">
                [ITEM 1]
                <p class="hide">
                    [ITEM INFO]
                </p>
            </dt>
            <dt class="reveal, button">
                [ITEM 2]
                <p class="hide">
                    [ITEM INFO]
                </p>
            </dt>
            <dt class="reveal, button">
                [ITEM 3]
                <p class="hide">
                    [ITEM INFO]
                </p>
            </dt>
        </dl>
        </div>--%>
        <%--  <select>
            <option>Option 1</option>
            <option>Option 2</option>
            <option>Option 3</option>
            <option>Option 4</option>
            <option>Option 5</option>
        </select>--%>

<%--        <footer class="bottom" >
            <div class="gradient-gray">
                <hr class="thin-linear-gradient"/>
                <p style="text-align:center">
                    <a class="button" href="../Default.aspx">Home</a>
                    <a class="button" href="Projects.aspx">Projects</a>
                    <a class="button" href="About.aspx">About Me</a>
                    <a class="button" href="Contact.aspx">Contact Me</a>
                    <a class="button" href="Donate.aspx">Donate</a>
                    <a class="button" href="Products.aspx">Products</a>
                </p>
                <div style="text-align:center" >
                    <a class="button" href="javascript:history.back()">Go Back</a>
                    
                    <div style="display:inline"><div style="text-align:right"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></div></div>
                </div>
            </div>
        </footer>
    </form>
</body>
</html>
--%>
