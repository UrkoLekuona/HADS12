<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ImportarXMLDataSet.aspx.vb" Inherits="Lab22.ImportarXMLDataSet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 216px;
            left: 46px;
            width: 365px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 1410px">
    
        <asp:Panel ID="Panel1" runat="server" BackColor="Silver" Height="85px">
            <asp:Label ID="lblAlumnos1" runat="server" Text="Seleccionar asignatura a importar:" style="position:absolute; top: 114px; left: 32px;" Font-Bold="True" Font-Size="X-Large"></asp:Label>
            <asp:Label ID="lblAlumnos0" runat="server" Font-Bold="True" Font-Size="X-Large" style="position:absolute; top: 62px; left: 565px;" Text="IMPORTAR TAREAS GENÉRICAS"></asp:Label>
            <asp:Label ID="lblAlumnos2" runat="server" Font-Bold="True" Font-Size="X-Large" style="position:absolute; top: 24px; left: 707px;" Text="PROFESOR"></asp:Label>
            <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" style="position:absolute; top: 44px; left: 1344px;" Font-Size="X-Large">Cerrar Sesión</asp:LinkButton>
        </asp:Panel>
    
    </div>
        <asp:DropDownList ID="DropDownList1" runat="server" style="position:absolute; top: 157px; left: 53px; height: 16px; width: 136px;" AutoPostBack="True">
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList2" runat="server" style="position:absolute; top: 208px; left: 1017px; height: 16px; width: 136px;" AutoPostBack="True">
            <asp:ListItem Value="codigo">codigo</asp:ListItem>
            <asp:ListItem Value="descripcion">descripcion</asp:ListItem>
            <asp:ListItem Value="hestimadas">hestimadas</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" Text="Importar (XMLDataSet)" style="position:absolute; top: 299px; left: 36px; height: 51px; width: 160px;" />
        <asp:HyperLink ID="HyperLink1" style="position:absolute; top: 412px; left: 40px; width: 116px;" runat="server" NavigateUrl="~/Profesor/Profesor.aspx">Menu Profesor</asp:HyperLink>
       
        <asp:Panel ID="Panel2" style="position:absolute; top: 200px; left: 573px;" runat="server">
             <asp:Xml ID="Xml1" runat="server"></asp:Xml>
        </asp:Panel>
        <p>
        <asp:Label ID="lblCorrecto" runat="server" Font-Bold="True" ForeColor="#CC3300" CssClass="auto-style1"></asp:Label>
        </p>
        <asp:Label ID="Label1" style="position:absolute; top: 176px; left: 845px;" runat="server" Text="Selecciona la columna por la que quieres ordenar:" Font-Bold="True"></asp:Label>
    </form>
</body>
</html>