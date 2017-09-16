Imports System.Text
Imports System.Security.Cryptography


Public Class EncriptadorController

#Region "Funciones Publicas"

    Public Function Encriptar(pTexto As String) As String
        Dim textoHasheado As String
        Dim salt As String = "3215"
        Dim codificador As New UTF8Encoding()
        Dim hashedBytes As Byte()
        Dim hasher As New MD5CryptoServiceProvider
        Dim textoOrigenBytes As Byte() = codificador.GetBytes(pTexto)
        Dim saltBytes As Byte() = codificador.GetBytes(pTexto)
        ' Crear nuevo array con texto + salt
        Dim textoSaltBytes As Byte() = New Byte(textoOrigenBytes.Length + saltBytes.Length - 1) {}
        For i As Integer = 0 To textoOrigenBytes.Length - 1
            textoSaltBytes(i) = textoOrigenBytes(i)
        Next
        For i As Integer = 0 To saltBytes.Length - 1
            textoSaltBytes(i + textoOrigenBytes.Length) = saltBytes(i)
        Next

        'Calcular Hash de los bytes del txeto + salt
        hashedBytes = hasher.ComputeHash(textoSaltBytes)
        Dim hashSaladoBytes() As Byte = New Byte(hashedBytes.Length + saltBytes.Length - 1) {}
        For x As Integer = 0 To hashedBytes.Length - 1
            hashSaladoBytes(x) = hashedBytes(x)
        Next x
        For x As Integer = 0 To saltBytes.Length - 1
            hashSaladoBytes(hashedBytes.Length + x) = saltBytes(x)
        Next x
        textoHasheado = Convert.ToBase64String(hashSaladoBytes)
        Return textoHasheado
    End Function

#End Region

End Class
