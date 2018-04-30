<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Profesor.aspx.vb" Inherits="Lab22.Profesor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" style="align-items: center; absolute; top: 20px; left: 7px; height: 385px; width: 284px; margin-top: 0px;" BackColor="#FFFF99" BorderStyle="Outset">
            <asp:HyperLink ID="HyperLink2" runat="server" style="position: absolute; top: 36px; left: 119px;" NavigateUrl="~/Profesor/EstadisticasProfesor.aspx">Estadísticas</asp:HyperLink>
            <asp:HyperLink ID="HyperLink1" runat="server" style="position: absolute; top: 161px; left: 129px; height: 18px;">Grupos</asp:HyperLink>
            <asp:HyperLink ID="HyperLink8" runat="server" style="position: absolute; top: 121px; left: 129px;" NavigateUrl="~/Profesor/TareasProfesor.aspx">Tareas</asp:HyperLink>
            <asp:HyperLink ID="HyperLink4" runat="server" style="position: absolute; top: 76px; left: 118px; height: 14px; width: 75px;">Asignaturas</asp:HyperLink>
            <asp:HyperLink ID="HyperLink5" runat="server" style="position: absolute; top: 301px; left: 122px; width: 71px; height: 39px; bottom: 294px;" NavigateUrl="~/Profesor/ImportarXMLDataSet.aspx">Importar v. DataSet</asp:HyperLink>
            <asp:HyperLink ID="HyperLink6" runat="server" style="position: absolute; top: 266px; left: 124px;" NavigateUrl="~/Profesor/Exportar.aspx">Exportar</asp:HyperLink>
            <asp:HyperLink ID="HyperLink7" runat="server" style="position: absolute; top: 202px; left: 105px; width: 101px;" NavigateUrl="~/Profesor/ImportarXML.aspx">Importar v. XML Document</asp:HyperLink>
            <asp:HyperLink ID="HyperLink3" runat="server" style="position: absolute; top: 357px; left: 96px; width: 119px;" NavigateUrl="~/Profesor/Coordinador.aspx">Coordinar Tareas</asp:HyperLink>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" style="position: absolute; top: 14px; left: 307px; height: 385px; width: 1162px;" BackColor="#EBEBEB" BorderStyle="Inset">
            <asp:Label ID="Label1" runat="server" style="position: absolute; top: 112px; left: 381px;" Text="Gestión Web de Tareas-Dedicación" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True"></asp:Label>
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True" style="position: absolute; top: 197px; left: 560px;" Text="Profesor"></asp:Label>
        </asp:Panel>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Label ID="lblNumAlum" runat="server" Text="Numero de Alumnos conectados: "></asp:Label>
                <asp:Label ID="lblNumAlum2" runat="server"></asp:Label>
                <br />
                <asp:ListBox ID="ListAlum" runat="server"></asp:ListBox>
                <br />
                <asp:Label ID="lblNumProf" style="top: 506px; left: 406px;" runat="server" Text="Numero de Profesores conectados: "></asp:Label>
                <asp:Label ID="lblNumProf2" runat="server"></asp:Label>
                <br />
                <asp:ListBox ID="ListProf" runat="server"></asp:ListBox>
                <asp:Timer ID="Timer1" runat="server" Interval="2000" OnTick="Timer1_Tick">
                </asp:Timer>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
