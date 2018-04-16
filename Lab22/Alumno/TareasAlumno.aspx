<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="TareasAlumno.aspx.vb" Inherits="Lab22.TareasAlumno" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" BackColor="Silver" Height="85px">
            <asp:Label ID="lblAlumnos1" runat="server" Text="Seleccionar asignaturas (solo se muestran aquellas en las que está matriculado):" style="position:absolute; top: 114px; left: 32px;" Font-Bold="True" Font-Size="X-Large"></asp:Label>
            <asp:Label ID="lblAlumnos0" runat="server" Font-Bold="True" Font-Size="X-Large" style="position:absolute; top: 62px; left: 565px;" Text="GESTIÓN DE TAREAS GENÉRICAS"></asp:Label>
            <asp:Label ID="lblAlumnos2" runat="server" Font-Bold="True" Font-Size="X-Large" style="position:absolute; top: 24px; left: 707px;" Text="ALUMNOS"></asp:Label>
            <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="X-Large">Cerrar Sesión</asp:LinkButton>
        </asp:Panel>
        <div>
        </div>
        <asp:GridView ID="GridView1" style="position:absolute; top: 225px; left: 41px; width: 362px;" runat="server" AllowSorting="True">
            <Columns>
                <asp:ButtonField CommandName="Select" Text="Instanciar" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <asp:DropDownList ID="DropDownList1" style="position:absolute; top: 171px; left: 46px; width: 481px;" runat="server" AutoPostBack="True">
        </asp:DropDownList>
        <p>
            <asp:Label ID="lblEntra" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>
