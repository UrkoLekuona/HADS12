<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Profesor.aspx.vb" Inherits="Lab22.Profesor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Panel ID="Panel1" runat="server" style="align-items: center; absolute; top: 20px; left: 7px; height: 385px; width: 284px; margin-top: 0px;" BackColor="#FFFF99" BorderStyle="Outset">
            <asp:HyperLink ID="HyperLink2" runat="server" style="position: absolute; top: 47px; left: 88px;" NavigateUrl="~/EstadisticasProfesor.aspx">Estadísticas</asp:HyperLink>
            <asp:HyperLink ID="HyperLink1" runat="server" style="position: absolute; top: 183px; left: 95px; height: 18px;">Grupos</asp:HyperLink>
            <asp:HyperLink ID="HyperLink8" runat="server" style="position: absolute; top: 129px; left: 99px;" NavigateUrl="~/TareasProfesor.aspx">Tareas</asp:HyperLink>
            <asp:HyperLink ID="HyperLink4" runat="server" style="position: absolute; top: 94px; left: 85px;">Asignaturas</asp:HyperLink>
            <asp:HyperLink ID="HyperLink5" runat="server" style="position: absolute; top: 343px; left: 88px; width: 87px; height: 38px;">Importar v. DataSet</asp:HyperLink>
            <asp:HyperLink ID="HyperLink6" runat="server" style="position: absolute; top: 299px; left: 91px;">Exportar</asp:HyperLink>
            <asp:HyperLink ID="HyperLink7" runat="server" style="position: absolute; top: 235px; left: 79px; width: 101px;">Importar v. XML Document</asp:HyperLink>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" style="position: absolute; top: 34px; left: 302px; height: 385px; width: 1162px;" BackColor="#EBEBEB" BorderStyle="Inset">
            <asp:Label ID="Label1" runat="server" style="position: absolute; top: 112px; left: 381px;" Text="Gestión Web de Tareas-Dedicación" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True"></asp:Label>
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True" style="position: absolute; top: 197px; left: 560px;" Text="Profesor"></asp:Label>
        </asp:Panel>
    </form>
</body>
</html>
