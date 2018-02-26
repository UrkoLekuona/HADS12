Imports AccesoDatos.accesodatosSQL
Public Class WebForm4
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim obtener() = ClientQueryString.Split("&")
        Dim email = obtener(0)
        Dim numero = obtener(1)
        email = Strings.Replace(email, "%40", "@")
        Dim arremail() = email.Split("=")
        email = arremail(1)
        arremail = numero.Split("=")
        numero = arremail(1)
        conectar()
        Dim con = comprobaremailconfirmacion(email)
        Label1.Text = "Link no valido o cuenta ya confirmada"
        If con.Read Then
            If con.Item("numconfir") = numero And con.Item("confirmado") = 0 Then
                con.Close()
                If confirmacion(email) = 1 Then
                    Label1.Text = "EMAIL CONFIRMADO CORRECTAMENTE"
                Else Label1.Text = "Ha habido un error al confirmar el email. Intentelo de nuevo mas tarde"
                End If

            End If
        End If
        cerrarconexion()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

    End Sub
End Class