Imports System.Data.SqlClient

Public Class InstanciarTarea
    Inherits System.Web.UI.Page

    Dim conClsf As New SqlConnection(“Server=tcp:hads12iu.database.windows.net,1433;Initial Catalog=HADS-12-Tareas;Persist Security Info=False;User ID=ulekuona001;Password=;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")
    Dim dapTar As New SqlDataAdapter()
    Dim dstTar As New DataSet
    Dim tblTar As New DataTable
    Dim vista As New DataView

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txtUser.Text = Session("correo")
        txtTar.Text = Session("CodTarea")
        txtHE.Text = Session("HEst")

        dapTar = New SqlDataAdapter("select email, codtarea, hestimadas, hreales from EstudiantesTareas where email='" + Session("correo") + "'", conClsf)

        Dim bldTar As New SqlCommandBuilder(dapTar)

        dapTar.Fill(dstTar, "Tareas")

        tblTar = dstTar.Tables("Tareas")

        GridView1.DataSource = tblTar.DefaultView
        GridView1.DataBind()


    End Sub

    Protected Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click
        Response.Redirect("TareasAlumno.aspx")
    End Sub

    Protected Sub btnCT_Click(sender As Object, e As EventArgs) Handles btnCT.Click
        Dim rowTar As DataRow = tblTar.NewRow()
        rowTar("email") = txtUser.Text
        rowTar("codtarea") = txtTar.Text
        rowTar("hestimadas") = txtHE.Text
        rowTar("hreales") = txtHR.Text
        tblTar.Rows.Add(rowTar)
        GridView1.DataSource = tblTar.DefaultView
        GridView1.DataBind()
        dapTar.Update(dstTar, "Tareas")
        dstTar.AcceptChanges()
        lblCorrecto.Text = "Tarea instanciada con éxito!"
    End Sub
End Class