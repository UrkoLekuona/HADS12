Public Class TareasProfesor
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnIns_Click(sender As Object, e As EventArgs) Handles btnIns.Click
        Response.Redirect("InsertarTarea.aspx")
    End Sub

    Protected Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click
        Application.Lock()
        Application.Contents("Profesores").Remove(Session("correo"))
        Application.UnLock()
        Session.Abandon()
        FormsAuthentication.SignOut()
        Response.Redirect("../Inicio.aspx")
    End Sub
End Class