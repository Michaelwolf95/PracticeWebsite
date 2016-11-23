<%@ Page Language="C#" Title="TEST PAGE" AutoEventWireup="true" CodeFile="TEST PAGE.aspx.cs" Inherits="SubPages_About" MasterPageFile="~/MasterPages/MasterPage.master"%>


<asp:Content ID="Main_Content" ContentPlaceHolderID="Main" runat="server">
    
    <div>

        <div class="container">
  <input type="radio" name="tabs" id="tab_2"/>
  <label for="tab_2">
    <div class="content">Hello, I'm #</div>
  </label>
  <input type="radio" name="tabs" id="tab_1"/>
  <label for="tab_1">
    <div class="content">Hello, I'm #</div>
  </label>
  <input type="radio" name="tabs" id="tab_0"/>
  <label for="tab_0">
    <div class="content">Hello, I'm #</div>
  </label>
</div>


        <%--<h1 style="text-align:center" class="jumbotron">About Me</h1>
        <hr />
        <div style="text-align:center">
            <p>
                This is my "TEST" Page!
            </p>
            <p>
                
            </p>
        </div>
     </div>--%>
</asp:Content>
