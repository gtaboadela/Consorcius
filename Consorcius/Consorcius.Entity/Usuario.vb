Public Class Usuario

#Region "Propiedades"
    Private _apellido As String
    Public Property apellido() As String
        Get
            Return _apellido
        End Get
        Set(value As String)
            _apellido = value

        End Set
    End Property
    Private _bloqueado As Boolean
    Public Property bloqueado As Boolean
        Get
            Return _bloqueado
        End Get
        Set(value As Boolean)
            _bloqueado = value
        End Set
    End Property
    Private _clave As String
    Public Property clave As String
        Get
            Return _clave
        End Get
        Set(value As String)
            _clave = value
        End Set
    End Property
    Private _eliminado As Boolean
    Public Property eliminado As Boolean
        Get
            Return _eliminado
        End Get
        Set(value As Boolean)
            _eliminado = value
        End Set
    End Property
    Private _email As String
    Public Property email As String
        Get
            Return _email
        End Get
        Set(value As String)
            _email = value
        End Set
    End Property
    Private _nombre As String
    Public Property nombre As String
        Get
            Return _nombre
        End Get
        Set(value As String)
            _nombre = value
        End Set
    End Property
    Private _usuario As String
    Public Property usuario As String
        Get
            Return _usuario
        End Get
        Set(value As String)
            _usuario = value
        End Set
    End Property
    Private _idioma As String
    Public Property Idioma() As String
        Get
            Return _idioma
        End Get
        Set(value As String)
            _idioma = value
        End Set
    End Property
    Private _idCliente As Integer
    Public Property idCliente() As Integer
        Get
            Return _idCliente
        End Get
        Set(value As Integer)
            _idCliente = value

        End Set
    End Property

    Private _hash As String
    Public Property hash() As String
        Get
            Return _hash
        End Get
        Set(value As String)
            _hash = value

        End Set
    End Property
#End Region

#Region "Constructores"
    Public Sub New()

    End Sub
    Public Sub New(ByVal pApellido As String, pBloqueado As Boolean, pClave As String, pEliminado As Boolean, pEmail As String, ByVal pNombre As String, ByVal pUsuario As String, pIdioma As String, pIDCliente As Integer, pHash As String)
        Me.apellido = pApellido
        Me.bloqueado = pBloqueado
        Me.clave = pClave
        Me.eliminado = pEliminado
        Me.email = pEmail
        Me.nombre = pNombre
        Me.usuario = pUsuario
        Me.Idioma = pIdioma
        Me.idCliente = pIDCliente
        Me.hash = pHash
    End Sub

#End Region

End Class
