<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="rentcarform.aspx.cs" Inherits="WebApplication1.Service.rentcarform" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="panelContactForm" runat="server">             <!-- 表格 -->

    <label for="Name" class="bg-primary">UsersID:</label><br/> <!-- buyer_id-->
    <asp:textbox type="text" id="users_id1" name="Users_id" runat="server" CssClass="bg-primary"></asp:textbox><br/>

    <label for="product_id">ProductID:</label><br /> <!-- product_id-->
    <asp:textbox type="text" id="product_id1" name="product_id" runat="server"></asp:textbox><br/>

    <label for="email">聯絡信箱:</label><br/>
    <asp:textbox type="text" id="email" name="email" runat="server"></asp:textbox><br/>

    <label for="price">金額:</label><br/>   
    <asp:textbox ID="price1" runat="server"></asp:textbox><br/>

    <label for="content">備註:</label><br/>
    <textarea id="content" name="content" required></textarea><br/> <!-- required必填寫-->

    <ItemTemplate>
    <asp:HyperLink ID="lnkBuy" runat="server" Text="租車!" NavigateUrl='<%# GetPurchaseUrl(Eval("product_id"), Eval("price")) %>'></asp:HyperLink>
    </ItemTemplate>
  
    <asp:Label ID="lblMessage" runat="server" Visible="false" ForeColor="Green"></asp:Label>
</asp:Panel>
</asp:Content>
