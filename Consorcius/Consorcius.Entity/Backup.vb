Public Class Backup
#Region "Propiedades"
    Private _nombre As String
    Public Property Nombre As String
        Get
            Return _nombre
        End Get
        Set(value As String)
            _nombre = value
        End Set
    End Property


    Private _fecha As String
    Public Property Fecha As DateTime
        Get
            Return _fecha
        End Get
        Set(value As DateTime)
            _fecha = value
        End Set
    End Property
    Private _path As String
    Public Property Path As String
        Get
            Return _path
        End Get
        Set(value As String)
            _path = value
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


#End Region

#Region "Constructores"
    Public Sub New()

    End Sub
    Public Sub New(pNombre As String, pPath As String, pDescripcion As String)
        Me.Nombre = pNombre
        Me.Path = pPath
        Me.Descripcion = pDescripcion
    End Sub

    Public Sub New(pNombre As String, pPath As String)
        Me.Nombre = pNombre
        Me.Path = pPath

    End Sub
    Public Sub New(pFecha As DateTime, pNombre As String, pPath As String, pDescripcion As String)
        Me.Nombre = pNombre
        Me.Fecha = pFecha
        Me.Path = pPath
        Me.Descripcion = pDescripcion
    End Sub

#End Region


End Class
