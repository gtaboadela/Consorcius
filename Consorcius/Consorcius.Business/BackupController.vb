Imports Consorcius.Data
Imports Consorcius.Entity

Public Class BackupController
    Dim _backupDal As New BackupDAO

#Region "Funciones Publicas"


    Public Function Listar(pCantidad As Integer) As List(Of Backup)

        Try
            Return _backupDal.Listar(pCantidad)

        Catch ex As Exception

        End Try
    End Function


    Public Function Agregar(pBackup As Backup) As Boolean

        Try
            Return _backupDal.Agregar(pBackup)
        Catch ex As Exception

        End Try

    End Function

    Public Function Restore(pBackup As Backup) As Boolean

        Try
            Return _backupDal.Restore(pBackup)
        Catch ex As Exception
            Return False
        End Try

    End Function
#End Region

End Class
