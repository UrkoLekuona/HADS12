Imports AccesoDatos.accesodatosSQL
Public Class WebForm3
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If Page.IsValid Then
            conectar()
            Dim pass = obtenerpassyconfconemail(txtEmail.Text)

            If pass.Read Then
                If pass.Item("confirmado") = 0 Then
                    Label1.Text = "Cuenta no confirmada"
                Else
                    If txtPass1.Text = Trim(pass.Item("pass")) Then
                        cerrarconexion()
                        Response.Redirect("./MainPage.aspx")
                    Else
                        Label1.Text = "Contraseña incorrecta"
                    End If
                End If
            Else
                Label1.Text = "El usuario no esta registrado"
            End If
        End If
        cerrarconexion()
    End Sub
End Class