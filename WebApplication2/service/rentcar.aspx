<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="rentcar.aspx.cs" Inherits="Assignment_5_test.Service.rentcar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="pt-xxl-4 pb-xxl-4"></div>
    <div class="pt-xxl-4 pb-xxl-4"></div>
    <div class="container body-content">
        <h1 style="text-align: center">出租車輛</h1>
        <style>
            .center-container {
                text-align: center;
            }

            .gridview {
                display: inline-block;
                text-align: left;
            }

                .gridview td {
                    white-space: nowrap; /* 防止換行 */
                }

                .gridview .cell {
                    margin-bottom: 5px; /*加上空格*/
                }
        </style>

        <asp:GridView ID="GridView1" runat="server" Width="100%" DataSourceID="rentcarData" AutoGenerateColumns="False" DataKeyNames="product_id" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="product_id" HeaderText="product_id" ReadOnly="True" SortExpression="product_id" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:BoundField DataField="category_id" HeaderText="category_id" SortExpression="category_id" />
                <asp:BoundField DataField="payment" HeaderText="payment" SortExpression="payment" />
                <asp:BoundField DataField="location" HeaderText="location" SortExpression="location" />
                <asp:BoundField DataField="country" HeaderText="country" SortExpression="country" />
                <asp:BoundField DataField="condition" HeaderText="condition" SortExpression="condition" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:TemplateField HeaderText="RentLink" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:HyperLink ID="lnkBuy" runat="server" Text="我要租車!" NavigateUrl='<%# GetPurchaseUrl(Eval("product_id"), Eval("category_id")) %>'></asp:HyperLink>
                </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    </div>
    <asp:SqlDataSource ID="rentcarData" runat="server" ConnectionString="<%$ ConnectionStrings:TeamCConnectionString3 %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
</asp:Content>
