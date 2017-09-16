Imports System.Data.SqlClient
Imports System.Data


Public Class SQLConexion
    Private Shared SQLConexion As SqlConnection
    Shared Function ObjConexion() As SqlConnection
        If SQLConexion Is Nothing Then SQLConexion = New SqlConnection(Data.My.Resources.strConexion)
        If SQLConexion.Database <> "Consorcius" Then SQLConexion = New SqlConnection(Data.My.Resources.strConexion)
        If SQLConexion.State = ConnectionState.Closed Then SQLConexion.Open()
        Return SQLConexion
    End Function

End Class
