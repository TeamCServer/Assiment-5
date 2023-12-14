<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LogOn.aspx.cs" Inherits="Assignment_5_test.LogON" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="pt-xxl-4 pb-xxl-4"></div>
    <div class="pt-xxl-4 pb-xxl-4"></div>
    <div class="pt-xxl-4 pb-xxl-4"></div>
    <div class="text-center">
        <img src="image/2710477.png " class="rounded p-xxl-4" style="max-width: 30%;" alt="...">
    </div>
    <div class="pt-xxl-4 pb-xxl-4"></div>
    <div class="pt-xxl-4 pb-4"></div>
    <div class="module text-center">
        <asp:Label ID="Labell" runat="server" Text="Userid" CssClass="text-center"></asp:Label>
        <br />
        <asp:TextBox ID="Textbox1" runat="server" class="midtb" TextMode="Password"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="UserName"></asp:Label>
        <br />
        <asp:TextBox ID="Textbox2" runat="server" class="midtb"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Log In" class="midbt btn-primary" OnClick="Button1_Click"></asp:Button>
    </div>
    <div class="pt-xxl-4 pb-xxl-4"></div>
    <div class="pt-xxl-4 pb-xxl-4"></div>
    
</asp:Content>
