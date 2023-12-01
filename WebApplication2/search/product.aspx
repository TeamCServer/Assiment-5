<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="WebApplication2.search.product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="pt-xxl-4 pb-xxl-4"></div>
    <div class="pt-xxl-4 pb-xxl-4"></div>
    <div class="pt-xxl-4 pb-xxl-4"></div>
    <h1 style="text-align: center">產品查詢</h1>
    <div class="pt-xxl-4 pb-xxl-4"></div>
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="input-group flex-nowrap">
                    <span class="input-group-text" id="addon-wrapping">@</span>
                    <asp:TextBox ID="TextBox18" runat="server" CssClass="form-control" Placeholder="產品ID" aria-label="產品ID" aria-describedby="addon-wrapping"></asp:TextBox>
                </div>
            </div>
            <div class="col">
                <div class="input-group flex-nowrap">
                    <span class="input-group-text">@</span>
                    <asp:TextBox ID="TextBox19" runat="server" CssClass="form-control" Placeholder="產品名稱" aria-label="Username" aria-describedby="addon-wrapping"></asp:TextBox>
                </div>
            </div>
            <div class="col">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" CssClass="form-select" AppendDataBoundItems="true" aria-label="Default select example">
                    <asp:ListItem Text="選擇付款方式" Value="" Selected="True"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col">
                <div class="col">
                    <div class="input-group flex-nowrap">
                        <span class="input-group-text">@</span>
                        <asp:TextBox ID="TextBox20" runat="server" CssClass="form-control" Placeholder="地址" aria-label="Username" aria-describedby="addon-wrapping"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="col-1">
                <asp:Button ID="Button1" runat="server" Text="查詢" CssClass="btn btn-primary" OnClick="Button1_Click" />
            </div>
        </div>

    </div>
    <div class="container body-content" style="width: 100%; overflow-y: auto;">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="product_id" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
            <Columns>
                <asp:BoundField DataField="product_id" HeaderText="product_id" ReadOnly="True" SortExpression="product_id">
                    <ItemStyle Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title">
                    <ItemStyle Width="800px" />
                </asp:BoundField>
                <asp:BoundField DataField="category_id" HeaderText="category_id" SortExpression="category_id">
                    <ItemStyle Width="120px" />
                </asp:BoundField>
                <asp:BoundField DataField="payment" HeaderText="payment" SortExpression="payment">
                    <ItemStyle Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="location" HeaderText="location" SortExpression="location">
                    <ItemStyle Width="120px" />
                </asp:BoundField>
                <asp:BoundField DataField="country" HeaderText="country" SortExpression="country">
                    <ItemStyle Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price">
                    <ItemStyle Width="80px" />
                </asp:BoundField>
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
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:TeamCConnectionString4 %>' ProviderName='<%$ ConnectionStrings:TeamCConnectionString4.ProviderName %>' SelectCommand="SELECT [product_id], [title], [category_id], [payment], [location], [country], [price] FROM [Products]"></asp:SqlDataSource>
</asp:Content>

