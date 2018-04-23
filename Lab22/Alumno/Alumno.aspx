<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Alumno.aspx.vb" Inherits="Lab22.Alumno" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" style="align-items: center; absolute; top: 20px; left: 7px; height: 385px; width: 284px;" BackColor="#FFFF99" BorderStyle="Outset">
            <asp:HyperLink ID="HyperLink1" runat="server" style="position: absolute; top: 233px; left: 108px;">Grupos</asp:HyperLink>
            <asp:HyperLink ID="HyperLink2" runat="server" style="position: absolute; top: 151px; left: 87px;">Tareas Propias</asp:HyperLink>
            <asp:HyperLink ID="HyperLink3" runat="server" style="position: absolute; top: 71px; left: 82px;" NavigateUrl="~/Alumno/TareasAlumno.aspx">Tareas Genéricas</asp:HyperLink>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" style="position: absolute; top: 14px; left: 302px; height: 385px; width: 1162px;" BackColor="#E4E4E4" BorderStyle="Inset">
            <asp:Label ID="Label1" runat="server" style="position: absolute; top: 112px; left: 381px;" Text="Gestión Web de Tareas-Dedicación" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True"></asp:Label>
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True" style="position: absolute; top: 197px; left: 560px;" Text="Alumnos"></asp:Label>
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
