<%@ Page Title="Usuários" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="Diary.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <asp:Label ID="NewUserLabel" runat="server" Font-Bold="True" Font-Overline="True" Font-Size="26px" Font-Underline="True" ForeColor="Black" Text="Cadastrar novo usuário"></asp:Label>
    <br />
    <br />
    <asp:Label ID="NamelLabel" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="#333333" Text=".Nome"></asp:Label>
    <asp:TextBox ID="NameTextBox" runat="server" style="margin-left: 23px" Width="250px"></asp:TextBox>
    <asp:Label ID="NameExceptionLabel" runat="server" style="margin-left: 25px" Font-Bold="True" Font-Italic="True" Font-Overline="False" Font-Size="16px" ForeColor="#CC0000"></asp:Label>
    <br />
    <br />
    <asp:Label ID="EmailLabel" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="#333333" Text=".Email"></asp:Label>
    <asp:TextBox ID="EmailTextBox" runat="server" style="margin-left: 26px" TextMode="Email" Width="250px"></asp:TextBox>
    <asp:Label ID="EmailExceptionLabel" runat="server" style="margin-left: 25px" Font-Bold="True" Font-Italic="True" Font-Overline="False" Font-Size="16px" ForeColor="#CC0000"></asp:Label>
    <br />
    <br />
    <asp:Label ID="PasswordLabel" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="#333333" Text=".Senha"></asp:Label>
    <asp:TextBox ID="PasswordTextBox" runat="server" style="margin-left: 20px" TextMode="Password" Width="250px"></asp:TextBox>
    <asp:Label ID="PasswordExceptionLabel" runat="server" style="margin-left: 25px" Font-Bold="True" Font-Italic="True" Font-Overline="False" Font-Size="16px" ForeColor="#CC0000"></asp:Label>
    <br />
    <br />
    <asp:Button ID="ClearButton" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="White" style="margin-left: 80px" Text="Limpar" Width="100px" OnClick="ClearButton_Click" CssClass="btn btn-danger" />
    <asp:Button ID="AddButton" runat="server" Font-Bold="True" Font-Italic="False" ForeColor="White" style="margin-left: 54px" Text="Adicionar" Width="100px" OnClick="AddButton_Click" CssClass="btn btn-success" />
    <br />
    <br />
    <asp:Label ID="FeedbackLabel" style="margin-left: 75px" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="16px" ForeColor="#66FF66" Text="Usuário cadastrado com sucesso!" Visible="False"></asp:Label>
    <br />
    <br />
    <hr />
    <br />
    <asp:Label ID="RegistredUsersLabel" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="26px" Font-Underline="True" Text="Usuários cadastrados"></asp:Label>
    <asp:ListView ID="UsersListView" runat="server" DataKeyNames="ID" DataSourceID="DiaryDatabaseUsers">
        <AlternatingItemTemplate>
            <li style="background-color: #FFF8DC;">ID:
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                Email:
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                <br />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Excluir" />
            </li>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <li style="background-color: #008A8C;color: #FFFFFF;">ID:
                <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                Email:
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Atualizar" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
            </li>
        </EditItemTemplate>
        <EmptyDataTemplate>
            Nenhum dado foi retornado.
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <li style="">Email:
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Inserir" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Limpar" />
            </li>
        </InsertItemTemplate>
        <ItemSeparatorTemplate>
            <br />
        </ItemSeparatorTemplate>
        <ItemTemplate>
            <li style="background-color: #DCDCDC;color: #000000;">ID:
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                Email:
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                <br />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Excluir" />
            </li>
        </ItemTemplate>
        <LayoutTemplate>
            <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                <li runat="server" id="itemPlaceholder" />
            </ul>
            <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                <asp:DataPager ID="DataPager1" runat="server">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">ID:
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                Email:
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                <br />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Excluir" />
            </li>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="DiaryDatabaseUsers" runat="server" ConnectionString="<%$ ConnectionStrings:Diary.Database %>" DeleteCommand="DELETE FROM [MyUsers] WHERE [ID] = @ID" InsertCommand="INSERT INTO [MyUsers] ([Email], [Name]) VALUES (@Email, @Name)" SelectCommand="SELECT [ID], [Email], [Name] FROM [MyUsers]" UpdateCommand="UPDATE [MyUsers] SET [Email] = @Email, [Name] = @Name WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
</asp:Content>
