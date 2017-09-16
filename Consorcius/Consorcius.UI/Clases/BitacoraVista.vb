Imports Consorcius.Business
Imports Consorcius.Entity
Public Class BitacoraVista


    Sub New()
        VbitacoraEnt = New Bitacora
        vBitacoraController = New BitacoraController
    End Sub

    Private VbitacoraEnt As Bitacora
    Public ReadOnly Property BitacoraEnt As Bitacora
        Get
            Return VbitacoraEnt
        End Get
    End Property

    Private vBitacoraController As BitacoraController
    Public ReadOnly Property BitacoraController As BitacoraController
        Get
            Return vBitacoraController
        End Get
    End Property
End Class
