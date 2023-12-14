<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="buycar.aspx.cs" Inherits="Assignment_5_test.Service.buycar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="pt-xxl-4 pb-xxl-4"></div>
    <div class="pt-xxl-4 pb-xxl-4"></div>
    <div class="container body-content">
        <!-- 購買車輛 -->
        <h1 style="text-align: center">Vehicles Available for Sale</h1>
        <style>
            .center-container {
                text-align: center;
            }

            .gridview {
                display: inline-block;
                text-align: left;
            }

                .gridview .cell {
                    margin-bottom: 5px; /*加上空格*/
                }
        </style>
        <div class="center-container">
            <asp:GridView ID="GridView1" runat="server" DataSourceID="BuyCarData" AutoGenerateColumns="False" DataKeyNames="product_id" Width="100%" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
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
                            <asp:HyperLink ID="lnkBuy" runat="server" Text="Buy Now!" NavigateUrl='<%# GetPurchaseUrl(Eval("product_id"), Eval("price")) %>'></asp:HyperLink>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" Width="80px"></ItemStyle>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#999999"></EditRowStyle>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="Center"></FooterStyle>
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="Center"></HeaderStyle>
                <PagerStyle HorizontalAlign="Center" BackColor="#284775" ForeColor="White"></PagerStyle>
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" Height="70px" HorizontalAlign="Center"></RowStyle>
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" HorizontalAlign="Center"></SelectedRowStyle>
                <SortedAscendingCellStyle BackColor="#E9E7E2"></SortedAscendingCellStyle>
                <SortedAscendingHeaderStyle BackColor="#506C8C"></SortedAscendingHeaderStyle>
                <SortedDescendingCellStyle BackColor="#FFFDF8"></SortedDescendingCellStyle>
                <SortedDescendingHeaderStyle BackColor="#6F8DAE"></SortedDescendingHeaderStyle>
            </asp:GridView>
        </div>
    </div>
    <asp:SqlDataSource ID="BuyCarData" runat="server" ConnectionString="<%$ ConnectionStrings:TeamCConnectionString3 %>" SelectCommand="SELECT DISTINCT * FROM [Products]"></asp:SqlDataSource>
</asp:Content>
