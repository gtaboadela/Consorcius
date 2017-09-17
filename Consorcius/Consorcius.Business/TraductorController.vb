Imports Consorcius.Entity
Imports Consorcius.Data



Public Class TraductorController

    Dim _traductorDal As New TraductorDAO
    Public Function Listar(pIdPagina As String, pIdIdioma As String) As List(Of Control)

        Try
            Return _traductorDal.ListarControles(pIdPagina, pIdIdioma)

        Catch ex As Exception

        End Try

    End Function

    Public Function ListarIdiomas() As List(Of String)

        Try
            Return _traductorDal.ListarIdiomas()

        Catch ex As Exception

        End Try

    End Function

End Class
