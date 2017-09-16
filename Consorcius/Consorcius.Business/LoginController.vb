Imports Consorcius.Entity
Imports Consorcius.Data


Public Class LoginController
    Dim _bitacoraController As New BitacoraController

#Region "Funciones Publicas"
    Public Function IniciarSesion(pUsuario As Usuario) As Integer
        Dim _encriptador As New EncriptadorController
        Dim _usuarioDal As New UsuarioDAO
        Dim _verificador As New VerificadorController
        'guardo la clave sin encriptar
        Dim clave As String = pUsuario.clave

        Try
            If _usuarioDal.Consultar(pUsuario) Then
                _bitacoraController.Agregar(New Bitacora(Bitacora.TipoActividad.IntentoLogin, pUsuario.usuario, "Intento de Login; Usuario: " + pUsuario.usuario))
                'Verificar actividad de login
                If _bitacoraController.ValidarActividadLogin(Bitacora.TipoActividad.ClaveIncorrecta, pUsuario.usuario, 3, 30) AndAlso pUsuario.bloqueado = False Then
                    Dim _usuarioController As New UsuarioController
                    pUsuario.bloqueado = True
                    pUsuario.hash = _verificador.CalcularH(pUsuario)
                    _usuarioController.Modificar(pUsuario)
                    _bitacoraController.Agregar(New Bitacora(Bitacora.TipoActividad.BloqueoDeUsuario, pUsuario.usuario, "Se ha bloqueado el Usuario: " + pUsuario.usuario))
                End If

                If pUsuario.eliminado Then
                    _bitacoraController.Agregar(New Bitacora(Bitacora.TipoActividad.UsuarioInexistente, pUsuario.usuario, "Intento de login fallido, usuario inexistente o eliminado; Usuario: " + pUsuario.usuario))
                    Return 1
                End If
                If pUsuario.bloqueado Then
                    _bitacoraController.Agregar(New Bitacora(Bitacora.TipoActividad.UsuarioBloqueado, pUsuario.usuario, "Intento de login fallido, usuario bloqueado; Usuario: " + pUsuario.usuario))
                    Return 2
                End If
                If pUsuario.clave <> _encriptador.Encriptar(clave) Then
                    _bitacoraController.Agregar(New Bitacora(Bitacora.TipoActividad.ClaveIncorrecta, pUsuario.usuario, "Intento de login fallido, la clave no concuerda; Usuario: " + pUsuario.usuario))
                    Return 3
                Else
                    'Usuario esta OK
                    _bitacoraController.Agregar(New Bitacora(Bitacora.TipoActividad.LoginExitoso, pUsuario.usuario, "Login exitoso,Usuario: " + pUsuario.usuario))
                Return 0
            End If
            Else
                _bitacoraController.Agregar(New Bitacora(Bitacora.TipoActividad.UsuarioInexistente, pUsuario.usuario, "Intento de login fallido, usuario inexistente o eliminado; Usuario: " + pUsuario.usuario))
                Return 1
            End If

        Catch ex As Exception


        End Try

        Return False

    End Function

    Public Sub CerrarSesion(pUsuario As String)
        _bitacoraController.Agregar(New Bitacora(Bitacora.TipoActividad.Logout, pUsuario, "El usuario " + pUsuario + " se ha deslogueado del sistema."))
    End Sub




#End Region
End Class
