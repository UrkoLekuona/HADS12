Imports AccesoDatos.accesodatosSQL
Imports EmailSenderLibrary.EmailSender
Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If Page.IsValid Then
            conectar()
            Dim i = comprobaremail(txtEmail.Text)
            If i.HasRows = False Then
                i.Close()
                Dim numConf = registrar(txtEmail.Text, txtName.Text, txtApe.Text, txtPass1.Text, dropRol.SelectedValue)
                enviarEmail(txtEmail.Text, numConf, 0)
                cerrarconexion()
                Response.Redirect("./Confirmar.aspx")
            End If
            i.Close()
            cerrarconexion()
            Label2.Text = "Correo ya en uso"
        End If
    End Sub
End Class