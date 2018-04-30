Public Class Coordinador
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim a As New net.azurewebsites.hads1218ws.Servicio1
        Label1.Text = a.DedicacionMedia(DropDownList1.SelectedValue)
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        Dim a As New net.azurewebsites.hads1218ws.Servicio1
        Label1.Text = a.DedicacionMedia(DropDownList1.SelectedValue)
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