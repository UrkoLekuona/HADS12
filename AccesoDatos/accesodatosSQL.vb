Imports System.Data.SqlClient

Public Class accesodatosSQL
    Private Shared conexion As New SqlConnection
    Private Shared comando As New SqlCommand
    Public Shared Function conectar() As String
        Try
            conexion.ConnectionString = “Server=tcp:hads12iu.database.windows.net,1433;Initial Catalog=HADS-12-Tareas;Persist Security Info=False;User ID=ulekuona001;Password=Fritanga10;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;"
            conexion.Open()
        Catch ex As Exception
            Return "ERROR DE CONEXIÓN: " + ex.Message
        End Try
        Return "CONEXION OK"
    End Function

    Public Shared Function cerrarconexion() As String
        Try
            conexion.Close()
        Catch ex As Exception
            Return "ERROR DE CONEXIÓN: " + ex.Message
        End Try
        Return "CONEXION CERRADA"
    End Function

    Public Shared Function comprobaremail(ByVal email As String) As SqlDataReader
        Dim st = "select * from Usuarios where email='" + email + "'"
        comando = New SqlCommand(st, conexion)
        Return comando.ExecuteReader()
    End Function

    Public Shared Function comprobaremailconfirmacion(ByVal email As String) As SqlDataReader
        Dim st = "select * from Usuarios where email='" + email + "'"
        comando = New SqlCommand(st, conexion)
        Return comando.ExecuteReader()
    End Function

    Public Shared Function confirmacion(ByVal email As String) As Integer
        Dim st = "UPDATE usuarios SET CONFIRMADO=1 WHERE email = '" + email + "'"
        comando = New SqlCommand(st, conexion)
        Return comando.ExecuteNonQuery
    End Function

    Public Shared Function obtenerdatos() As SqlDataReader
        Dim st = "select * from tabla"
        comando = New SqlCommand(st, conexion)
        Return (comando.ExecuteReader())
    End Function

    Public Shared Function obtenernombreconemail(ByVal correo As String) As SqlDataReader
        Dim st = "select nombre from Usuarios where email='" + correo + "'"
        comando = New SqlCommand(st, conexion)
        Return (comando.ExecuteReader())
    End Function

    Public Shared Function obtenerpassyconfytipoconemail(ByVal correo As String) As SqlDataReader
        Dim st = "select confirmado, pass, tipo from Usuarios where email='" + correo + "'"
        comando = New SqlCommand(st, conexion)
        Return (comando.ExecuteReader())
    End Function

    Public Shared Function registrar(ByVal correo As String, ByVal nombre As String, ByVal apellidos As String, ByVal contrasena As String, ByVal rol As String) As Integer
        Randomize()
        Dim NumConf = CLng(Rnd() * 9000000) + 1000000
        contrasena = Trim(contrasena)
        Dim st = "insert into Usuarios (email, nombre, apellidos, numconfir, confirmado, tipo, pass) values ('" & correo & "', '" & nombre & "', '" & apellidos & "', '" & NumConf & "', 0, '" & rol & "', '" & contrasena & "')"
        Dim numregs As Integer
        comando = New SqlCommand(st, conexion)
        Try
            numregs = comando.ExecuteNonQuery()
        Catch ex As Exception
            Return ex.Message
        End Try
        If numregs = 1 Then
            Return NumConf
        Else
            Return 0
        End If
    End Function
    Public Shared Function existeEmail(ByVal correo As String) As Boolean
        Dim st = "select * from Usuarios where email='" + correo + "'"
        comando = New SqlCommand(st, conexion)
        Dim resultado = comando.ExecuteReader()
        If resultado.Read Then
            Return True
        Else
            Return False
        End If
    End Function

    Public Shared Function updatePass(ByVal correo As String, ByVal pass As String) As Boolean
        Dim numregs As Integer
        Dim st = "update Usuarios set pass='" + pass + "' where email='" + correo + "'"
        comando = New SqlCommand(st, conexion)
        Try
            numregs = comando.ExecuteNonQuery()
        Catch ex As Exception
            Return ex.Message
        End Try
        If numregs = 1 Then
            Return True
        Else
            Return False
        End If
    End Function

    Public Shared Function HorasAsig(ByVal Asignaturas As String) As Integer
        Dim st = "select AVG(hreales) from EstudiantesTareas Join TareasGenericas on codtarea=codigo where codasig='" + Asignaturas + "'"
        comando = New SqlCommand(st, conexion)
        Dim reader = comando.ExecuteReader
        reader.Read()

        If TypeOf reader.Item(0) Is Integer Then
            Return DirectCast(reader.Item(0), Integer)
        Else
            Return 0
        End If
    End Function

End Class
