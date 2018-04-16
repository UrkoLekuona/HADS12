<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AdminCuentas.aspx.vb" Inherits="Lab22.AdminCuentas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>

<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" BackColor="Silver" Height="85px">
            <asp:Label ID="lblAlumnos0" runat="server" Font-Bold="True" Font-Size="X-Large" style="position:absolute; top: 62px; left: 565px;" Text="GESTIÓN DE CUENTAS DE USUARIOS"></asp:Label>
            <asp:Label ID="lblAlumnos2" runat="server" Font-Bold="True" Font-Size="X-Large" style="position:absolute; top: 24px; left: 707px;" Text="ADMINISTRADOR"></asp:Label>
            <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" style="position:absolute; top: 44px; left: 1344px;" Font-Size="X-Large">Cerrar Sesión</asp:LinkButton>
            <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" style="position:absolute; top: 43px; left: 44px;" Font-Size="X-Large">Atrás</asp:LinkButton>
        </asp:Panel>
        <div>
        <asp:GridView ID="GridView1" style="position:absolute; top: 140px; left: 495px;" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="email" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="email" HeaderText="email" ReadOnly="True" SortExpression="email" />
                <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                <asp:BoundField DataField="apellidos" HeaderText="apellidos" SortExpression="apellidos" />
                <asp:BoundField DataField="numconfir" HeaderText="numconfir" SortExpression="numconfir" />
                <asp:CheckBoxField DataField="confirmado" HeaderText="confirmado" SortExpression="confirmado" />
                <asp:BoundField DataField="tipo" HeaderText="tipo" SortExpression="tipo" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:HADS-12-TareasConnectionString %>" DeleteCommand="DELETE FROM [Usuarios] WHERE [email] = @original_email AND [nombre] = @original_nombre AND [apellidos] = @original_apellidos AND [numconfir] = @original_numconfir AND [confirmado] = @original_confirmado AND [tipo] = @original_tipo" InsertCommand="INSERT INTO [Usuarios] ([email], [nombre], [apellidos], [numconfir], [confirmado], [tipo]) VALUES (@email, @nombre, @apellidos, @numconfir, @confirmado, @tipo)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [email], [nombre], [apellidos], [numconfir], [confirmado], [tipo] FROM [Usuarios]" UpdateCommand="UPDATE [Usuarios] SET [nombre] = @nombre, [apellidos] = @apellidos, [numconfir] = @numconfir, [confirmado] = @confirmado, [tipo] = @tipo WHERE [email] = @original_email AND [nombre] = @original_nombre AND [apellidos] = @original_apellidos AND [numconfir] = @original_numconfir AND [confirmado] = @original_confirmado AND [tipo] = @original_tipo">
            <DeleteParameters>
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_nombre" Type="String" />
                <asp:Parameter Name="original_apellidos" Type="String" />
                <asp:Parameter Name="original_numconfir" Type="Int32" />
                <asp:Parameter Name="original_confirmado" Type="Boolean" />
                <asp:Parameter Name="original_tipo" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="nombre" Type="String" />
                <asp:Parameter Name="apellidos" Type="String" />
                <asp:Parameter Name="numconfir" Type="Int32" />
                <asp:Parameter Name="confirmado" Type="Boolean" />
                <asp:Parameter Name="tipo" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nombre" Type="String" />
                <asp:Parameter Name="apellidos" Type="String" />
                <asp:Parameter Name="numconfir" Type="Int32" />
                <asp:Parameter Name="confirmado" Type="Boolean" />
                <asp:Parameter Name="tipo" Type="String" />
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_nombre" Type="String" />
                <asp:Parameter Name="original_apellidos" Type="String" />
                <asp:Parameter Name="original_numconfir" Type="Int32" />
                <asp:Parameter Name="original_confirmado" Type="Boolean" />
                <asp:Parameter Name="original_tipo" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
    </body>
</html>
