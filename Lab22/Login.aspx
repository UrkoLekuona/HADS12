<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="Lab22.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <h2>Inicio de Sesión</h2>
    <form id="form1" runat="server">
    <div>
    
    </div>
        Correo electrónico
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqFieldValEmail" runat="server" ControlToValidate="txtEmail" EnableClientScript="False" ErrorMessage="*"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="regValEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Introduzca un correo electrónico válido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" EnableClientScript="False"></asp:RegularExpressionValidator>
        <p>
            Contraseña
        <asp:TextBox ID="txtPass1" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqFieldValPass1" runat="server" ControlToValidate="txtPass1" EnableClientScript="False" ErrorMessage="*"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPass1" EnableClientScript="False" ErrorMessage="Debe contener al menos 6 digitos" ValidationExpression="^[a-zA-ZÁáÀàÉéÈèÍíÌìÓóÒòÚúÙùÑñüÜ0-9!@#\$%\^&amp;\*\?_~\/]{6,20}$" Enabled="False"></asp:RegularExpressionValidator>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Iniciar Sesión" Height="22px" />
        </p>
        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
    </form>
</body>
</html>
