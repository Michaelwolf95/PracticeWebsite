<%@ Page Language="C#" Title="About Me" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="SubPages_About" MasterPageFile="~/MasterPages/MasterPage.master"%>

<%--<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About</title>
    <link href="../Content/Test.css" type="text/css" rel="stylesheet" />
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css"/>
</head>--%>
<asp:Content ID="Main_Content" ContentPlaceHolderID="Main" runat="server">
    <%--<asp:Image ID="BackgroundImage" SkinID="Background" runat="server" />--%>
    
    <div>
        <%--style="background-image:url('../App_Themes/Muted_Gradient/Images/Lenny.jpg')">--%>
        <h1 style="text-align:center" class="jumbotron">About Me</h1>
            
        <hr />
        <div style="text-align:center">
            <p>
                This is my "About Me" Page!
            </p>
            <p>
                [Fill Me Out]
            </p>
        </div>
     </div>
    <%--<div style="display:inline"><div style="text-align:right"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></div></div>--%>
</asp:Content>
<%--<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="text-align:center" class="jumbotron">About Me</h1>
            
            <hr />
            <div style="text-align:center">
                <p>
                    This is my "About Me" Page!
                </p>
                <p>
                    [Fill Me Out]
                </p>
            </div>
        </div>
        <footer class="bottom" >
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
</html>--%>
