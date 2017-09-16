Public Class RespaldoDAO

#Region "funciones publicas"

    Public Function Backup(pNombreBackup As String, pPath As String) As Boolean

        Dim _listaParametros As New List(Of SQLParametros)
        _listaParametros.Add(New SQLParametros("@BK_nombreBackup", SqlDbType.VarChar, pNombreBackup))
        _listaParametros.Add(New SQLParametros("@BK_path", SqlDbType.VarChar, pPath))
        Try
            SQLComandos.NoRet("SP_realizarBackup", _listaParametros)

        Catch

        End Try
        Return True
    End Function

    Public Function Restore(pNombreBackup As String, pPath As String) As Boolean

        Dim strComando As String = "USE [master]
            ALTER DATABASE [Consorcius] SET SINGLE_USER WITH ROLLBACK IMMEDIATE 
            RESTORE DATABASE Consorcius FROM DISK = '" + pPath + "\" + pNombreBackup + "' WITH REPLACE
			ALTER DATABASE [Consorcius] SET MULTI_USER"

        SQLComandos.NoRet(strComando, True)





        Return True
    End Function

#End Region


End Class
