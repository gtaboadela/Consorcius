Imports Consorcius.Data

Public Class RespaldoController
    Dim _respaldoDal As New RespaldoDAO
    Public Function Backup(pNombreBackup As String, pPath As String) As Boolean
        _respaldoDal.Backup(pNombreBackup, pPath)
        Return True
    End Function

    Public Function Restore(pNombreBackup As String, pPath As String) As Boolean
        _respaldoDal.Restore(pNombreBackup, pPath)
        Return True
    End Function

End Class
