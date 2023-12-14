<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication1.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <div class="pt-xxl-4 pb-xxl-4"></div>
        <div class="pt-xxl-4 pb-xxl-4"></div>
        <div class="pt-xxl-4 pb-xxl-4"></div>
        <div class="container body-content">
            <!--   <h2 id="title"><%: Title %>.</h2>  -->
            <h3>Cantact Us</h3>
            In order to provide you with the quickest service, please browse through the relevant instructions first. 
            If you still can't find the answer to your question, please leave your query, and we'll be dedicated to 
            assisting you.<br />
            <br />
            <br />
            TeamC Company<br />
            No.43, Keelung Rd., Sec.4, Da'an Dist., Taipei City 106335, Taiwan (R.O.C.)<br />
            Tel: 886-2-27333141<br />
            <br />
            <asp:Panel ID="panelContactForm" runat="server">
                <!-- 表格 -->
                <label for="Name">Name:</label><br />
                <input type="text" id="Name" name="Name" required /><br />

                <label for="email">Email:</label><br />
                <input type="text" id="email" name="email" required /><br />

                <label for="phoneNumber">Phone:</label><br />
                <input type="tel" id="phoneNumber" name="phoneNumber" required /><br />

                <label for="content">Content:</label><br />
                <textarea id="content" name="content" required></textarea><br />
                <!-- required必填寫-->
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                <asp:Label ID="lblMessage" runat="server" Visible="false" ForeColor="Green"></asp:Label>
            </asp:Panel>
            <!--
        <address>
            <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
            <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
        </address> -->

            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3615.6129918740653!2d121.53798597638497!3d25.013263139124255!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3442aa2176c4c0ad%3A0x90db5e44ee29f455!2z5ZyL56uL6Ie654Gj56eR5oqA5aSn5a24!5e0!3m2!1szh-TW!2stw!4v1701665452274!5m2!1szh-TW!2stw" width="100%" height="650" style="border: 0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade" class="pt-lg-4 pb-lg-4"></iframe>
            <div class="pt-xxl-4 pb-xxl-4"></div>
            <div class="pt-xxl-4 pb-xxl-4"></div>
        </div>
    </main>
</asp:Content>
