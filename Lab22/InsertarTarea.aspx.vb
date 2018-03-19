Imports System.Data.SqlClient

Public Class InsertarTarea
    Inherits System.Web.UI.Page

    Dim conClsf As New SqlConnection(“Server=tcp:hads12iu.database.windows.net,1433;Initial Catalog=HADS-12-Tareas;Persist Security Info=False;User ID=ulekuona001;Password=;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")
    Dim dapTar As New SqlDataAdapter()
    Dim dstTar As New DataSet
    Dim tblTar As New DataTable

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        dapTar = New SqlDataAdapter("select * from TareasGenericas", conClsf)

        Dim bldTar As New SqlCommandBuilder(dapTar)

        dapTar.Fill(dstTar, "Tareas")

        tblTar = dstTar.Tables("Tareas")
    End Sub

    Protected Sub LinkButton2_Click(sender As Object, e As EventArgs) Handles LinkButton2.Click
        Response.Redirect("TareasProfesor.aspx")
    End Sub

    Protected Sub btnAnadir_Click(sender As Object, e As EventArgs) Handles btnAnadir.Click
        Dim rowTar As DataRow = tblTar.NewRow()
        rowTar("codigo") = txtCod.Text
        rowTar("descripcion") = txtDesc
        rowTar("hestimadas") = txtHE.Text
        rowTar("codasig") = ddlAsig.SelectedValue
        rowTar("tipotarea") = ddlTipoTar.SelectedValue
        rowTar("Explotacion") = "True"
        tblTar.Rows.Add(rowTar)
        dapTar.Update(dstTar, "Tareas")
        dstTar.AcceptChanges()
        lblCorrecto.Text = "Tarea añadida correctamente!"
    End Sub
End Class