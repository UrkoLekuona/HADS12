Imports System.Data.SqlClient

Public Class TareasAlumno
    Inherits System.Web.UI.Page

    Dim conClsf As New SqlConnection(“Server=tcp:hads12iu.database.windows.net,1433;Initial Catalog=HADS-12-Tareas;Persist Security Info=False;User ID=ulekuona001;Password=Fritanga10;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")
    Dim dapAsig, dapTar As New SqlDataAdapter()
    Dim dstAsig, dstTar As New DataSet
    Dim tblAsig, tblTar As New DataTable


    Protected Sub GridView1_Sorting(sender As Object, e As GridViewSortEventArgs) Handles GridView1.Sorting

        Dim dv As New DataView(tblTar, "CodAsig = '" + DropDownList1.SelectedValue + "'", "Codigo", DataViewRowState.CurrentRows)
        dv.Sort = e.SortExpression
        Dim dt = dv.ToTable(True, "Codigo", "Descripcion", "HEstimadas", "TipoTarea")
        GridView1.DataSource = dt
        GridView1.DataBind()

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged

        Dim dttbl = Session("vista").ToTable(True, "Codigo", "Descripcion", "HEstimadas", "TipoTarea")
        Session("CodTarea") = dttbl.Rows(GridView1.SelectedIndex).Item(0).ToString
        Session("HEst") = dttbl.Rows(GridView1.SelectedIndex).Item(2).ToString
        Response.Redirect("InstanciarTarea.aspx")

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Page.IsPostBack Then

            dstAsig = Session("Asignaturas")
            dstTar = Session("Tareas")
            tblTar = dstTar.Tables("Tareas")

        Else

            dapAsig = New SqlDataAdapter("select GruposClase.CodigoAsig as Asignaturas from GruposClase inner join EstudiantesGrupo on GruposClase.Codigo = EstudiantesGrupo.Grupo where EstudiantesGrupo.Email = '" + Session("correo") + "'", conClsf)

                Dim bldAsig As New SqlCommandBuilder(dapAsig)

                dapAsig.Fill(dstAsig, "Asignaturas")

                tblAsig = dstAsig.Tables("Asignaturas")

                DropDownList1.DataSource = tblAsig.DefaultView
                DropDownList1.DataTextField = "Asignaturas"
                DropDownList1.DataBind()

                Session("Asignaturas") = dstAsig

                dapTar = New SqlDataAdapter("SELECT TareasGenericas.Codigo,TareasGenericas.Descripcion,TareasGenericas.HEstimadas, TareasGenericas.CodAsig, TareasGenericas.TipoTarea FROM TareasGenericas WHERE TareasGenericas.Explotacion='True' AND TareasGenericas.Codigo NOT IN (SELECT EstudiantesTareas.CodTarea FROM EstudiantesTareas INNER JOIN TareasGenericas ON EstudiantesTareas.CodTarea = TareasGenericas.Codigo WHERE EstudiantesTareas.Email='" & Session("correo") & "')", conClsf)

                Dim bldTar As New SqlCommandBuilder(dapTar)

                dapTar.Fill(dstTar, "Tareas")

                tblTar = dstTar.Tables("Tareas")

                Dim dv As New DataView(tblTar, "CodAsig = '" + DropDownList1.SelectedValue + "'", "Codigo", DataViewRowState.CurrentRows)
                Session("vista") = dv
                Dim dt = dv.ToTable(True, "Codigo", "Descripcion", "HEstimadas", "TipoTarea")
                GridView1.DataSource = dt
                GridView1.DataBind()

                Session("Tareas") = dstTar
            End If
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged

        tblTar = dstTar.Tables("Tareas")

        Dim dv As New DataView(tblTar, "CodAsig = '" + DropDownList1.SelectedValue + "'", "Codigo", DataViewRowState.CurrentRows)
        Session("vista") = dv
        Dim dt = dv.ToTable(True, "Codigo", "Descripcion", "HEstimadas", "TipoTarea")

        GridView1.DataSource = dt
        GridView1.DataBind()

    End Sub

    Protected Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click
        Application.Lock()
        Application.Contents("Alumnos").Remove(Session("correo"))
        Application.UnLock()
        Session.Abandon()
        FormsAuthentication.SignOut()
        Response.Redirect("../Inicio.aspx")
    End Sub
End Class