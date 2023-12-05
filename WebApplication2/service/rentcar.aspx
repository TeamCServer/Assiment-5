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

        <asp:GridView ID="GridView1" runat="server" Width="100%" DataSourceID="rentcarData" AutoGenerateColumns="False" DataKeyNames="product_id"  ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="product_id" HeaderText="product_id" ReadOnly="True" SortExpression="product_id">
                    <ItemStyle Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title">
                    <ItemStyle Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="category_id" HeaderText="category_id" SortExpression="category_id">
                    <ItemStyle Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="payment" HeaderText="payment" SortExpression="payment">
                    <ItemStyle Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="location" HeaderText="location" SortExpression="location">
                    <ItemStyle Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="country" HeaderText="country" SortExpression="country">
                    <ItemStyle Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="condition" HeaderText="condition" SortExpression="condition">
                    <ItemStyle Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price">
                    <ItemStyle Width="100px" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="RentLink" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:HyperLink ID="lnkBuy" runat="server" Text="我要租車!" NavigateUrl='<%# GetPurchaseUrl(Eval("product_id"), Eval("category_id")) %>'></asp:HyperLink>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center"  Width="100px"></ItemStyle>
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
    <asp:SqlDataSource ID="rentcarData" runat="server" ConnectionString="<%$ ConnectionStrings:TeamCConnectionString3 %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
</asp:Content>
