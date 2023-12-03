﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="rentcarform.aspx.cs" Inherits="WebApplication1.Service.rentcarform" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="panelContactForm" runat="server">             <!-- 表格 -->


    <label for="Name" class="bg-primary">UsersID:</label><br/> <!-- buyer_id-->
    <asp:textbox type="text" id="users_id1" name="Users_id" runat="server" CssClass="bg-primary"></asp:textbox><br/>

    <label for="product_id">ProductID:</label><br /> <!-- product_id-->
    <asp:textbox type="text" id="product_id1" name="product_id" runat="server"></asp:textbox><br/>

    <label for="price">類別編號:</label><br/>   
    <asp:textbox type="text" ID="category1" runat="server"></asp:textbox><br/>

    <label for="email">聯絡信箱:</label><br/>
    <asp:textbox type="text" id="email" name="email" runat="server"></asp:textbox><br/>

    <fieldset>
    <label for="driver">是否需要司機:</label><br/>
    <asp:RadioButtonList ID="rblDriver" runat="server">
        <asp:ListItem Text="是" Value="1" />
        <asp:ListItem Text="否" Value="0" />
    </asp:RadioButtonList>
    </fieldset>

    <label for="days">天數:</label><br/>   
    <asp:textbox type="text" id="days1" runat="server"></asp:textbox><br/>

    <label for="price">金額:</label>
    <asp:Button ID="Button1" runat="server" Text="計算" OnClick="calculate_Click" /><br/>
    <asp:textbox ID="price1" runat="server"></asp:textbox><br/>

    <label for="content">備註:</label><br/>
    <textarea id="content" name="content" ></textarea><br/>

    <asp:Button ID="btnSubmit" runat="server" Text="送出" OnClick="btnSubmit_Click" />
    <asp:Label ID="Label1" runat="server" Visible="false" ForeColor="Green"></asp:Label>
</asp:Panel>
</asp:Content>
