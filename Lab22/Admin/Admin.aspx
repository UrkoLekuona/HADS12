<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Admin.aspx.vb" Inherits="Lab22.Admin" %>

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
            <asp:HyperLink ID="HyperLink1" runat="server" style="position: absolute; top: 235px; left: 75px;" NavigateUrl="~/Alumno/Alumno.aspx">Funcionalidades Alumno</asp:HyperLink>
            <asp:HyperLink ID="HyperLink2" runat="server" style="position: absolute; top: 151px; left: 73px; height: 19px;" NavigateUrl="~/Profesor/Profesor.aspx">Funcionalidades Profesor</asp:HyperLink>
            <asp:HyperLink ID="HyperLink3" runat="server" style="position: absolute; top: 75px; left: 108px;" NavigateUrl="~/Admin/AdminCuentas.aspx">Ver Usuarios</asp:HyperLink>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" style="position: absolute; top: 35px; left: 302px; height: 385px; width: 1162px;" BackColor="#E4E4E4" BorderStyle="Inset">
            <asp:Label ID="Label2" runat="server" style="position: absolute; top: 157px; left: 506px;" Text="Administrador" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True"></asp:Label>
        </asp:Panel>
    </form>
</body>
</html>
