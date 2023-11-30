<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LogOn.aspx.cs" Inherits="Assignment_5_test.LogON" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <img src="image/9701.png" class="d-block w-100" alt="...">

    <div class="module">       
        <div class="form">
            <asp:Label ID="Labell" runat="server" Text="Userid"></asp:Label>
            <br/>
            <asp:TextBox ID="Textbox1" runat="server" class="midtb"></asp:TextBox>
            <br/>
            <asp:Label ID="Label2" runat="server" Text="UserName"></asp:Label>
            <br/>
            <asp:TextBox ID="Textbox2" runat="server" class="midtb"></asp:TextBox>
            <br/>
            <br/>
            <asp:Button ID="Button1" runat="server" Text="LogOn" class="midbt" OnClick="Button1_Click"  ></asp:Button> 
        </div>
    </div>

</asp:Content>
