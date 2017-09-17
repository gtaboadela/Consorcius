Imports Consorcius.Entity

Public Class TraductorDAO

#Region "Funciones Publicas"

    Public Function ListarControles(pIdPagina As String, pIdIdioma As String) As List(Of Control)
        Dim _listaParametros As New List(Of SQLParametros)
        _listaParametros.Add(New SQLParametros("@idPagina", SqlDbType.VarChar, pIdPagina))
        _listaParametros.Add(New SQLParametros("@idIdioma", SqlDbType.VarChar, pIdIdioma))

        Dim ListaControles As New List(Of Control)
        Try
            Dim dt As DataTable = SQLComandos.RetDatatable("SP_listarControlPaginaIdioma", _listaParametros)
            If dt.Rows.Count > 0 Then
                For Each dr As DataRow In dt.Rows
                    ListaControles.Add(New Control(dr.Item(0), dr.Item(1), dr.Item(2), dr.Item(3)))
                Next
            End If
        Catch ex As Exception

        End Try
        Return ListaControles

    End Function

    Public Function ListarIdiomas() As List(Of String)

        Dim ListaIdiomas As New List(Of String)
        Try
            Dim strComando = "SELECT ID_idIdioma FROM IDIOMA"
            Dim dt As DataTable = SQLComandos.RetDatatable(strComando, True)
            If dt.Rows.Count > 0 Then
                For Each dr As DataRow In dt.Rows
                    ListaIdiomas.Add(dr.Item(0))
                Next
            End If
        Catch ex As Exception

        End Try
        Return ListaIdiomas


    End Function


#End Region

End Class
