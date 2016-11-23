<%@ Page Language="C#" Title="Donate" AutoEventWireup="true" CodeFile="Donate.aspx.cs" Inherits="SubPages_Donate" MasterPageFile="~/MasterPages/MasterPage.master" %>

<asp:Content ID="Main_Content" ContentPlaceHolderID="Main" runat="server">
    <div>
            <p><h1 align="center" class="jumbotron">Donate</h1></p>
            
            <hr />
            <div style="text-align:center">
                <ul>
                    <li><a href="#" onclick="StartUpdateLoop('Clock')">Click Me!</a></li>
                </ul>
            </div>
            <div id="Clock" style="border:solid">
                #
            </div>
            <p>
                This is my "Donate" Page!
            </p>
            <p>
                [Fill Me Out]
            </p>
            
        </div>

</asp:Content>
<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Donate</title>
    <link href="../Content/Test.css" type="text/css" rel="stylesheet" />
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css"/>
    <script type="text/javascript" src="../Scripts/jquery-1.10.2.js"></script>
    <script src="../Scripts/Test.js"></script>
</head>
<body style="margin-left: 10px">
    <form id="form1" runat="server">
        <div>
            <p><h1 align="center" class="jumbotron">Donate</h1></p>
            
            <hr />
            <div style="text-align:center">
                <ul>
                    <li><a href="#" onclick="StartUpdateLoop('Clock')">Click Me!</a></li>
                </ul>
            </div>
            <div id="Clock" style="border:solid">
                #
            </div>
            <p>
                This is my "Donate" Page!
            </p>
            <p>
                [Fill Me Out]
            </p>
            
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
