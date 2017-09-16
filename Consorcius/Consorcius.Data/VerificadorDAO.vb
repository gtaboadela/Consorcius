Public Class VerificadorDAO
#Region "Funciones publicas"

    Public Function Consultar(pDVVName As String) As String
        Dim DVV As String

        Dim _listaParametros As New List(Of SQLParametros)
        _listaParametros.Add(New SQLParametros("@DVVName", SqlDbType.VarChar, pDVVName))
        Try
            Dim dt As DataTable = SQLComandos.RetDatatable("SP_ConsultarDVV", _listaParametros)
            DVV = dt.Rows(0).Item("DV_hash")

        Catch

        End Try

        Return DVV

    End Function

    Public Function ActualizarV(pDVVName As String, pDVV As String) As String
        Dim _listaParametros As New List(Of SQLParametros)
        _listaParametros.Add(New SQLParametros("@DVVName", SqlDbType.VarChar, pDVVName))
        _listaParametros.Add(New SQLParametros("@DVV", SqlDbType.VarChar, pDVV))
        Try
            SQLComandos.NoRet("SP_actualizarDVV", _listaParametros)
        Catch ex As Exception
            Console.Write("Error al actualizar DVV", ex)
            Return False
        End Try
        Return True
    End Function

#End Region


End Class
