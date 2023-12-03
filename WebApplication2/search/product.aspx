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
                    <span class="input-group-text" id="addon-wrapping">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-car-front" viewBox="0 0 16 16">
                            <path d="M4 9a1 1 0 1 1-2 0 1 1 0 0 1 2 0m10 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0M6 8a1 1 0 0 0 0 2h4a1 1 0 1 0 0-2zM4.862 4.276 3.906 6.19a.51.51 0 0 0 .497.731c.91-.073 2.35-.17 3.597-.17 1.247 0 2.688.097 3.597.17a.51.51 0 0 0 .497-.731l-.956-1.913A.5.5 0 0 0 10.691 4H5.309a.5.5 0 0 0-.447.276" />
                            <path d="M2.52 3.515A2.5 2.5 0 0 1 4.82 2h6.362c1 0 1.904.596 2.298 1.515l.792 1.848c.075.175.21.319.38.404.5.25.855.715.965 1.262l.335 1.679c.033.161.049.325.049.49v.413c0 .814-.39 1.543-1 1.997V13.5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1-.5-.5v-1.338c-1.292.048-2.745.088-4 .088s-2.708-.04-4-.088V13.5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1-.5-.5v-1.892c-.61-.454-1-1.183-1-1.997v-.413a2.5 2.5 0 0 1 .049-.49l.335-1.68c.11-.546.465-1.012.964-1.261a.807.807 0 0 0 .381-.404l.792-1.848ZM4.82 3a1.5 1.5 0 0 0-1.379.91l-.792 1.847a1.8 1.8 0 0 1-.853.904.807.807 0 0 0-.43.564L1.03 8.904a1.5 1.5 0 0 0-.03.294v.413c0 .796.62 1.448 1.408 1.484 1.555.07 3.786.155 5.592.155 1.806 0 4.037-.084 5.592-.155A1.479 1.479 0 0 0 15 9.611v-.413c0-.099-.01-.197-.03-.294l-.335-1.68a.807.807 0 0 0-.43-.563 1.807 1.807 0 0 1-.853-.904l-.792-1.848A1.5 1.5 0 0 0 11.18 3z" />
                        </svg>
                    </span>
                    <asp:TextBox ID="TextBox18" runat="server" CssClass="form-control" Placeholder="產品ID" aria-label="產品ID" aria-describedby="addon-wrapping"></asp:TextBox>
                </div>
            </div>
            <div class="col">
                <div class="input-group flex-nowrap">
                    <span class="input-group-text">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-basket" viewBox="0 0 16 16">
                            <path d="M5.757 1.071a.5.5 0 0 1 .172.686L3.383 6h9.234L10.07 1.757a.5.5 0 1 1 .858-.514L13.783 6H15a1 1 0 0 1 1 1v1a1 1 0 0 1-1 1v4.5a2.5 2.5 0 0 1-2.5 2.5h-9A2.5 2.5 0 0 1 1 13.5V9a1 1 0 0 1-1-1V7a1 1 0 0 1 1-1h1.217L5.07 1.243a.5.5 0 0 1 .686-.172zM2 9v4.5A1.5 1.5 0 0 0 3.5 15h9a1.5 1.5 0 0 0 1.5-1.5V9zM1 7v1h14V7zm3 3a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3A.5.5 0 0 1 4 10m2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3A.5.5 0 0 1 6 10m2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3A.5.5 0 0 1 8 10m2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3a.5.5 0 0 1 .5-.5m2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3a.5.5 0 0 1 .5-.5" />
                        </svg>
                    </span>
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
                        <span class="input-group-text">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-globe-americas" viewBox="0 0 16 16">
                                <path d="M8 0a8 8 0 1 0 0 16A8 8 0 0 0 8 0M2.04 4.326c.325 1.329 2.532 2.54 3.717 3.19.48.263.793.434.743.484-.08.08-.162.158-.242.234-.416.396-.787.749-.758 1.266.035.634.618.824 1.214 1.017.577.188 1.168.38 1.286.983.082.417-.075.988-.22 1.52-.215.782-.406 1.48.22 1.48 1.5-.5 3.798-3.186 4-5 .138-1.243-2-2-3.5-2.5-.478-.16-.755.081-.99.284-.172.15-.322.279-.51.216-.445-.148-2.5-2-1.5-2.5.78-.39.952-.171 1.227.182.078.099.163.208.273.318.609.304.662-.132.723-.633.039-.322.081-.671.277-.867.434-.434 1.265-.791 2.028-1.12.712-.306 1.365-.587 1.579-.88A7 7 0 1 1 2.04 4.327Z" />
                            </svg>
                        </span>
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

