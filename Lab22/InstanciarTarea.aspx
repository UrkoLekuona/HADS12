<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="InstanciarTarea.aspx.vb" Inherits="Lab22.InstanciarTarea" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel1" runat="server" BackColor="Silver" Height="85px" Width="1549px">
            <asp:Label ID="lblAlumnos0" runat="server" Font-Bold="True" Font-Size="X-Large" style="position:absolute; top: 62px; left: 565px; width: 390px;" Text="INSTANCIAR TAREA GENÉRICA"></asp:Label>
            <asp:Label ID="lblAlumnos2" runat="server" Font-Bold="True" Font-Size="X-Large" style="position:absolute; top: 24px; left: 707px;" Text="ALUMNOS"></asp:Label>
        </asp:Panel>
    
    </div>
        <asp:Label ID="Label1" runat="server" style="position:absolute; top: 139px; left: 125px;" Text="Usuario"></asp:Label>
        <p>
        <asp:Label ID="Label2" runat="server" style="position:absolute; top: 173px; left: 125px;" Text="Tarea"></asp:Label>
        <asp:Label ID="Label3" runat="server" style="position:absolute; top: 272px; left: 126px;" Text="Hora Reales"></asp:Label>
        <asp:Label ID="Label4" runat="server" style="position:absolute; top: 219px; left: 125px;" Text="Horas Est."></asp:Label>
        <asp:TextBox ID="txtHE" style="position:absolute; top: 219px; left: 233px; width: 188px;" runat="server" ReadOnly="True"></asp:TextBox>
        <asp:TextBox ID="txtHR" style="position:absolute; top: 270px; left: 231px; width: 188px;" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtUser" style="position:absolute; top: 139px; left: 234px; width: 188px;" runat="server" ReadOnly="True"></asp:TextBox>
        <asp:TextBox ID="txtTar" style="position:absolute; top: 173px; left: 234px; width: 188px;" runat="server" ReadOnly="True"></asp:TextBox>
        </p>
        <asp:Button ID="btnCT" runat="server" style="position:absolute; top: 359px; left: 132px; height: 43px; width: 131px;" Text="Crear Tarea" />
        <p>
            <asp:LinkButton ID="LinkButton1" style="position:absolute; top: 501px; left: 118px; height: 15px; bottom: 98px;" runat="server">Página anterior</asp:LinkButton>
        </p>
        <asp:GridView ID="GridView1" style="position:absolute; top: 354px; left: 385px; height: 222px; width: 404px;" runat="server">
        </asp:GridView>
        <asp:Label ID="lblCorrecto" runat="server" style="position:absolute; top: 443px; left: 144px;" Font-Bold="True" ForeColor="#CC3300"></asp:Label>
    </form>
</body>
</html>
