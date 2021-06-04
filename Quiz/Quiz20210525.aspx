<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Quiz20210525.aspx.cs" Inherits="Quiz.Quiz20210525" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>          
            <asp:SqlDataSource ID="sds_Stu" runat="server" ConnectionString="<%$ ConnectionStrings:SQLDataSourceGrade %>" DeleteCommand="DELETE FROM [Stu] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Stu] ([Name], [Chi], [Math], [Eng]) VALUES (@Name, @Chi, @Math, @Eng)" SelectCommand="SELECT * FROM [Stu]" UpdateCommand="UPDATE [Stu] SET [Name] = @Name, [Chi] = @Chi, [Math] = @Math, [Eng] = @Eng WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Chi" Type="Int32" />
                    <asp:Parameter Name="Math" Type="Int32" />
                    <asp:Parameter Name="Eng" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Chi" Type="Int32" />
                    <asp:Parameter Name="Math" Type="Int32" />
                    <asp:Parameter Name="Eng" Type="Int32" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="CalSum" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="sds_Stu" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnRowCommand="CalSum_RowCommand" >
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Chi" HeaderText="Chi" SortExpression="Chi" />
                    <asp:BoundField DataField="Math" HeaderText="Math" SortExpression="Math" />
                    <asp:BoundField DataField="Eng" HeaderText="Eng" SortExpression="Eng" />
                    <asp:ButtonField ButtonType="Button" CommandName="Cal" Text="計算" />
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
            <asp:Label ID="lb_Show" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
