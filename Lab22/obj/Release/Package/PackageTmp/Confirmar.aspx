<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Confirmar.aspx.vb" Inherits="Lab22.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Registro completado con éxito.<br />
        Revisa la bandeja de entrada de el correo electrónico proporcionado para confirmar el registro.</div>
        <asp:Button ID="Button1" runat="server" PostBackUrl="~/Inicio.aspx" Text="Volver a Inicio" />
    </form>
</body>
</html>
