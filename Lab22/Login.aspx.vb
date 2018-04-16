Imports AccesoDatos.accesodatosSQL
Public Class WebForm3
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If Page.IsValid Then
            conectar()
            Dim pass = obtenerpassyconfytipoconemail(txtEmail.Text)
            Dim encrypter = New Encriptador.EncriptarSHA1
            Dim passEnc = encrypter.getSHA1Hash(txtPass1.Text)

            'Label1.Text = passEnc

            If pass.Read Then
                If pass.Item("confirmado") = 0 Then
                    Label1.Text = "Cuenta no confirmada"
                Else
                    Session("correo") = txtEmail.Text
                    If passEnc = Trim(pass.Item("pass")) Then
                        If pass.Item("tipo") = "Profesor" Then
                            cerrarconexion()
                            Session("tipo") = "Profesor"
                            If txtEmail.Text = "vadillo@ehu.es" Then
                                FormsAuthentication.SetAuthCookie("Vadillo", False)
                            Else
                                FormsAuthentication.SetAuthCookie("Profesor", False)
                            End If

                            Response.Redirect("./Profesor/Profesor.aspx")
                        ElseIf pass.Item("tipo") = "Admin" Then
                            cerrarconexion()
                            FormsAuthentication.SetAuthCookie("Admin", False)
                            Response.Redirect("./Admin/Admin.aspx")
                        Else
                            cerrarconexion()
                            FormsAuthentication.SetAuthCookie("Alumno", False)
                            Response.Redirect("./Alumno/Alumno.aspx")
                        End If
                    Else
                        Label1.Text = "Contraseña incorrecta"
                    End If
                End If
            Else
                Label1.Text = "El usuario no esta registrado"
            End If
        End If
        cerrarconexion()
    End Sub
End Class