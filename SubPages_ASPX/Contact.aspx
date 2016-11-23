<%@ Page Language="C#" Title="Contact Me" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="SubPages_Contact" MasterPageFile="~/MasterPages/MasterPage.master" %>
<%@ Register Src="~/Controls/ContactUsForm.ascx" TagName="ContactUsForm" TagPrefix="ucl"  %>

<asp:Content ID="Main_Content" ContentPlaceHolderID="Main" runat="server">
   <div>
        <h1 style="text-align:center" class="jumbotron">Contact Me</h1>

        <div style="text-align:center">
            <p>This is my "Contact Me" Page!</p>
        </div>

       

       <ucl:ContactUsForm ID="ContactUsForm1" runat="server"  />

    </div>
</asp:Content>
<asp:Content ID="jQuery" ContentPlaceHolderID="jQueryPlaceHolder" runat="server">
    <%--<input id="Button1" type="button" value="button" />--%>
   <%-- <script>
        $(document).ready(function () {
            //var box1 = $('#Main_ContactUsForm1_Wizard1_FirstNameTextBox').css('background-color', 'LightGreen')
            //if(box1.)
            //box1.css('background-color', 'LightGreen')
            //$("input").css
                //.animate({ width: '100px', height: '800px' })
            // Remainder of the code skipped
        });
        //$('#Button1').click(function() {
        //    $('#Button1').css('background-color', 'red')
        //    .animate({ width: '100px', height: '800px' })
        //});
    </script>--%>
</asp:Content>

<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact</title>
    <link href="../Content/Test.css" type="text/css" rel="stylesheet" />
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css"/>

    <script type="text/javascript" src="Scripts/jquery-1.10.2.js"></script>
    <script src="../Scripts/Test.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="text-align:center" class="jumbotron">Contact Me</h1>
            
            <div style="text-align:center">
                <p>This is my "ContactMe" Page!</p>
            </div>
            <asp:Wizard style="text-align:center" ID="Wizard1" runat="server" ActiveStepIndex="0" Height="400px" Width="75%">
            <WizardSteps>
                <asp:WizardStep runat="server" title="Contact Info"> 
                    <h5 style="text-align:center">First Name</h5>
                    <div style="text-align:center">
                        <asp:TextBox ID="FirstNameTextBox" runat="server"  OnTextChanged="FirstNameTextBox_TextChanged" style="text-align:center">First Name</asp:TextBox>
                     </div>
                    <h5 style="text-align:center">Last Name</h5>
                    <div style="text-align:center">
                        <asp:TextBox ID="LastNameTextBox" runat="server" OnTextChanged="LastNameTextBox_TextChanged" style="text-align:center">Last Name</asp:TextBox>
                    </div>

                    <h5 style="text-align:center">Phone Number</h5>
                    <div style="text-align:center">
                        <asp:TextBox ID="PhoneNumberTextBox" runat="server" TextMode="Phone" OnTextChanged="PhoneNumberTextBox_TextChanged" style="text-align:center">Phone #</asp:TextBox>
                    </div>

                    <h5 style="text-align:center">Email</h5>
                    <div style="text-align:center">
                        <asp:TextBox ID="EmailTextBox" runat="server" TextMode="Email" OnTextChanged="EmailTextBox_TextChanged" style="text-align:center">Email</asp:TextBox>
                    </div>

                    <h5 style="text-align:center">Best way to contact you?</h5>
                    <asp:RadioButtonList ID="ContactMethodRadioButtonList" runat="server" OnSelectedIndexChanged="ContactMethodRadioButtonList_SelectedIndexChanged">
                        <asp:ListItem Text="Email" 
                            Value="Email" 
                            Selected="False" />
                        <asp:ListItem Text="Phone" 
                            Value="Phone" 
                            Selected="False" />   
                    </asp:RadioButtonList>

                </asp:WizardStep>
                <asp:WizardStep runat="server" Title="Product Info"> 
                    <h5 style="text-align:center">What Products are you interested in?</h5>
                    <div style="text-align:left">
                        <asp:CheckBoxList ID="InterestsCheckBoxList"  runat="server" OnSelectedIndexChanged="InterestsCheckBoxList_SelectedIndexChanged">
                            <asp:ListItem Text="Sports" Value="Sports" Selected="False" />
                            <asp:ListItem Text="Pizza" Value="Pizza" Selected="False" />
                            <asp:ListItem Text="Video Games" Value="Video Games" Selected="False" />
                            <asp:ListItem Text="Stock Trading" Value="Stock Trading" Selected="False" /> 

                        </asp:CheckBoxList>
                    </div>
                </asp:WizardStep>
                <asp:WizardStep runat="server" Title="Comments" >
                    <h5 style="text-align:center">Comments</h5>
                    <asp:TextBox ID="Comments" runat="server" OnTextChanged="Comments_TextChanged" TextMode="MultiLine" Height="400px" Width="600px"></asp:TextBox>

                </asp:WizardStep>
                <asp:WizardStep runat="server" Title="Display">
                    <h5 style="text-align:left">In Summary: </h5>
                    <div style="text-align:left">
                        <p>Name: <asp:Label ID="NameLabel" runat="server" Text="NAME"/></p>
                        <p>Phone #: <asp:Label ID="PhoneNumberLabel" runat="server" Text="PHONE #"/></p>
                        <p>Email: <asp:Label ID="EmailLabel" runat="server" Text="NAME"/></p>
                        <p>Prefered Contact Method: <asp:Label ID="ContactMethodLabel" runat="server" Text=""/></p>
                        <p>You're Interested in: <asp:Label ID="InterestsLabel" runat="server" Text=""/></p>
                        <p>Comments:</p>
                        <p style="margin-left:20px"> <asp:Label ID="CommentsLabel" runat="server" Text=""/></p>
                    </div>
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
        </div>

        <footer> 
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
