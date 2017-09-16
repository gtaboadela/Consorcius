Imports Consorcius.Entity


Public Class BackupDAO
#Region "Funciones Publicas"

    Public Function Listar(pCantidad As Integer) As List(Of Backup)
        Dim _listaParametros As New List(Of SQLParametros)
        _listaParametros.Add(New SQLParametros("@cantidad", SqlDbType.Int, pCantidad))
        Dim ListaBackup As New List(Of Backup)
        Try
            Dim dt As DataTable = SQLComandos.RetDatatable("SP_ListarBackup", _listaParametros)
            If dt.Rows.Count > 0 Then
                For Each dr As DataRow In dt.Rows
                    ListaBackup.Add(New Backup(dr.Item(0), dr.Item(1), dr.Item(2), dr.Item(3)))
                Next
            End If
        Catch ex As Exception

        End Try
        Return ListaBackup

    End Function

    Public Function Agregar(pObjeto As Object) As Boolean
        Dim _objeto As Backup = Activator.CreateInstance(pObjeto.GetType)
        _objeto = pObjeto

        Dim _listaParametros As New List(Of SQLParametros)
        _listaParametros.AddRange({
        New SQLParametros("@BK_nombreBackup", SqlDbType.VarChar, _objeto.Nombre),
        New SQLParametros("@BK_path", SqlDbType.VarChar, _objeto.Path),
        New SQLParametros("@BK_descripcion", SqlDbType.VarChar, _objeto.Descripcion)})

        Try
            SQLComandos.NoRet("SP_realizarBackup", _listaParametros)
        Catch ex As Exception

            Return False
        End Try

        Return True

    End Function

    Public Function Restore(pBackup As Backup) As Boolean


        Dim strComando As String = "USE [master]
            ALTER DATABASE [Consorcius] SET SINGLE_USER WITH ROLLBACK IMMEDIATE 
            RESTORE DATABASE Consorcius FROM DISK = '" + pBackup.Path + "\" + pBackup.Nombre + "' WITH REPLACE
			ALTER DATABASE [Consorcius] SET MULTI_USER"
        Try
            SQLComandos.NoRet(strComando, True)

        Catch ex As Exception

            Return False

        End Try

        Return True
    End Function

#End Region

End Class
