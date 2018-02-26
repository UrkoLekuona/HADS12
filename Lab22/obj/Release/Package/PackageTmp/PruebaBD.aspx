<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PruebaBD.aspx.vb" Inherits="Lab22.PruebaBD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button1" runat="server" Text="Conectar" />
        <asp:Button ID="Button3" runat="server" Text="Desconectar" />
    
    </div>
        <p>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="TextBox1" runat="server" Height="16px"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button2" runat="server" Text="Sacar tupla" />
        </p>
        <p>
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>
