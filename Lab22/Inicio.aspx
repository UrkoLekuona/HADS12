<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Inicio.aspx.vb" Inherits="Lab22.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <h2>Página Principal</h2>
    <form id="form1" runat="server">

        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="./Login.aspx">Inicio de Sesión</asp:HyperLink>
        <br />
        <br />

        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="./Registro.aspx">Registrarse</asp:HyperLink>
        <p>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="./CambiarPassword.aspx">Cambiar Contraseña</asp:HyperLink>
        </p>

    </form>
</body>
</html>
