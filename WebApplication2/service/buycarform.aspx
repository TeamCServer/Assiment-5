<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="buycarform.aspx.cs" Inherits="Assignment_5_test.Service.buycarform" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
        <div class="pt-xxl-4"></div>
    <div class="pt-xxl-4 pb-xxl-4"></div>
    <img src='<%= ResolveUrl("~/image/7134128.png") %>' class="img-fluid" alt="...">
    <div class="pt-xxl-4 pb-xxl-4"></div>
    <h1 style="text-align: center">Buy Car Form</h1>
    <div class="pt-xxl-4 pb-xxl-4"></div>
    <div class="container body-content pt-4 pb-xl-4">
        <!-- 我要從buycar.aspx裡面獲得金額跟產品ID -->
        <asp:Panel ID="panelContactForm" runat="server">
            <!-- 表格 -->

            <label for="Name">UsersID:</label><br />
            <!-- buyer_id-->
            <asp:TextBox type="text" ID="users_id1" name="Users_id" runat="server" ></asp:TextBox ><br />

            <label for="product_id">ProductID:</label><br />
            <!-- product_id-->
            <asp:TextBox type="text" ID="product_id1" name="product_id" runat="server"></asp:TextBox><br />

            <label for="email">Email:</label><br />
            <asp:TextBox type="text" ID="email" name="email" runat="server"></asp:TextBox><br />

            <label for="price">Price:</label><br />
            <asp:TextBox ID="price1" runat="server" ></asp:TextBox><br />

            <label for="content">Note:</label><br />
            <textarea id="content" name="content" required></textarea><br />
            <!-- required必填寫-->
            
           
            

        </asp:Panel>
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        <asp:Label ID="Label1" runat="server" Visible="false" ForeColor="Green"></asp:Label>
    </div>
</asp:Content>
