<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication1.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
             <!--   <h2 id="title"><%: Title %>.</h2>  -->
        <h3>聯絡我們</h3>
            為了提供您最快速的服務，請您先瀏覽相關說明。若仍然無法回答您的問題請留下您的問題，我們將竭誠為您服務。<br/><br/><br/>
            TeamC Company<br/>
            106335 臺北市大安區基隆路 4 段 43 號<br/>
            No.43, Keelung Rd., Sec.4, Da'an Dist., Taipei City 106335, Taiwan (R.O.C.)<br/>
            Tel: 886-2-27333141<br/><br/>
        <asp:Panel ID="panelContactForm" runat="server">             <!-- 表格 -->
            <label for="Name">姓名:</label><br/>
            <input type="text" id="Name" name="Name" required /><br/>

            <label for="email">電子信箱:</label><br />
            <input type="text" id="email" name="email" required /><br/>

            <label for="phoneNumber">聯絡電話:</label><br/>
            <input type="tel" id="phoneNumber" name="phoneNumber" required /><br/>

            <label for="content">事由:</label><br/>
            <textarea id="content" name="content" required></textarea><br/> <!-- required必填寫-->
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            <asp:Label ID="lblMessage" runat="server" Visible="false" ForeColor="Green"></asp:Label>
        </asp:Panel>
<!--
        <address>
            <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
            <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
        </address> -->
    <div>
    <ul class="dropdown-menu">
  <li><span class="dropdown-item-text">Dropdown item text</span></li>
  <li><a class="dropdown-item" href="#">Action</a></li>
  <li><a class="dropdown-item" href="#">Another action</a></li>
  <li><a class="dropdown-item" href="#">Something else here</a></li>
</ul>
        </div>
    <div class="btn-group">
  <button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
    Right-aligned menu example
  </button>
  <ul class="dropdown-menu dropdown-menu-end">
    <li><button class="dropdown-item" type="button">Action</button></li>
    <li><button class="dropdown-item" type="button">Another action</button></li>
    <li><button class="dropdown-item" type="button">Something else here</button></li>
  </ul>
</div>
</asp:Content>
