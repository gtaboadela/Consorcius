Imports Consorcius.Entity
Imports Consorcius.Business

Public Class ConsorcioVista

    'Sub New()
    '    _vConsorcio = New Consorcio
    '    _vConsorcioController = New ConsorcioController
    'End Sub
    'Private _vConsorcio As Consorcio
    'Public ReadOnly Property ConsorcioEnt As Consorcio
    '    Get
    '        Return _vConsorcio
    '    End Get
    'End Property

    'Private _vConsorcioController As ConsorcioController
    'Public ReadOnly Property ConsorcioController As ConsorcioController
    '    Get
    '        Return _vConsorcioController
    '    End Get
    'End Property

    'Public Function traerPorCliente(ByRef pObjeto As Object) As List(Of Object) Implements iConsorcioController.traerPorCliente
    '    Try
    '        Return Me.ConsorcioController.traerPorCliente(pObjeto)
    '    Catch ex As Exception
    '        Throw New VistaException("Consorcio Vista Exception", ex)
    '    End Try
    'End Function

    'Public Sub Alta(ByRef pObjeto As Object) Implements iAbmc.Alta
    '    LimpiarConsorcioEnt()
    '    Me.ConsorcioEnt.Nombre = pObjeto(0)
    '    Me.ConsorcioEnt.Direccion = pObjeto(1)
    '    Me.ConsorcioEnt.Localidad = pObjeto(2)
    '    Me.ConsorcioEnt.CodPostal = pObjeto(3)
    '    Me.ConsorcioEnt.Telefono = pObjeto(4)
    '    Me.ConsorcioEnt.DiaVencimientoExpensa = pObjeto(5)
    '    Me.ConsorcioEnt.Interes = pObjeto(6)
    '    Me.ConsorcioEnt.IdCliente = pObjeto(7)
    '    Try
    '        Me.ConsorcioController.Alta(Me.ConsorcioEnt)
    '    Catch ex As ControllerException
    '        Throw New VistaException("Consorcio Vista Exception", ex)
    '    End Try
    'End Sub

    'Public Sub Baja(ByRef pObjeto As Object) Implements iAbmc.Baja
    '    Try
    '        Me.ConsorcioEnt.IdConsorcio = pObjeto
    '        Me.ConsorcioController.Baja(Me.ConsorcioEnt)
    '    Catch ex As Exception
    '        Throw New VistaException("Consorcio Vista Exception", ex)
    '    End Try
    'End Sub

    'Public Sub Consulta(ByRef pObjeto As Object) Implements iAbmc.Consulta
    '    Try
    '        Me.ConsorcioEnt.IdConsorcio = pObjeto(0)
    '        Me.ConsorcioController.Consulta(Me.ConsorcioEnt)
    '        pObjeto(1) = Me.ConsorcioEnt.CodPostal
    '        pObjeto(2) = Me.ConsorcioEnt.DiaVencimientoExpensa
    '        pObjeto(3) = Me.ConsorcioEnt.Nombre
    '        pObjeto(4) = Me.ConsorcioEnt.Direccion
    '        pObjeto(5) = Me.ConsorcioEnt.Localidad
    '        pObjeto(6) = Me.ConsorcioEnt.Telefono
    '        pObjeto(7) = Me.ConsorcioEnt.Interes
    '    Catch ex As Exception
    '        Throw New VistaException("Consorcio Vista Exception", ex)
    '    End Try
    'End Sub

    'Public Function ConsultaN(N As Integer) As List(Of Object) Implements iAbmc.ConsultaN

    'End Function

    'Public Sub Modificacion(ByRef pObjeto As Object) Implements iAbmc.Modificacion
    '    LimpiarConsorcioEnt()
    '    Me.ConsorcioEnt.IdConsorcio = pObjeto(0)
    '    Me.ConsorcioEnt.Nombre = pObjeto(1)
    '    Me.ConsorcioEnt.Direccion = pObjeto(2)
    '    Me.ConsorcioEnt.Localidad = pObjeto(3)
    '    Me.ConsorcioEnt.CodPostal = pObjeto(4)
    '    Me.ConsorcioEnt.Telefono = pObjeto(5)
    '    Me.ConsorcioEnt.DiaVencimientoExpensa = pObjeto(6)
    '    Me.ConsorcioEnt.Interes = pObjeto(7)
    '    Try
    '        Me.ConsorcioController.Modificacion(Me.ConsorcioEnt)
    '    Catch ex As ControllerException
    '        Throw New VistaException("Consorcio Vista Exception", ex)
    '    End Try
    'End Sub


    'Protected Sub LimpiarConsorcioEnt()
    '    Me.ConsorcioEnt.IdConsorcio = Nothing
    '    Me.ConsorcioEnt.Nombre = Nothing
    '    Me.ConsorcioEnt.Direccion = Nothing
    '    Me.ConsorcioEnt.Localidad = Nothing
    '    Me.ConsorcioEnt.CodPostal = Nothing
    '    Me.ConsorcioEnt.Telefono = Nothing
    '    Me.ConsorcioEnt.DiaVencimientoExpensa = Nothing
    '    Me.ConsorcioEnt.Interes = Nothing
    'End Sub


End Class
