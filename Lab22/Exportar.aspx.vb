Imports System.IO
Imports System.Xml
Imports Newtonsoft.Json

Public Class Exportar
    Inherits System.Web.UI.Page

    Dim dttar As New DataTable("tarea")
    Dim dstTar As New DataSet("tareas")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged

    End Sub

    Protected Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click
        Session.Abandon()
        Response.Redirect("Inicio.aspx")
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        generar_dataTable()

        dttar.Columns(0).ColumnMapping = MappingType.Attribute

        dttar.WriteXml(Server.MapPath("App_Data/" & DropDownList1.SelectedValue & ".xml"))

        Dim xml As New XmlDocument
        xml.Load(Server.MapPath("App_Data/" & DropDownList1.SelectedValue & ".xml"))

        Dim atr As XmlAttribute = xml.CreateAttribute("xmlns:has")
        atr.Value = "http://ji.ehu.es/has"

        xml.DocumentElement.SetAttributeNode(atr)
        xml.Save(Server.MapPath("App_Data/" & DropDownList1.SelectedValue & ".xml"))

        lblCorrecto.Text = "Las tareas seleccionadas se han exportado correctamente a App_Data/" + DropDownList1.SelectedValue + ".xml "

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        generar_dataTable()

        Dim json = JsonConvert.SerializeObject(dstTar, Newtonsoft.Json.Formatting.Indented)
        File.WriteAllText(Server.MapPath("App_Data/" & DropDownList1.SelectedValue & ".json"), json)

        lblCorrecto.Text = "Las tareas seleccionadas se han exportado correctamente a App_Data/" + DropDownList1.SelectedValue + ".json "

    End Sub

    Sub generar_dataTable()

        dstTar.Tables.Add(dttar)

        'Add columns to DataTable.
        For Each cell As TableCell In GridView1.HeaderRow.Cells
            dttar.Columns.Add(cell.Text)
        Next

        'Loop through the GridView and copy rows.
        For Each row As GridViewRow In GridView1.Rows
            dttar.Rows.Add()
            For i As Integer = 0 To row.Cells.Count - 1
                If i = 3 Then
                    dttar.Rows(row.RowIndex)(i) = (CType(row.Cells(i).Controls(0), CheckBox)).Checked
                Else
                    dttar.Rows(row.RowIndex)(i) = row.Cells(i).Text
                End If
            Next
        Next
    End Sub
End Class