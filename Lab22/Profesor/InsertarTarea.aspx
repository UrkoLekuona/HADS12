<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="InsertarTarea.aspx.vb" Inherits="Lab22.InsertarTarea" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" BackColor="Silver" Height="85px">
            <asp:Label ID="lblAlumnos3" runat="server" Text="Código" style="position:absolute; top: 119px; left: 31px;" Font-Bold="True" Font-Size="X-Large"></asp:Label>
            <asp:Label ID="lblAlumnos4" runat="server" Font-Bold="True" Font-Size="X-Large" style="position:absolute; top: 327px; left: 31px;" Text="Tipo Tarea"></asp:Label>
            <asp:Label ID="lblAlumnos1" runat="server" Font-Bold="True" Font-Size="X-Large" style="position:absolute; top: 221px; left: 30px;" Text="Asignatura"></asp:Label>
            <asp:Label ID="lblAlumnos5" runat="server" Font-Bold="True" Font-Size="X-Large" style="position:absolute; top: 159px; left: 32px;" Text="Descripción"></asp:Label>
            <asp:Label ID="lblAlumnos6" runat="server" Font-Bold="True" Font-Size="X-Large" style="position:absolute; top: 272px; left: 32px;" Text="Horas Estimadas"></asp:Label>
            <asp:Label ID="lblAlumnos0" runat="server" Font-Bold="True" Font-Size="X-Large" style="position:absolute; top: 62px; left: 565px;" Text="GESTIÓN DE TAREAS GENÉRICAS"></asp:Label>
            <asp:Label ID="lblAlumnos2" runat="server" Font-Bold="True" Font-Size="X-Large" style="position:absolute; top: 24px; left: 707px;" Text="PROFESOR"></asp:Label>
        </asp:Panel>
        <asp:Button ID="btnAnadir" style="position:absolute; top: 429px; left: 145px; height: 40px; width: 174px;" runat="server" Text="Añadir Tarea" />
        <p>
        <asp:TextBox ID="txtCod" style="position:absolute; top: 119px; left: 233px; width: 200px;" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtHE" style="position:absolute; top: 270px; left: 234px; width: 140px;" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtDesc" style="position:absolute; top: 161px; left: 232px; width: 480px; height: 40px;" runat="server" Rows="3" TextMode="MultiLine" Columns="50"></asp:TextBox>
        </p>
        <asp:DropDownList ID="ddlTipoTar" style="position:absolute; top: 332px; left: 234px; width: 289px; right: 1026px;" runat="server">
            <asp:ListItem>Ejercicio</asp:ListItem>
            <asp:ListItem>Examen</asp:ListItem>
            <asp:ListItem>Laboratorio</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="ddlAsig" style="position:absolute; top: 227px; left: 235px; width: 305px;" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="codigoasig" DataValueField="codigoasig">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HADS-12-TareasConnectionString %>" SelectCommand="select gc.codigoasig from profesoresgrupo as pg inner join gruposclase as gc on pg.codigogrupo = gc.codigo where pg.email=@profesor">
            <SelectParameters>
                <asp:SessionParameter Name="profesor" SessionField="correo" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="lblCorrecto" style="position:absolute; top: 509px; left: 144px;" runat="server" ForeColor="#CC3300"></asp:Label>
        <asp:LinkButton ID="LinkButton2" style="position:absolute; top: 500px; left: 652px;" runat="server" Font-Bold="True" Font-Size="X-Large">Ver Tareas</asp:LinkButton>
    </form>
</body>
</html>
