Imports System.Data.SqlClient
Imports AccesoDatos.accesodatosSQL
Public Class PruebaBD
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Label1.Text = conectar()
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim RS As SqlDataReader
        Try
            RS = obtenernombreconemail(TextBox1.Text)
        Catch ex As Exception
            Label2.Text = ex.Message
            Exit Sub
        End Try
        If RS.Read Then
            Label2.Text = RS.Item("nombre")
        Else
            Label2.Text = "No se ha encontrado ese usuario"
        End If
        RS.Close()
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Label1.Text = cerrarconexion()
    End Sub
End Class