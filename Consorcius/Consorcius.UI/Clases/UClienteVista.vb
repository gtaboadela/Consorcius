
Imports Consorcius.Entity
Imports Consorcius.Business

Public Class UClienteVista
    'Inherits UBaseVista
    'Implements iAbmc, iUsuarioController, iUsuarioClienteController

    'Sub New()
    '    VusuarioEnt = New UCliente
    '    VusuarioEntController = New UClienteController
    'End Sub

    'Private VusuarioEnt As UCliente
    'Public Overloads ReadOnly Property UsuarioEnt As UCliente
    '    Get
    '        Return VusuarioEnt
    '    End Get
    'End Property

    'Private VusuarioEntController As UClienteController
    'Public Overloads ReadOnly Property UsuarioEntController As UClienteController
    '    Get
    '        Return VusuarioEntController
    '    End Get
    'End Property


    'Public Sub Alta(ByRef pObjeto As Object) Implements iAbmc.Alta
    '    LimpiarUsuarioEnt()
    '    Me.UsuarioEnt.nombre = pObjeto(0)
    '    Me.UsuarioEnt.apellido = pObjeto(1)
    '    Me.UsuarioEnt.email = pObjeto(2)
    '    Me.UsuarioEnt.usuario = pObjeto(3)
    '    Me.UsuarioEnt.clave = pObjeto(4)
    '    Me.UsuarioEnt.Idioma = pObjeto(6)
    '    Me.UsuarioEnt.IdCliente = pObjeto(5)
    '    Try
    '        Me.UsuarioEntController.Alta(Me.UsuarioEnt)
    '    Catch ex As ControllerException
    '        Throw New VistaException("User Vista Exception", ex)
    '    End Try
    'End Sub

    'Public Sub Baja(ByRef pObjeto As Object) Implements iAbmc.Baja
    '    LimpiarUsuarioEnt()
    '    Try
    '        Me.UsuarioEnt.usuario = pObjeto(0)
    '        Me.UsuarioEntController.Baja(Me.UsuarioEnt.usuario)
    '    Catch ex As ControllerException
    '        Throw New VistaException("User Vista Exception", ex)
    '    End Try
    'End Sub

    'Public Sub Consulta(ByRef pObjeto As Object) Implements iAbmc.Consulta
    '    Me.UsuarioEnt.usuario = pObjeto(0)
    '    Try
    '        Me.UsuarioEntController.Consulta(Me.UsuarioEnt)
    '    Catch ex As ControllerException
    '        Throw New VistaException("Usuario Cliente Vista Exception", ex)
    '    End Try
    'End Sub

    'Public Sub Modificacion(ByRef pObjeto As Object) Implements iAbmc.Modificacion

    'End Sub

    'Public Sub Login(ByRef pObjeto As Object) Implements iUsuarioController.Login
    '    LimpiarUsuarioEnt()
    '    Me.UsuarioEnt.usuario = pObjeto(0)
    '    Me.UsuarioEnt.clave = pObjeto(1)
    '    Try
    '        Me.UsuarioEntController.Login(Me.UsuarioEnt)
    '    Catch ex As ControllerException
    '        Throw New VistaException("User Vista Exception", ex)
    '    End Try
    'End Sub

    'Public Sub Bloquear(ByRef pObjeto As Object) Implements iUsuarioController.Bloquear

    'End Sub

    'Public Function ConsultaN(N As Integer) As List(Of Object) Implements iAbmc.ConsultaN

    'End Function

    'Public Sub AgregarFamilia(ByRef pObjeto As Object, ByRef pIdFamilia As Integer) Implements iUsuarioClienteController.AgregarFamilia
    '    Try
    '        Me.UsuarioEntController.AgregarFamilia(pObjeto, pIdFamilia)
    '    Catch ex As ControllerException
    '        Throw New VistaException("Usuario Cliente Vista Exception", ex)
    '    End Try
    'End Sub
End Class
