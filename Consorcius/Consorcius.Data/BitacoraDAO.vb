Imports Consorcius.Entity

Public Class BitacoraDAO

#Region "Public Functions"
    Public Sub Agregar(pBitacora As Bitacora)
        Dim _listaParametros As New List(Of SQLParametros)
        _listaParametros.AddRange(
            {
                New SQLParametros("@BI_idActividadTipo", SqlDbType.Int, pBitacora.IdActividadTipo),
                New SQLParametros("@BI_usuario", SqlDbType.VarChar, pBitacora.Usuario),
                New SQLParametros("@BI_descripcion", SqlDbType.VarChar, pBitacora.Descripcion)
            })
        Try
            SQLComandos.NoRet("SP_agregarBitacora", _listaParametros)
        Catch ex As Exception

        End Try

    End Sub

    Public Function ValidarActividadLogin(pIdActividad As Integer, pUsuario As String, pIntentos As Integer, pMinutos As Integer) As Boolean
        Dim _listaParametros As New List(Of SQLParametros)
        _listaParametros.AddRange(
            {New SQLParametros("@BI_idActividadTipo", SqlDbType.Int, pIdActividad),
             New SQLParametros("@BI_usuario", SqlDbType.VarChar, pUsuario),
             New SQLParametros("@intentosFallidos", SqlDbType.Int, pIntentos),
             New SQLParametros("@periodoMinutos", SqlDbType.Int, pMinutos)})
        Try
            Dim strComando = "SELECT ISNULL (
		                    (SELECT CASE WHEN COUNT(1) > 0 THEN 1 ELSE 0 END AS [Value]
		                    From [dbo].[BITACORA]
		                    Where BI_idActividadTipo = @BI_idActividadTipo And BI_usuario = @BI_usuario And BI_fecha >= DATEADD(MI,-@periodoMinutos, GETDATE()) having count(1) >=@intentosFallidos
	                        ),0)"
            Dim Resultado As Integer = SQLComandos.Scalar(strComando, _listaParametros, True)
            Return Resultado
        Catch ex As Exception

        End Try
        Return 0
    End Function
    Public Function Listar(ByVal pCantidad As Integer) As List(Of Bitacora)

        Dim _listaParametros As New List(Of SQLParametros)
        _listaParametros.Add(New SQLParametros("@cantidad", SqlDbType.Int, pCantidad))
        Dim ListaBitacora As New List(Of Bitacora)
        Try
            Dim dt As DataTable = SQLComandos.RetDatatable("SP_ListarBitacora", _listaParametros)
            If dt.Rows.Count > 0 Then
                For Each dr As DataRow In dt.Rows
                    ListaBitacora.Add(New Bitacora(dr.Item(0), dr.Item(1), dr.Item(2), dr.Item(3), dr.Item(4)))
                Next
            End If
        Catch ex As Exception

        End Try
        Return ListaBitacora
    End Function

    Public Sub Limpiar()
        Try
            SQLComandos.NoRet("SP_limpiarBitacora")
        Catch ex As Exception

        End Try


    End Sub

#End Region
End Class
