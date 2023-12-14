<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="edit_product2.aspx.cs" Inherits="Assighnment_5_Edit_UDP.Category.edit_product2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="pt-xxl-4"></div>
    <div class="pt-xxl-4 pb-xxl-4"></div>
    <img src='<%= ResolveUrl("~/image/7134128.png") %>' class="img-fluid" alt="...">
    <div class="pt-xxl-4 pb-xxl-4"></div>
    <h1 style="text-align: center">Edit Product Imformation</h1>
    <div class="pt-xxl-4 pb-xxl-4"></div>
    <div class="container body-content">
        <h1 style="text-align: center">Edit Product
        </h1>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="product_id" DataValueField="product_id" AutoPostBack="True">
        </asp:DropDownList>
        <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:TeamCConnectionString %>' SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="product_id" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                product_id:
            <asp:Label Text='<%# Eval("product_id") %>' runat="server" ID="product_idLabel1" /><br /><br />
                title:
            <asp:TextBox Text='<%# Bind("title") %>' runat="server" ID="titleTextBox" /><br /><br />
                category_id:
            <asp:TextBox Text='<%# Bind("category_id") %>' runat="server" ID="category_idTextBox" /><br /><br />
                payment:
            <asp:TextBox Text='<%# Bind("payment") %>' runat="server" ID="paymentTextBox" /><br /><br />
                location:
            <asp:TextBox Text='<%# Bind("location") %>' runat="server" ID="locationTextBox" /><br /><br />
                country:
            <asp:TextBox Text='<%# Bind("country") %>' runat="server" ID="countryTextBox" /><br /><br />
                condition:
            <asp:TextBox Text='<%# Bind("condition") %>' runat="server" ID="conditionTextBox" /><br /><br />
                price:
            <asp:TextBox Text='<%# Bind("price") %>' runat="server" ID="priceTextBox" /><br /><br />
                <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="取消" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
            </EditItemTemplate>
            <InsertItemTemplate>
                product_id:
            <asp:TextBox Text='<%# Bind("product_id") %>' runat="server" ID="product_idTextBox" /><br /><br />
                title:
            <asp:TextBox Text='<%# Bind("title") %>' runat="server" ID="titleTextBox" /><br /><br />
                category_id:
            <asp:TextBox Text='<%# Bind("category_id") %>' runat="server" ID="category_idTextBox" /><br /><br />
                payment:
            <asp:TextBox Text='<%# Bind("payment") %>' runat="server" ID="paymentTextBox" /><br /><br />
                location:
            <asp:TextBox Text='<%# Bind("location") %>' runat="server" ID="locationTextBox" /><br /><br />
                country:
            <asp:TextBox Text='<%# Bind("country") %>' runat="server" ID="countryTextBox" /><br /><br />
                condition:
            <asp:TextBox Text='<%# Bind("condition") %>' runat="server" ID="conditionTextBox" /><br /><br />
                price:
            <asp:TextBox Text='<%# Bind("price") %>' runat="server" ID="priceTextBox" /><br /><br />
                <asp:LinkButton runat="server" Text="Add" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="取消" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
            </InsertItemTemplate>
            <ItemTemplate>
                product_id:
            <asp:Label Text='<%# Eval("product_id") %>' runat="server" ID="product_idLabel" /><br /><br />
                title:
            <asp:Label Text='<%# Bind("title") %>' runat="server" ID="titleLabel" /><br /><br />
                category_id:
            <asp:Label Text='<%# Bind("category_id") %>' runat="server" ID="category_idLabel" /><br /><br />
                payment:
            <asp:Label Text='<%# Bind("payment") %>' runat="server" ID="paymentLabel" /><br /><br />
                location:
            <asp:Label Text='<%# Bind("location") %>' runat="server" ID="locationLabel" /><br /><br />
                country:
            <asp:Label Text='<%# Bind("country") %>' runat="server" ID="countryLabel" /><br /><br />
                condition:
            <asp:Label Text='<%# Bind("condition") %>' runat="server" ID="conditionLabel" /><br /><br />
                price:
            <asp:Label Text='<%# Bind("price") %>' runat="server" ID="priceLabel" /><br /><br />
                <asp:LinkButton runat="server" Text="Edit" CommandName="Edit" ID="EditButton" CausesValidation="False" />&nbsp;<asp:LinkButton runat="server" Text="刪除" CommandName="Delete" ID="DeleteButton" CausesValidation="False" />&nbsp;<asp:LinkButton runat="server" Text="新增" CommandName="New" ID="NewButton" CausesValidation="False" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:TeamCConnectionString %>' DeleteCommand="DELETE FROM [Products] WHERE [product_id] = @product_id" InsertCommand="INSERT INTO [Products] ([product_id], [title], [category_id], [payment], [location], [country], [condition], [price]) VALUES (@product_id, @title, @category_id, @payment, @location, @country, @condition, @price)" SelectCommand="SELECT * FROM [Products] WHERE ([product_id] = @product_id)" UpdateCommand="UPDATE [Products] SET [title] = @title, [category_id] = @category_id, [payment] = @payment, [location] = @location, [country] = @country, [condition] = @condition, [price] = @price WHERE [product_id] = @product_id">
            <DeleteParameters>
                <asp:Parameter Name="product_id" Type="Int32"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="product_id" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="title" Type="String"></asp:Parameter>
                <asp:Parameter Name="category_id" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="payment" Type="String"></asp:Parameter>
                <asp:Parameter Name="location" Type="String"></asp:Parameter>
                <asp:Parameter Name="country" Type="String"></asp:Parameter>
                <asp:Parameter Name="condition" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="price" Type="Double"></asp:Parameter>
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" Name="product_id" Type="Int32"></asp:ControlParameter>
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="title" Type="String"></asp:Parameter>
                <asp:Parameter Name="category_id" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="payment" Type="String"></asp:Parameter>
                <asp:Parameter Name="location" Type="String"></asp:Parameter>
                <asp:Parameter Name="country" Type="String"></asp:Parameter>
                <asp:Parameter Name="condition" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="price" Type="Double"></asp:Parameter>
                <asp:Parameter Name="product_id" Type="Int32"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="False" DataKeyNames="product_id" DataSourceID="SqlDataSource4" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" AllowSorting="True">
            <Columns>
                <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                <asp:BoundField DataField="product_id" HeaderText="product_id" ReadOnly="True" SortExpression="product_id"></asp:BoundField>
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title"></asp:BoundField>
                <asp:BoundField DataField="category_id" HeaderText="category_id" SortExpression="category_id"></asp:BoundField>
                <asp:BoundField DataField="payment" HeaderText="payment" SortExpression="payment"></asp:BoundField>
                <asp:BoundField DataField="location" HeaderText="location" SortExpression="location"></asp:BoundField>
                <asp:BoundField DataField="country" HeaderText="country" SortExpression="country"></asp:BoundField>
                <asp:BoundField DataField="condition" HeaderText="condition" SortExpression="condition"></asp:BoundField>
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price"></asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black"></FooterStyle>

            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White"></HeaderStyle>

            <PagerStyle HorizontalAlign="Right" BackColor="White" ForeColor="Black"></PagerStyle>

            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

            <SortedAscendingCellStyle BackColor="#F7F7F7"></SortedAscendingCellStyle>

            <SortedAscendingHeaderStyle BackColor="#4B4B4B"></SortedAscendingHeaderStyle>

            <SortedDescendingCellStyle BackColor="#E5E5E5"></SortedDescendingCellStyle>

            <SortedDescendingHeaderStyle BackColor="#242121"></SortedDescendingHeaderStyle>
        </asp:GridView>
        <asp:SqlDataSource runat="server" ID="SqlDataSource4" ConnectionString='<%$ ConnectionStrings:TeamCConnectionString %>' DeleteCommand="DELETE FROM [Products] WHERE [product_id] = @product_id" InsertCommand="INSERT INTO [Products] ([product_id], [title], [category_id], [payment], [location], [country], [condition], [price]) VALUES (@product_id, @title, @category_id, @payment, @location, @country, @condition, @price)" SelectCommand="SELECT * FROM [Products] WHERE ([product_id] = @product_id)" UpdateCommand="UPDATE [Products] SET [title] = @title, [category_id] = @category_id, [payment] = @payment, [location] = @location, [country] = @country, [condition] = @condition, [price] = @price WHERE [product_id] = @product_id">
            <DeleteParameters>
                <asp:Parameter Name="product_id" Type="Int32"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="product_id" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="title" Type="String"></asp:Parameter>
                <asp:Parameter Name="category_id" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="payment" Type="String"></asp:Parameter>
                <asp:Parameter Name="location" Type="String"></asp:Parameter>
                <asp:Parameter Name="country" Type="String"></asp:Parameter>
                <asp:Parameter Name="condition" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="price" Type="Double"></asp:Parameter>
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" Name="product_id" Type="Int32"></asp:ControlParameter>
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="title" Type="String"></asp:Parameter>
                <asp:Parameter Name="category_id" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="payment" Type="String"></asp:Parameter>
                <asp:Parameter Name="location" Type="String"></asp:Parameter>
                <asp:Parameter Name="country" Type="String"></asp:Parameter>
                <asp:Parameter Name="condition" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="price" Type="Double"></asp:Parameter>
                <asp:Parameter Name="product_id" Type="Int32"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:TeamCConnectionString %>' DeleteCommand="DELETE FROM [Products] WHERE [product_id] = @product_id" InsertCommand="INSERT INTO [Products] ([product_id], [title], [category_id], [payment], [location], [country], [condition], [price]) VALUES (@product_id, @title, @category_id, @payment, @location, @country, @condition, @price)" SelectCommand="SELECT * FROM [Products] WHERE ([product_id] = @product_id)" UpdateCommand="UPDATE [Products] SET [title] = @title, [category_id] = @category_id, [payment] = @payment, [location] = @location, [country] = @country, [condition] = @condition, [price] = @price WHERE [product_id] = @product_id">
            <DeleteParameters>
                <asp:Parameter Name="product_id" Type="Int32"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="product_id" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="title" Type="String"></asp:Parameter>
                <asp:Parameter Name="category_id" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="payment" Type="String"></asp:Parameter>
                <asp:Parameter Name="location" Type="String"></asp:Parameter>
                <asp:Parameter Name="country" Type="String"></asp:Parameter>
                <asp:Parameter Name="condition" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="price" Type="Double"></asp:Parameter>
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" Name="product_id" Type="Int32"></asp:ControlParameter>
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="title" Type="String"></asp:Parameter>
                <asp:Parameter Name="category_id" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="payment" Type="String"></asp:Parameter>
                <asp:Parameter Name="location" Type="String"></asp:Parameter>
                <asp:Parameter Name="country" Type="String"></asp:Parameter>
                <asp:Parameter Name="condition" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="price" Type="Double"></asp:Parameter>
                <asp:Parameter Name="product_id" Type="Int32"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    <div class="pt-xxl-4 pb-xxl-4"></div><div class="pt-xxl-4 pb-xxl-4"></div><div class="pt-xxl-4 pb-xxl-4"></div>
</asp:Content>
