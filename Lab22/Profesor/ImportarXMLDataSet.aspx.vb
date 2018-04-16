Imports System.Data.SqlClient
Imports System.Xml

Public Class ImportarXMLDataSet
    Inherits System.Web.UI.Page

    Dim conClsf As New SqlConnection(“Server=tcp:hads12iu.database.windows.net,1433;Initial Catalog=HADS-12-Tareas;Persist Security Info=False;User ID=ulekuona001;Password=;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")
    Dim dapAsig, dapTar As New SqlDataAdapter()
    Dim dstAsig, data As New DataSet
    Dim tblAsig As New DataTable

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Me.IsPostBack Then
            dstAsig = Session("Asignaturas")
            data = Session("Tareas")
            dapTar = Session("adapter")
        Else
            dapAsig = New SqlDataAdapter("select gc.codigoasig as Asignaturas from profesoresgrupo as pg inner join gruposclase as gc on pg.codigogrupo = gc.codigo where pg.email='" + Session("correo") + "' ", conClsf)

            Dim bldAsig As New SqlCommandBuilder(dapAsig)

            dapAsig.Fill(dstAsig, "Asignaturas")

            tblAsig = dstAsig.Tables("Asignaturas")

            DropDownList1.DataSource = tblAsig.DefaultView
            DropDownList1.DataTextField = "Asignaturas"
            DropDownList1.DataBind()

            dapTar = New SqlDataAdapter("select * from TareasGenericas", conClsf)
            Dim bld As New SqlCommandBuilder(dapTar)
            dapTar.Fill(data, "Tareas")
            Session("Tareas") = data
            Session("adapter") = dapTar
            'DropDownList1.SelectedIndex = 0

            Session("Asignaturas") = dstAsig
        End If
        If (System.IO.File.Exists(Server.MapPath("../App_Data/" & DropDownList1.SelectedValue & ".xml"))) Then
            Xml1.DocumentSource = Server.MapPath("../App_Data/" & DropDownList1.SelectedValue & ".xml")
        End If

        Xml1.TransformSource = Server.MapPath("../App_Data/XSLTFile" + DropDownList2.SelectedValue + ".xsl")

    End Sub

    Protected Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click
        Session.Abandon()
        FormsAuthentication.SignOut()
        Response.Redirect("../Inicio.aspx")
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        data = New DataSet

        data.ReadXml(Server.MapPath("../App_Data/" & DropDownList1.SelectedValue & ".xml"))

        data.Tables(0).Columns(0).ColumnName = "Descripcion"
        data.Tables(0).Columns(1).ColumnName = "HEstimadas"
        data.Tables(0).Columns(2).ColumnName = "Explotacion"
        data.Tables(0).Columns(3).ColumnName = "TipoTarea"
        data.Tables(0).Columns(4).ColumnName = "Codigo"
        data.Tables(0).Columns.Add("CodAsig")

        For Each row In data.Tables(0).Rows
            row.Item("CodAsig") = DropDownList1.SelectedValue
        Next

        Try
            dapTar.Update(data, data.Tables(0).TableName)
            data.AcceptChanges()
            lblCorrecto.Text = "Datos importados correctamente!"
        Catch ex As SqlException
            lblCorrecto.Text = "Ha ocurrido un error al importar los datos. Puede que este archivo ya haya sido importado."
        End Try
    End Sub
End Class