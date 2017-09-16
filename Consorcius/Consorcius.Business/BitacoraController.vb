Imports Consorcius.Entity
Imports Consorcius.Data


Public Class BitacoraController
    Dim _bitacoraDAO As New BitacoraDAO

#Region "Public Functions"
    Public Sub Agregar(pBitacora As Bitacora)
        Try
            _bitacoraDAO.Agregar(pBitacora)
        Catch ex As Exception

        End Try

    End Sub

    Public Function ValidarActividadLogin(pIdActividad As Integer, pUsuario As String, pIntentos As Integer, pMinutos As Integer) As Boolean
        Try
            Return _bitacoraDAO.ValidarActividadLogin(pIdActividad, pUsuario, pIntentos, pMinutos)
        Catch ex As Exception
            Return False
        End Try

    End Function
    Public Function Listar(pCantidad As Integer) As List(Of Bitacora)
        Try
            Return _bitacoraDAO.Listar(pCantidad)
        Catch ex As Exception

        End Try

    End Function

    Public Sub Limpiar(pUsuario As String)
        Try
            _bitacoraDAO.Limpiar()
            _bitacoraDAO.Agregar(New Bitacora(Bitacora.TipoActividad.LimpiarBitacora, pUsuario, "El usuario " + pUsuario + " ha borrado la bitacora"))
        Catch ex As Exception

        End Try


    End Sub


#End Region

End Class
