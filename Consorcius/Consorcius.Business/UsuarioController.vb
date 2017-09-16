Imports Consorcius.Entity
Imports Consorcius.Data

Public Class UsuarioController
    Dim _usuarioDal As New UsuarioDAO

    Dim resultado As Boolean

#Region "Funciones Publicas CRUD"
    Public Function Agregar(ByRef pObjeto As Object) As Boolean
        pObjeto.hash = CalcularDigitoH(pObjeto)
        resultado = _usuarioDal.Agregar(pObjeto)
        If resultado Then
            ActualizarDigitoV()
        End If
        Return resultado
    End Function
    Public Function Consultar(ByRef pObjeto As Object) As Boolean
        resultado = _usuarioDal.Consultar(pObjeto)
    End Function

    Public Function Eliminar(ByRef pObjeto As Object) As Boolean
        Return _usuarioDal.Eliminar(pObjeto)
        If resultado Then
            ActualizarDigitoV()
        End If
        Return resultado
    End Function

    Public Function Modificar(ByRef pObjeto As Object) As Boolean
        resultado = _usuarioDal.Modificar(pObjeto)

        If resultado Then
            ActualizarDigitoV()
        End If

        Return resultado
    End Function

    Public Function Listar(pCantidad As Integer) As List(Of Consorcius.Entity.Usuario)
        Return _usuarioDal.Listar(pCantidad)
    End Function

#End Region

#Region "Funciones Privadas"
    Private Sub ActualizarDigitoV()
        Dim _verificador As New VerificadorController
        _verificador.ActualizarV("USUARIO")
    End Sub

    Private Function CalcularDigitoH(pObjeto As Object) As String
        Dim _verificador As New VerificadorController
        Return _verificador.CalcularH(pObjeto)
    End Function


#End Region

End Class
