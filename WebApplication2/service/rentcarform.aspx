<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="rentcarform.aspx.cs" Inherits="WebApplication1.Service.rentcarform" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="pt-xxl-4"></div>
<div class="pt-xxl-4 pb-xxl-4"></div>
<img src=<%= ResolveUrl("~/image/7134128.png") %>  class="img-fluid" alt="...">
<div class="pt-xxl-4 pb-xxl-4"></div>
<h1 style="text-align: center">Renter Car Form</h1>
<div class="pt-xxl-4 pb-xxl-4"></div>
<div class="container body-content pt-4 pb-xl-4">
    <asp:Panel ID="panelContactForm" runat="server"><!-- 表格 -->


    <label for="Name">UsersID:</label><br/> <!-- buyer_id-->
    <asp:textbox type="text" id="users_id1" name="Users_id" runat="server" CssClass="disabledTextInput"></asp:textbox><br/>

    <label for="product_id">ProductID:</label><br /> <!-- product_id-->
    <asp:textbox type="text" id="product_id1" name="product_id" runat="server"></asp:textbox><br/>

    <label for="price">Category:</label><br/>   
    <asp:textbox type="text" ID="category1" runat="server"></asp:textbox><br/>

    <label for="email">Email:</label><br/>
    <asp:textbox type="text" id="email" name="email" runat="server"></asp:textbox><br/>

    <fieldset>
    <label for="driver">Need driver or not:</label><br/>
    <asp:RadioButtonList ID="rblDriver" runat="server">
        <asp:ListItem Text="Yes" Value="1" />
        <asp:ListItem Text="No" Value="0" />
    </asp:RadioButtonList>
    </fieldset>

    <label for="days">Days:</label><br/>   
    <asp:textbox type="text" id="days1" runat="server"></asp:textbox><br/>

    <label for="price">Price:</label>
    <asp:Button ID="Button1" runat="server" Text="Calculate" OnClick="calculate_Click" /><br/>
    <asp:textbox ID="price1" runat="server"></asp:textbox><br/>

    <label for="content">Note:</label><br/>
    <textarea id="content" name="content" ></textarea><br/>

    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
    <asp:Label ID="Label1" runat="server" Visible="false" ForeColor="Green"></asp:Label>
</asp:Panel>
    </div>
</asp:Content>
