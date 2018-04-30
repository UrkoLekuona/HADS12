Imports System.Security.Cryptography
Imports AccesoDatos.accesodatosSQL
Imports EmailSenderLibrary.EmailSender
Public Class WebForm1
    Inherits System.Web.UI.Page

    Dim a As New matriculas.Matriculas
    Dim b As New net.azurewebsites.hads1218ws.Servicio1

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim result = b.comprobar(txtPass1.Text)
        Label2.Text = ""
        If (result = "VALIDA") Then
            If Page.IsValid Then
                conectar()
                Dim i = comprobaremail(txtEmail.Text)
                If i.HasRows = False Then
                    i.Close()
                    Dim encrypter = New Encriptador.EncriptarSHA1
                    Dim passenc = encrypter.getSHA1Hash(txtPass1.Text)
                    Dim numconf = registrar(txtEmail.Text, txtName.Text, txtApe.Text, passenc, dropRol.SelectedValue)
                    enviarEmail(txtEmail.Text, numconf, 0)
                    cerrarconexion()
                    Response.Redirect("./confirmar.aspx")
                End If
                i.Close()
                cerrarconexion()
                Label2.Text = "correo ya en uso"
            End If
        Else
            Label2.Text = "La contraseña es poco segura"
        End If
    End Sub

    Protected Sub txtEmail_TextChanged(sender As Object, e As EventArgs) Handles txtEmail.TextChanged
        Dim result = a.comprobar(txtEmail.Text)
        If (result = "SI") Then
            Button1.Enabled = True
            Label2.Text = ""
        Else
            Label2.Text = "correo no matriculado"
            Button1.Enabled = False
        End If
    End Sub
End Class