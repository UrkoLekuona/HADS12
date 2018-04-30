Imports System.Net.Mail

Public Class EmailSender
    Public Shared Function enviarEmail(ByVal email As String, ByVal numConf As Integer, ByVal tipo As Integer) As Boolean
        Try
            'Direccion de origen
            Dim from_address As New MailAddress("ulekuona001@ikasle.ehu.eus", "HADS12")
            'Direccion de destino
            Dim to_address As New MailAddress(email)
            'Password de la cuenta
            Dim from_pass As String = "Fritanga12"
            'Objeto para el cliente smtp
            Dim smtp As New SmtpClient
            'Host en este caso el servidor de gmail
            smtp.Host = "smtp.ehu.eus"
            'Puerto
            smtp.Port = 587
            'SSL activado para que se manden correos de manera segura
            smtp.EnableSsl = True
            'No usar los credenciales por defecto ya que si no no funciona
            smtp.UseDefaultCredentials = False
            'Credenciales
            smtp.Credentials = New System.Net.NetworkCredential(from_address.Address, from_pass)
            'Creamos el mensaje con los parametros de origen y destino
            Dim message As New MailMessage(from_address, to_address)
            If tipo = 0 Then
                'Añadimos el asunto
                message.Subject = "Email de confirmacion"
                'Concatenamos el cuerpo del mensaje a la plantilla
                ' message.Body = "<html><head></head><body>" + "<a href=""localhost:2522/Confirmado.aspx?email=" & email & "&numConf=" & numConf & """>localhost:2522/Confirmado.aspx?email=" & email & "&numConf=" & numConf & "</a>" + "</body></html>"
                message.Body = "<html><head></head><body>" + "<a href=""https://hads1812.azurewebsites.net/Confirmado.aspx?email=" & email & "&numConf=" & numConf & """>https://hads1812.azurewebsites.net/Confirmado.aspx?email=" & email & "&numConf=" & numConf & "</a>" + "</body></html>"
                'Definimos el cuerpo como html para poder escojer mejor como lo mandamos
                message.IsBodyHtml = True
            Else
                'Añadimos el asunto
                message.Subject = "Codigo para el cambio de contraseña"
                'Concatenamos el cuerpo del mensaje a la plantilla
                message.Body = numConf
                'Definimos el cuerpo como html para poder escojer mejor como lo mandamos
                message.IsBodyHtml = False
            End If
            'Se envia el correo
            smtp.Send(message)
        Catch e As Exception
            Return False
        End Try
        Return True
    End Function
End Class
