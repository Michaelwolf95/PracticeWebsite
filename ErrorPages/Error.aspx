<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Error.aspx.cs" Inherits="ErrorPages_Error"
Title="Error" MasterPageFile="~/MasterPages/MasterPage.master"%>

<asp:Content ID="Main_Content" ContentPlaceHolderID="Main" runat="server">
    <div>
        <h1 style="text-align:center" class="jumbotron">ERROR</h1>
            
        <hr />
        <div style="text-align:center">
            <p>
                ERROR 
                <asp:Label ID="ErrorNumber" runat="server"></asp:Label>
            </p>
            <p>
                <asp:Label ID="ErrorMessage" runat="server"></asp:Label>
            </p>
        </div>
     </div>
</asp:Content>