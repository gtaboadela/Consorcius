
Imports Consorcius.Entity
Imports Consorcius.Business
Public Class ClienteVista
    'Sub New()
    '    vClienteEnt = New Cliente
    '    vClienteEntController = New ClienteController
    'End Sub

    'Private vClienteEnt As Cliente
    'Public ReadOnly Property ClienteEnt As Cliente
    '    Get
    '        Return vClienteEnt
    '    End Get
    'End Property

    'Private vClienteEntController As ClienteController
    'Public ReadOnly Property ClienteEntController As ClienteController
    '    Get
    '        Return vClienteEntController
    '    End Get
    'End Property
    'Public Sub Alta(ByRef pObjeto As Object) Implements iAbmc.Alta
    '    LimpiarClienteEnt()
    '    Me.ClienteEnt.Nombre = pObjeto(0)
    '    Me.ClienteEnt.Direccion = pObjeto(1)
    '    Me.ClienteEnt.Telefono = pObjeto(2)
    '    Me.ClienteEnt.Cuit = pObjeto(3)
    '    Try
    '        Me.ClienteEntController.Alta(Me.ClienteEnt)
    '    Catch ex As ControllerException
    '        Throw New VistaException("Cliente Vista Exception", ex)
    '    End Try
    'End Sub

    'Public Sub Baja(ByRef pObjeto As Object) Implements iAbmc.Baja
    '    Try
    '        Me.ClienteEnt.IDCliente = pObjeto
    '        Me.ClienteEntController.Baja(Me.ClienteEnt)
    '    Catch ex As Exception
    '        Throw New VistaException("Cliente Vista Exception", ex)
    '    End Try

    'End Sub

    'Public Sub Consulta(ByRef pObjeto As Object) Implements iAbmc.Consulta
    '    Me.ClienteEnt.Nombre = pObjeto(0)
    '    Try
    '        Me.ClienteEntController.Consulta(Me.ClienteEnt)
    '    Catch ex As ControllerException
    '        Throw New VistaException("Cliente Vista Exception", ex)
    '    End Try

    'End Sub

    'Public Function ConsultaN(N As Integer) As List(Of Object) Implements iAbmc.ConsultaN

    'End Function

    'Public Sub Modificacion(ByRef pObjeto As Object) Implements iAbmc.Modificacion
    '    LimpiarClienteEnt()
    '    Me.ClienteEnt.IDCliente = pObjeto(0)
    '    Me.ClienteEnt.Nombre = pObjeto(1)
    '    Me.ClienteEnt.FechaAlta = pObjeto(2)
    '    Me.ClienteEnt.Direccion = pObjeto(3)
    '    Me.ClienteEnt.Telefono = pObjeto(4)
    '    Me.ClienteEnt.Cuit = pObjeto(5)
    '    Me.ClienteEnt.UsuarioAdministrador = pObjeto(6)
    '    Try
    '        Me.ClienteEntController.Modificacion(Me.ClienteEnt)
    '    Catch ex As ControllerException
    '        Throw New VistaException("Cliente Vista Exception", ex)
    '    End Try
    'End Sub

    'Protected Sub LimpiarClienteEnt()
    '    Me.ClienteEnt.Nombre = Nothing
    '    Me.ClienteEnt.FechaAlta = Nothing
    '    Me.ClienteEnt.Direccion = Nothing
    '    Me.ClienteEnt.Telefono = Nothing
    '    Me.ClienteEnt.Eliminado = False
    '    Me.ClienteEnt.Cuit = Nothing
    'End Sub


End Class
