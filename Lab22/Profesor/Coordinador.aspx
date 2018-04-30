<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Coordinador.aspx.vb" Inherits="Lab22.Coordinador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 1410px">
    
        <asp:Panel ID="Panel1" runat="server" BackColor="Silver" Height="85px" Width="1502px">
            <asp:Label ID="lblAlumnos1" runat="server" Text="Seleccionar asignatura:" style="position:absolute; top: 114px; left: 32px;" Font-Bold="True" Font-Size="X-Large"></asp:Label>
            <asp:Label ID="lblAlumnos0" runat="server" Font-Bold="True" Font-Size="X-Large" style="position:absolute; top: 63px; left: 640px;" Text="COORDINAR TAREAS"></asp:Label>
            <asp:Label ID="lblAlumnos2" runat="server" Font-Bold="True" Font-Size="X-Large" style="position:absolute; top: 24px; left: 707px;" Text="PROFESOR"></asp:Label>
            <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" style="position:absolute; top: 44px; left: 1344px;" Font-Size="X-Large">Cerrar Sesión</asp:LinkButton>
        </asp:Panel>
    
    </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:DropDownList ID="DropDownList1" runat="server" style="position:absolute; top: 157px; left: 53px; height: 16px; width: 136px;" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="codigo" DataValueField="codigo">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HADS-12-TareasConnectionString %>" SelectCommand="SELECT [codigo] FROM [Asignaturas]"></asp:SqlDataSource>
                <asp:Label ID="Label1" style="position:absolute; top: 224px; left: 300px; height: 18px; width: 104px;" runat="server" Text="Label"></asp:Label>
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:HyperLink ID="HyperLink1" style="position:absolute; top: 279px; left: 19px; width: 116px;" runat="server" NavigateUrl="~/Profesor/Profesor.aspx">Menu Profesor</asp:HyperLink> 
        <asp:Label ID="Label2" style="position:absolute; top: 222px; left: 11px;" runat="server" Text="Horas media de dedicación a la asignatura: "></asp:Label>  
    </form>
</body>
</html>
