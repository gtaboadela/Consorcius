Imports Consorcius.Business
Imports Consorcius.Entity

Public Class UsuarioVista
#Region "Constructores"
    Sub New()
        _usuario = New Usuario
        _usuarioController = New UsuarioController
    End Sub
#End Region
#Region "Propiedades"
    Private _usuario As Usuario
    Public ReadOnly Property Usuario As Usuario
        Get
            Return _usuario
        End Get
    End Property

    Private _usuarioController As UsuarioController
    Public ReadOnly Property UsuarioController As UsuarioController
        Get
            Return _usuarioController
        End Get
    End Property
#End Region


End Class
