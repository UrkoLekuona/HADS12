Imports System.Web.Services
Imports System.Web.Services.Protocols
Imports System.ComponentModel
Imports AccesoDatos.accesodatosSQL
Imports System.IO

' Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente.
<System.Web.Script.Services.ScriptService()>
<System.Web.Services.WebService(Namespace:="http://tempuri.org/")> _
<System.Web.Services.WebServiceBinding(ConformsTo:=WsiProfiles.BasicProfile1_1)> _
<ToolboxItem(False)> _
Public Class Servicio1
    Inherits System.Web.Services.WebService

    <WebMethod()>
    Public Function DedicacionMedia(ByVal asignatura As String) As Double
        conectar()
        Dim x = Math.Round(HorasAsig(asignatura))
        cerrarconexion()
        Return x

    End Function

    <WebMethod()>
    Public Function comprobar(ByVal pass As String) As String
        Dim text As String = File.ReadAllText(Server.MapPath("./Diccionarios/toppasswords.txt"))
        Dim index As Integer = text.IndexOf(pass)
        If index >= 0 Then
            Return "INVALIDA"
        Else
            Return "VALIDA"
        End If
    End Function

End Class