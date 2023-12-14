<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="edit_driver.aspx.cs" Inherits="Assighnment_5_Edit_UDP.Category.edit_driver1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="pt-xxl-4 pb-xl-4"></div>
    <div class="pt-xxl-4 pb-xl-4"></div>
    <div class="pt-xxl-4 pb-xl-4"></div>
    <div class="container body-content pt-4 pb-xl-4">
        <h1 style="text-align: center">Edit Driver Imformation
        </h1>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="driver_id" DataValueField="driver_id" AutoPostBack="True"></asp:DropDownList>
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:TeamCConnectionString %>' SelectCommand="SELECT [driver_id] FROM [Driver]"></asp:SqlDataSource>

        <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:TeamCConnectionString %>' SelectCommand="SELECT * FROM [Driver] WHERE ([driver_id] = @driver_id)" DeleteCommand="DELETE FROM [Driver] WHERE [driver_id] = @driver_id" InsertCommand="INSERT INTO [Driver] ([driver_id], [age], [price], [phoneNumber]) VALUES (@driver_id, @age, @price, @phoneNumber)" UpdateCommand="UPDATE [Driver] SET [age] = @age, [price] = @price, [phoneNumber] = @phoneNumber WHERE [driver_id] = @driver_id">
            <DeleteParameters>
                <asp:Parameter Name="driver_id" Type="Int32"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="driver_id" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="age" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="price" Type="Double"></asp:Parameter>
                <asp:Parameter Name="phoneNumber" Type="String"></asp:Parameter>
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" Name="driver_id" Type="Int32"></asp:ControlParameter>
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="age" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="price" Type="Double"></asp:Parameter>
                <asp:Parameter Name="phoneNumber" Type="String"></asp:Parameter>
                <asp:Parameter Name="driver_id" Type="Int32"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="driver_id" DataSourceID="SqlDataSource3" DefaultMode="Insert">
            <EditItemTemplate>
                driver_id:
            <asp:Label Text='<%# Eval("driver_id") %>' runat="server" ID="driver_idLabel1" /><br />
                age:
            <asp:TextBox Text='<%# Bind("age") %>' runat="server" ID="ageTextBox" /><br />
                price:
            <asp:TextBox Text='<%# Bind("price") %>' runat="server" ID="priceTextBox" /><br />
                phoneNumber:
            <asp:TextBox Text='<%# Bind("phoneNumber") %>' runat="server" ID="phoneNumberTextBox" /><br />
                <asp:LinkButton runat="server" Text="更新" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="取消" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
            </EditItemTemplate>
            <InsertItemTemplate>
                driver_id:
            <asp:TextBox Text='<%# Bind("driver_id") %>' runat="server" ID="driver_idTextBox" /><br />
                age:
            <asp:TextBox Text='<%# Bind("age") %>' runat="server" ID="ageTextBox" /><br />
                price:
            <asp:TextBox Text='<%# Bind("price") %>' runat="server" ID="priceTextBox" /><br />
                phoneNumber:
            <asp:TextBox Text='<%# Bind("phoneNumber") %>' runat="server" ID="phoneNumberTextBox" /><br />
                <asp:LinkButton runat="server" Text="Add" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
            </InsertItemTemplate>
            <ItemTemplate>
                driver_id:
            <asp:Label Text='<%# Eval("driver_id") %>' runat="server" ID="driver_idLabel" /><br />
                age:
            <asp:Label Text='<%# Bind("age") %>' runat="server" ID="ageLabel" /><br />
                price:
            <asp:Label Text='<%# Bind("price") %>' runat="server" ID="priceLabel" /><br />
                phoneNumber:
            <asp:Label Text='<%# Bind("phoneNumber") %>' runat="server" ID="phoneNumberLabel" /><br />

                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edir" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Add" />

            </ItemTemplate>
        </asp:FormView>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" DataKeyNames="driver_id" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" AllowSorting="True">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="driver_id" HeaderText="driver_id" ReadOnly="True" SortExpression="driver_id"></asp:BoundField>
                <asp:BoundField DataField="age" HeaderText="age" SortExpression="age"></asp:BoundField>
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price"></asp:BoundField>
                <asp:BoundField DataField="phoneNumber" HeaderText="phoneNumber" SortExpression="phoneNumber"></asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <br />
        <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:TeamCConnectionString %>' SelectCommand="SELECT * FROM [Driver] WHERE ([driver_id] = @driver_id)" DeleteCommand="DELETE FROM [Driver] WHERE [driver_id] = @driver_id" InsertCommand="INSERT INTO [Driver] ([driver_id], [age], [price], [phoneNumber]) VALUES (@driver_id, @age, @price, @phoneNumber)" UpdateCommand="UPDATE [Driver] SET [age] = @age, [price] = @price, [phoneNumber] = @phoneNumber WHERE [driver_id] = @driver_id">
            <DeleteParameters>
                <asp:Parameter Name="driver_id" Type="Int32"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="driver_id" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="age" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="price" Type="Double"></asp:Parameter>
                <asp:Parameter Name="phoneNumber" Type="String"></asp:Parameter>
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="driver_id" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="age" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="price" Type="Double"></asp:Parameter>
                <asp:Parameter Name="phoneNumber" Type="String"></asp:Parameter>
                <asp:Parameter Name="driver_id" Type="Int32"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
