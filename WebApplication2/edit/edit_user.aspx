<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="edit_user.aspx.cs" Inherits="Assighnment_5_Edit_UDP.Category.edit_user" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="user_id" DataValueField="user_id" AutoPostBack="True"></asp:DropDownList>
    <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:TeamCConnectionString %>' SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="user_id" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            user_id:
            <asp:Label Text='<%# Eval("user_id") %>' runat="server" ID="user_idLabel1" /><br />
            firstName:
            <asp:TextBox Text='<%# Bind("firstName") %>' runat="server" ID="firstNameTextBox" /><br />
            lastName:
            <asp:TextBox Text='<%# Bind("lastName") %>' runat="server" ID="lastNameTextBox" /><br />
            email:
            <asp:TextBox Text='<%# Bind("email") %>' runat="server" ID="emailTextBox" /><br />
            <asp:LinkButton runat="server" Text="更新" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="取消" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
        </EditItemTemplate>
        <InsertItemTemplate>
            user_id:
            <asp:TextBox Text='<%# Bind("user_id") %>' runat="server" ID="user_idTextBox" /><br />
            firstName:
            <asp:TextBox Text='<%# Bind("firstName") %>' runat="server" ID="firstNameTextBox" /><br />
            lastName:
            <asp:TextBox Text='<%# Bind("lastName") %>' runat="server" ID="lastNameTextBox" /><br />
            email:
            <asp:TextBox Text='<%# Bind("email") %>' runat="server" ID="emailTextBox" /><br />
            <asp:LinkButton runat="server" Text="插入" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="取消" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
        </InsertItemTemplate>
        <ItemTemplate>
            user_id:
            <asp:Label Text='<%# Eval("user_id") %>' runat="server" ID="user_idLabel" /><br />
            firstName:
            <asp:Label Text='<%# Bind("firstName") %>' runat="server" ID="firstNameLabel" /><br />
            lastName:
            <asp:Label Text='<%# Bind("lastName") %>' runat="server" ID="lastNameLabel" /><br />
            email:
            <asp:Label Text='<%# Bind("email") %>' runat="server" ID="emailLabel" /><br />
            <asp:LinkButton runat="server" Text="編輯" CommandName="Edit" ID="EditButton" CausesValidation="False" />&nbsp;<asp:LinkButton runat="server" Text="刪除" CommandName="Delete" ID="DeleteButton" CausesValidation="False" />&nbsp;<asp:LinkButton runat="server" Text="新增" CommandName="New" ID="NewButton" CausesValidation="False" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:TeamCConnectionString %>' DeleteCommand="DELETE FROM [Users] WHERE [user_id] = @user_id" InsertCommand="INSERT INTO [Users] ([user_id], [firstName], [lastName], [email]) VALUES (@user_id, @firstName, @lastName, @email)" SelectCommand="SELECT * FROM [Users] WHERE ([user_id] = @user_id)" UpdateCommand="UPDATE [Users] SET [firstName] = @firstName, [lastName] = @lastName, [email] = @email WHERE [user_id] = @user_id">
        <DeleteParameters>
            <asp:Parameter Name="user_id" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="user_id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="firstName" Type="String"></asp:Parameter>
            <asp:Parameter Name="lastName" Type="String"></asp:Parameter>
            <asp:Parameter Name="email" Type="String"></asp:Parameter>
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" Name="user_id" Type="Int32"></asp:ControlParameter>
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="firstName" Type="String"></asp:Parameter>
            <asp:Parameter Name="lastName" Type="String"></asp:Parameter>
            <asp:Parameter Name="email" Type="String"></asp:Parameter>
            <asp:Parameter Name="user_id" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" DataKeyNames="user_id" DataSourceID="SqlDataSource2" AllowSorting="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
        <Columns>
            <asp:BoundField DataField="user_id" HeaderText="user_id" ReadOnly="True" SortExpression="user_id"></asp:BoundField>
            <asp:BoundField DataField="firstName" HeaderText="firstName" SortExpression="firstName"></asp:BoundField>
            <asp:BoundField DataField="lastName" HeaderText="lastName" SortExpression="lastName"></asp:BoundField>
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email"></asp:BoundField>
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
    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:TeamCConnectionString %>' DeleteCommand="DELETE FROM [Users] WHERE [user_id] = @user_id" InsertCommand="INSERT INTO [Users] ([user_id], [firstName], [lastName], [email]) VALUES (@user_id, @firstName, @lastName, @email)" SelectCommand="SELECT * FROM [Users] WHERE ([user_id] = @user_id)" UpdateCommand="UPDATE [Users] SET [firstName] = @firstName, [lastName] = @lastName, [email] = @email WHERE [user_id] = @user_id">
        <DeleteParameters>
            <asp:Parameter Name="user_id" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="user_id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="firstName" Type="String"></asp:Parameter>
            <asp:Parameter Name="lastName" Type="String"></asp:Parameter>
            <asp:Parameter Name="email" Type="String"></asp:Parameter>
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" Name="user_id" Type="Int32"></asp:ControlParameter>
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="firstName" Type="String"></asp:Parameter>
            <asp:Parameter Name="lastName" Type="String"></asp:Parameter>
            <asp:Parameter Name="email" Type="String"></asp:Parameter>
            <asp:Parameter Name="user_id" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
