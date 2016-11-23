<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ContactUsForm.ascx.cs" Inherits="Controls_ContactUsForm" %>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
<asp:Wizard style="text-align:center" ID="Wizard1" runat="server" ActiveStepIndex="0" Height="400px" Width="75%" OnFinishButtonClick="Wizard1_FinishButtonClick">
    <WizardSteps>
        <asp:WizardStep runat="server" title="Contact Info">
            <div style="text-align:center">
            <h5  >First Name</h5>
            <div  >
                <asp:TextBox ID="FirstNameTextBox" runat="server"  OnTextChanged="FirstNameTextBox_TextChanged"  ></asp:TextBox>
                <div style="color:red">
                    <asp:RequiredFieldValidator ID="Req_FirstName" runat="server" ControlToValidate="FirstNameTextBox" ErrorMessage="Enter Your First Name."></asp:RequiredFieldValidator>
                </div>
            </div>
            <h5  >Last Name</h5>
            <div  >
                <asp:TextBox ID="LastNameTextBox" runat="server" OnTextChanged="LastNameTextBox_TextChanged" ></asp:TextBox>
                <div style="color:red">
                    <asp:RequiredFieldValidator ID="Req_LastName" runat="server" ControlToValidate="LastNameTextBox" ErrorMessage="Enter Your Last Name."></asp:RequiredFieldValidator>
                </div>
            </div>

            <h5  >Phone Number</h5>
            <div  >
                <asp:TextBox ID="PhoneNumberTextBox" runat="server" TextMode="Phone" OnTextChanged="PhoneNumberTextBox_TextChanged"  ></asp:TextBox>
                <div style="color:red">
                    <asp:RequiredFieldValidator ID="Req_PhoneNumber" runat="server" ControlToValidate="PhoneNumberTextBox" ErrorMessage="Enter Your Phone Number."></asp:RequiredFieldValidator>
                </div>
            </div>

            <h5  >Email</h5>
            <div  >
                <asp:TextBox ID="EmailTextBox" runat="server" TextMode="Email" OnTextChanged="EmailTextBox_TextChanged"  ></asp:TextBox>
                <div style="color:red">
                    <asp:RequiredFieldValidator ID="Req_Email" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Enter Your Email."></asp:RequiredFieldValidator>
                </div>
            </div>

            <h5  >Best way to contact you?</h5>

            <div style="align-content:center; padding-left:50%" >
            <div style="width:200px; margin-left:-100px">
            <asp:RadioButtonList ID="ContactMethodRadioButtonList" runat="server" OnSelectedIndexChanged="ContactMethodRadioButtonList_SelectedIndexChanged" >
                <asp:ListItem Text="Email" 
                    Value="Email" 
                    Selected="False"/>
                <asp:ListItem Text="Phone" 
                    Value="Phone" 
                    Selected="False" />   
            </asp:RadioButtonList>
            </div>
            </div>
            </div>
        </asp:WizardStep>
        <asp:WizardStep runat="server" Title="Product Info"> 
            <h5  >What Products are you interested in?</h5>
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
            <h5  >Comments</h5>
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
</ContentTemplate>
</asp:UpdatePanel>
<asp:UpdateProgress ID="UpdateProgress1" AssociatedUpdatePanelID="UpdatePanel1" runat="server">
        <ProgressTemplate>
            <div class ="PleaseWait" style="text-align:center">
                <%--Please Wait...--%>
            </div>
        </ProgressTemplate>
    </asp:UpdateProgress>
<script>
    $(function()
    {
        $('form').bind('submit', function ()
        {
            if (!Page_IsValid)
            {
                HighlightTextBox("text");
                HighlightTextBox("tel");
                HighlightTextBox("email");
            }

        });
        function HighlightTextBox(textBoxType)
        {
            textBoxType = "input[type=" + textBoxType + "]";
            $(textBoxType).each(function () {
                if ($.trim($(this).val()) == "") {
                    $(this).css({
                        "border": "1px solid red",
                        "background": "#FFCECE"
                    }).animate({ opacity: 0.5, speed: 0.6 });
                }
                else
                {
                    $(this).css({
                        "border": "",
                        "background": "#b1ffad",
                        "opacity" : 1
                    });
                }
            });
        }
        function HighlightTextBoxBYID(ID)
        {
            textBoxType = ID;
            $(textBoxType).each(function () {
                if ($.trim($(this).val()) == '') {
                    $(this).css({
                        "border": "1px solid red",
                        "background": "#FFCECE"
                    }).animate({ opacity: 0.5, speed: 0.6 });
                }
                else {
                    $(this).css({
                        "border": "",
                        "background": "#b1ffad",
                        "opacity": 1
                    });
                }
            });
        }
    });
    //function pageLoad() {
    //    $('.Attention').animate({ width: '600px' }, 3000).
    //    animate({ width: '100px' }, 3000).fadeOut('slow');
    //}
</script>