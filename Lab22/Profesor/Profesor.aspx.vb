Public Class Profesor
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblNumAlum2.Text = Application.Contents("Alumnos").Count
        lblNumProf2.Text = Application.Contents("Profesores").Count
        ListAlum.DataSource = Application.Contents("Alumnos")
        ListAlum.DataBind()
        ListProf.DataSource = Application.Contents("Profesores")
        ListProf.DataBind()
    End Sub

    Protected Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        lblNumAlum2.Text = Application.Contents("Alumnos").Count
        lblNumProf2.Text = Application.Contents("Profesores").Count
        ListAlum.DataSource = Application.Contents("Alumnos")
        ListAlum.DataBind()
        ListProf.DataSource = Application.Contents("Profesores")
        ListProf.DataBind()
    End Sub
End Class