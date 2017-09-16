Public Class Bitacora
    Enum TipoActividad
        IntentoLogin = 1
        LoginExitoso = 2
        LoginFallido = 3
        ClaveIncorrecta = 4
        UsuarioInexistente = 5
        UsuarioBloqueado = 6
        Logout = 7
        LimpiarBitacora = 8
        BloqueoDeUsuario = 9
        DVVFallida = 10
        DVHFallida = 11
        IntegridadOK = 12
        IntegridadNoOK = 13
        Restore = 14
        Backup = 15



    End Enum


#Region "Propiedades"
    Private _usuario As String
    Public Property Usuario As String
        Get
            Return _usuario
        End Get
        Set(value As String)
            _usuario = value
        End Set
    End Property

    Private _descripcion As String
    Public Property Descripcion As String
        Get
            Return _descripcion
        End Get
        Set(value As String)
            _descripcion = value
        End Set
    End Property
    Private _fecha As Date
    Public Property Fecha As Date
        Get
            Return _fecha
        End Get
        Set(value As Date)
            _fecha = value
        End Set
    End Property
    Private _idActividad As Integer
    Public Property IdActividad As Integer
        Get
            Return _idActividad
        End Get
        Set(value As Integer)
            _idActividad = value
        End Set
    End Property
    Private _idActividadTipo As Integer
    Public Property IdActividadTipo As Integer
        Get
            Return _idActividadTipo
        End Get
        Set(value As Integer)
            _idActividadTipo = value
        End Set
    End Property
    Private _idActividadTipoDescripcion As String
    Public Property IdActividadTipoDescripcion As String
        Get
            Return _idActividadTipoDescripcion
        End Get
        Set(value As String)
            _idActividadTipoDescripcion = value
        End Set
    End Property
#End Region

#Region "Constructores"
    Public Sub New()

    End Sub
    Public Sub New(pTipo As Integer)
        Me.IdActividadTipo = pTipo
    End Sub
    Public Sub New(pTipo As Integer, pDescripcion As String)
        Me.IdActividadTipo = pTipo
        Me.Descripcion = pDescripcion
    End Sub
    Public Sub New(pTipo As Integer, pUsuario As String, pDescripcion As String)
        Me.Usuario = pUsuario
        Me.IdActividadTipo = pTipo
        Me.Descripcion = pDescripcion
    End Sub
    Public Sub New(pFecha As DateTime, pTipo As Integer, pDescripcionTipo As String, pDescripcion As String, pUsuario As String)
        Me.Fecha = pFecha
        Me.IdActividadTipo = pTipo
        Me.IdActividadTipoDescripcion = pDescripcionTipo
        Me.Descripcion = pDescripcion
        Me.Usuario = pUsuario
    End Sub

#End Region

End Class
