<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Alumno.aspx.vb" Inherits="Lab22.Alumno" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Panel ID="Panel1" runat="server" style="align-items: center; absolute; top: 20px; left: 7px; height: 385px; width: 284px;" BackColor="#FFFF99" BorderStyle="Outset">
            <asp:HyperLink ID="HyperLink1" runat="server" style="position: absolute; top: 233px; left: 108px;">Grupos</asp:HyperLink>
            <asp:HyperLink ID="HyperLink2" runat="server" style="position: absolute; top: 151px; left: 87px;">Tareas Propias</asp:HyperLink>
            <asp:HyperLink ID="HyperLink3" runat="server" style="position: absolute; top: 71px; left: 82px;" NavigateUrl="~/Alumno/TareasAlumno.aspx">Tareas Genéricas</asp:HyperLink>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" style="position: absolute; top: 35px; left: 302px; height: 385px; width: 1162px;" BackColor="#E4E4E4" BorderStyle="Inset">
            <asp:Label ID="Label1" runat="server" style="position: absolute; top: 112px; left: 381px;" Text="Gestión Web de Tareas-Dedicación" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True"></asp:Label>
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True" style="position: absolute; top: 197px; left: 560px;" Text="Alumnos"></asp:Label>
        </asp:Panel>
    </form>
</body>
</html>
