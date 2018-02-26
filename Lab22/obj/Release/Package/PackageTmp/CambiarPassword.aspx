<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="CambiarPassword.aspx.vb" Inherits="Lab22.CambiarPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" visible="True">
    <div>
    
    </div>
        <asp:Label ID="lblEmail" runat="server" Text="Introduce tu correo: "></asp:Label>
        <asp:TextBox ID="txtEmail" name="email" runat="server"></asp:TextBox>
        <asp:Label ID="lblEmailError" runat="server" ForeColor="Red"></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnEmail" runat="server" Text="CONFIRMAR" />
        <p>
            <asp:Label ID="lblNumero" runat="server" Text="Introduce el número que hayas recibido en el correo: " Visible="False"></asp:Label>
            <asp:TextBox ID="txtNumero" runat="server" Visible="False"></asp:TextBox>
        <asp:Label ID="lblNumeroError" runat="server" ForeColor="Red" Visible="False"></asp:Label>
        </p>
        <p>
            <asp:Button ID="btnNumero" runat="server" Text="CONFIRMAR" Visible="False" />
        </p>
        <p>
            <asp:Label ID="lblPass" runat="server" Text="Introduce tu nueva contraseña: " Visible="False"></asp:Label>
            <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Visible="False"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqFieldValPass1" runat="server" ControlToValidate="txtPass" EnableClientScript="False" ErrorMessage="*" Enabled="False"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPass" EnableClientScript="False" ErrorMessage="Debe contener al menos 6 digitos" ValidationExpression="^[a-zA-ZÁáÀàÉéÈèÍíÌìÓóÒòÚúÙùÑñüÜ0-9!@#\$%\^&amp;\*\?_~\/]{6,20}$" Enabled="False"></asp:RegularExpressionValidator>
        </p>
        <p>
            <asp:Label ID="lblPass2" runat="server" Text="Repite tu nueva contraseña: " Visible="False"></asp:Label>
            <asp:TextBox ID="txtPass2" runat="server" TextMode="Password" Visible="False"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqFieldValPass2" runat="server" ControlToValidate="txtPass2" EnableClientScript="False" ErrorMessage="*" Enabled="False"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPass" ControlToValidate="txtPass2" EnableClientScript="False" ErrorMessage="Contraseñas diferentes" Enabled="False"></asp:CompareValidator>
        </p>
        <p>
            <asp:Button ID="btnPass" runat="server" Text="CONFIRMAR" Visible="False" />
        <asp:Label ID="lblPassError" runat="server" ForeColor="Red" Visible="False"></asp:Label>
        </p>
    </form>
</body>
</html>
