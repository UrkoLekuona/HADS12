<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Registro.aspx.vb" Inherits="Lab22.WebForm1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <style type="text/css">
      .VeryPoor
       {
         background-color:red;
         }

          .Weak
        {
         background-color:orange;
         }

          .Average
         {
          background-color:wheat;
         }
          .Excellent
         {
         background-color:green;
         }
          .Strong
         {
         background-color:yellow;
         }
          .border
         {
          border: medium solid #800000;
          width:200px;                
         }
      </style>
</head>
<body>
    <form id="form1" runat="server">
    <h2>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        Registro</h2>
        
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>Correo electrónico
                <asp:TextBox ID="txtEmail" runat="server" AutoPostBack="True"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqFieldValEmail" runat="server" ControlToValidate="txtEmail" EnableClientScript="False" ErrorMessage="*"></asp:RequiredFieldValidator>
                <!--<asp:RegularExpressionValidator ID="regValEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Introduzca un correo electrónico válido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" EnableClientScript="False"></asp:RegularExpressionValidator>-->
            </ContentTemplate>
        </asp:UpdatePanel>
        
        
        <p>
            Nombre&nbsp;
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqFieldValName" runat="server" ControlToValidate="txtName" EnableClientScript="False" ErrorMessage="*"></asp:RequiredFieldValidator>
        </p>
        <p>
            Apellidos&nbsp;
        <asp:TextBox ID="txtApe" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqFieldValDNI" runat="server" ControlToValidate="txtApe" EnableClientScript="False" ErrorMessage="*"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtApe" ErrorMessage="Este campo debe estar compuesto por dos 'Apellidos'" ValidationExpression="[a-zA-ZàáâäãåąčćęèéêëėįìíîïłńòóôöõøùúûüųūÿýżźñçčšžÀÁÂÄÃÅĄĆČĖĘÈÉÊËÌÍÎÏĮŁŃÒÓÔÖÕØÙÚÛÜŲŪŸÝŻŹÑßÇŒÆČŠŽ∂ð ,.'-(\s|$)]{2,48}" EnableClientScript="False"></asp:RegularExpressionValidator>
        </p>

                    Contraseña
                    <asp:TextBox ID="txtPass1" runat="server" TextMode="Password" autocomplete="off"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqFieldValPass1" runat="server" ControlToValidate="txtPass1" EnableClientScript="False" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPass1" EnableClientScript="False" ErrorMessage="Debe contener al menos 6 digitos" ValidationExpression="^[a-zA-ZÁáÀàÉéÈèÍíÌìÓóÒòÚúÙùÑñüÜ0-9!@#\$%\^&amp;\*\?_~\/]{6,20}$"></asp:RegularExpressionValidator>
                    <ajaxToolkit:PasswordStrength ID="PasswordStrength1" runat="server" TargetControlID="txtPass1" 
                        DisplayPosition="RightSide"
                        StrengthIndicatorType="BarIndicator"
                        PreferredPasswordLength="6"
                        MinimumNumericCharacters="1"
                        RequiresUpperAndLowerCaseCharacters="true"
                        StrengthStyles="VeryPoor; Weak; Average; Strong; Excellent"
                        CalculationWeightings="40;20;20;20"
                        BarBorderCssClass="border" MinimumLowerCaseCharacters="1" MinimumSymbolCharacters="0" MinimumUpperCaseCharacters="1"/>

            
        <p> 
            Confirmar Contraseña
        <asp:TextBox ID="txtPass2" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqFieldValPass2" runat="server" ControlToValidate="txtPass2" EnableClientScript="False" ErrorMessage="*"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPass1" ControlToValidate="txtPass2" EnableClientScript="False" ErrorMessage="Contraseñas diferentes"></asp:CompareValidator>
        </p>
        <p>
            <asp:DropDownList ID="dropRol" runat="server" Height="27px" Width="90px">
                <asp:ListItem Selected="True">Alumno</asp:ListItem>
                <asp:ListItem>Profesor</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <asp:Button ID="Button1" runat="server" Text="Registrarse" Height="22px" />
                    </br>
                    </br>
                    <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                </ContentTemplate>
            </asp:UpdatePanel>
            
                
            
        </p>
        <p>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>
