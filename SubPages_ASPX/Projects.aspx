<%@ Page Language="C#" Title="Projects" AutoEventWireup="true" CodeFile="Projects.aspx.cs" 
    Inherits="SubPages_Projects" MasterPageFile="~/MasterPages/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Main_Content" ContentPlaceHolderID="Main" runat="server">
     <div >
        <h1 style="text-align:center" class="jumbotron">Projects</h1>
            <%--<p class="caption" style="text-align:center"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></p>--%>
            
            <ul class="w3-navbar">
              <li><a href="#" onclick="DisplayTab('CloudBound')">CloudBound</a></li>
              <li><a href="#" onclick="DisplayTab('SurVive')">SurVive</a></li>
              <li><a href="#" onclick="DisplayTab('SweetEscape')">SweetEscape</a></li>
            </ul>
            <div id="CloudBound" class="Tab" style="display:block">
                <h2>CloudBound</h2>
                <p>CloudBound is...</p>
                <p><a class="button" href="../ProjectsPages/CloudBound.aspx">Learn More</a></p>

                <%--<video src="https://www.youtube.com/embed/h39vqdJsLIA" width="640" height="360"></video>--%>
                <iframe style="border:none" width="560" height="315"src="https://www.youtube.com/embed/h39vqdJsLIA" allowfullscreen></iframe>  <%--width="854" height="480"--%>
                <%--<div class="video-container">
                    <iframe style="border:none" width="560" height="315"src="https://www.youtube.com/embed/h39vqdJsLIA" allowfullscreen></iframe>  <%--width="854" height="480"--%>
                <%--</div>--%>
            </div>
            <div id="SurVive" class="Tab" style="display:none">
                <h2>SurVive</h2>
                <p>SurVive is...</p> 
                
            </div>
            <div id="SweetEscape" class="Tab" style="display:none">
                <h2>SweetEscape</h2>
                <p>SweetEscape is...</p>
                <p><a class="button" href="../ProjectsPages/SweetEscape.aspx">Learn More</a></p>
            </div>
            
            <hr />
            <div style="text-align:center">
                <p>
                    This page is for showcasing all of my projects over the course of my Game Dev career.
                </p>
                <p>
                    [Fill Me Out]
                </p>
            </div>
        </div>

</asp:Content>

<%--
    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Projects</title>
    <link href="../Content/Test.css" type="text/css" rel="stylesheet" />
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css"/>

    <script type="text/javascript" src="Scripts/jquery-1.10.2.js"></script>
    <script src="../Scripts/Test.js"></script>
</head>
<body><-- onload="DisplayTab('SurVive')">--%>
    <%--
        <form id="form1" runat="server">
        <div >
            <h1 style="text-align:center" class="jumbotron">Projects</h1>
            <%--<p class="caption" style="text-align:center"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></p>--%>
        <%--    
            <ul class="w3-navbar">
              <li><a href="#" onclick="DisplayTab('CloudBound')">CloudBound</a></li>
              <li><a href="#" onclick="DisplayTab('SurVive')">SurVive</a></li>
              <li><a href="#" onclick="DisplayTab('SweetEscape')">SweetEscape</a></li>
            </ul>
            <div id="CloudBound" class="Tab" style="display:block">
                <h2>CloudBound</h2>
                <p>CloudBound is...</p>
                <%--<video src="https://www.youtube.com/embed/h39vqdJsLIA" width="640" height="360"></video>--%>
<%--
                <iframe style="border:none" width="560" height="315"src="https://www.youtube.com/embed/h39vqdJsLIA" allowfullscreen></iframe>  <%--width="854" height="480"--%>
                <%--<div class="video-container">
                    <iframe style="border:none" width="560" height="315"src="https://www.youtube.com/embed/h39vqdJsLIA" allowfullscreen></iframe>  <%--width="854" height="480"--%>
                <%--</div>--%>
<%--
            </div>
            <div id="SurVive" class="Tab" style="display:none">
                <h2>SurVive</h2>
                <p>SurVive is...</p> 
            </div>
            <div id="SweetEscape" class="Tab" style="display:none">
                <h2>SweetEscape</h2>
                <p>SweetEscape is...</p>
            </div>
            
            <hr />
            <div style="text-align:center">
                <p>
                    This page is for showcasing all of my projects over the course of my Game Dev career.
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
               <%-- <p style="text-align:center">
                    <a class="button" href="javascript:history.back()">Go Back</a>
                </p>
                <p class="caption" style="text-align:center"><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></p>--%>
<%--
                <div style="text-align:center" >
                    <a class="button" href="javascript:history.back()">Go Back</a>
                    
                    <div style="display:inline"><div style="text-align:right"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></div></div>
                </div>
            </div>
        </footer>
    </form>
</body>
</html>--%>