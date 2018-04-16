Imports System.Security.Cryptography
Imports System.Text

Public Class EncriptarSHA1
    Function getSHA1Hash(ByVal strToHash As String) As String

        Dim sha1Obj As New SHA1CryptoServiceProvider
        Dim bytesToHash() As Byte = Encoding.ASCII.GetBytes(strToHash)

        bytesToHash = sha1Obj.ComputeHash(bytesToHash)

        Dim strResult As String = ""

        For Each b As Byte In bytesToHash
            strResult += b.ToString("x2")
        Next

        Return strResult

    End Function
End Class
