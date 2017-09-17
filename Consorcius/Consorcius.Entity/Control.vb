Public Class Control

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

    Private _idIdioma As String
    Public Property IdIdioma As String
        Get
            Return _idIdioma
        End Get
        Set(value As String)
            _idIdioma = value
        End Set
    End Property

    Private _texto As String
    Public Property Texto As String
        Get
            Return _texto
        End Get
        Set(value As String)
            _texto = value
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
    Public Sub New(pNombre, pIdIdioma, pTexto, pDescripcion)
        Me.Nombre = pNombre
        Me.IdIdioma = pIdIdioma
        Me.Texto = pTexto
        Me.Descripcion = pDescripcion

    End Sub
#End Region
End Class
