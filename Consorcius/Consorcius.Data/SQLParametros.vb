Public Class SQLParametros

#Region "Constructores"
    Sub New()

    End Sub

    Sub New(ByVal pNombre As String, ByVal pTipo As SqlDbType, pValor As String)
        Me.NombreParametro = pNombre
        Me.TipoParametro = pTipo
        Me.Valor = pValor
    End Sub

#End Region

#Region "Propiedades"

    Private _nombreParametro As String
    Public Property NombreParametro As String
        Get
            Return _nombreParametro
        End Get
        Set(value As String)
            _nombreParametro = value
        End Set
    End Property
    Private _tipoParametro As SqlDbType
    Public Property TipoParametro As SqlDbType
        Get
            Return _tipoParametro
        End Get
        Set(value As SqlDbType)
            _tipoParametro = value
        End Set
    End Property

    Private _valor As String
    Public Property Valor As String
        Get
            Return _valor
        End Get
        Set(value As String)
            _valor = value
        End Set
    End Property

#End Region
End Class
