Imports System.Net
Imports AccesoDatos.accesodatosSQL
Imports EmailSenderLibrary.EmailSender
Public Class CambiarPassword
    Inherits System.Web.UI.Page
    Public Shared Property NumConf As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnEmail_Click(sender As Object, e As EventArgs) Handles btnEmail.Click
        conectar()
        If existeEmail(txtEmail.Text) Then
            Randomize()
            NumConf = CLng(Rnd() * 900000) + 100000
            enviarEmail(txtEmail.Text, NumConf, 1)
            visibleEmail(False)
            visiblenumero(True)
        Else
            lblEmailError.Text = "Este correo no está registrado"
        End If
        cerrarconexion()
    End Sub

    Protected Sub btnNumero_Click(sender As Object, e As EventArgs) Handles btnNumero.Click
        If txtNumero.Text = NumConf.ToString And txtNumero.Text <> "" Then
            visiblenumero(False)
            visiblePass(True)
        Else
            lblNumeroError.Text = "Los números no coinciden"
        End If
    End Sub

    Protected Sub btnPass_Click(sender As Object, e As EventArgs) Handles btnPass.Click
        If Page.IsValid Then
            conectar()
            If updatePass(txtEmail.Text, txtPass.Text) Then
                cerrarconexion()
                Response.Redirect("./Inicio.aspx")
            Else
                lblPassError.Text = "Problema al actualizar la contraseña"
            End If
            cerrarconexion()
        End If
    End Sub

    Private Sub visibleEmail(ByVal ver As Boolean)
        txtEmail.Visible = ver
        lblEmail.Visible = ver
        btnEmail.Visible = ver
        lblEmailError.Visible = ver
    End Sub

    Private Sub visiblenumero(ByVal ver As Boolean)
        txtNumero.Visible = ver
        lblNumero.Visible = ver
        btnNumero.Visible = ver
        lblNumeroError.Visible = ver
    End Sub

    Private Sub visiblePass(ByVal ver As Boolean)
        txtPass.Visible = ver
        lblPass.Visible = ver
        btnPass.Visible = ver
        txtPass2.Visible = ver
        lblPass2.Visible = ver
        RegularExpressionValidator2.Enabled = ver
        reqFieldValPass1.Enabled = ver
        reqFieldValPass2.Enabled = ver
        CompareValidator1.Enabled = ver
        lblPassError.Visible = ver
    End Sub
End Class