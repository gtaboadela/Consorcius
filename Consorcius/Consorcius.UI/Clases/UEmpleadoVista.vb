
Imports Consorcius.Entity
Imports Consorcius.Business
Public Class UEmpleadoVista
    'Inherits UBaseVista
    'Implements iAbmc, iUsuarioController
    'Sub New()
    '    VusuarioEnt = New UEmpleado
    '    VusuarioEntController = New UEmpleadoController
    'End Sub

    'Private VusuarioEnt As UEmpleado
    'Public Overloads ReadOnly Property UsuarioEnt As UEmpleado
    '    Get
    '        Return VusuarioEnt
    '    End Get
    'End Property

    'Private VusuarioEntController As UEmpleadoController
    'Public Overloads ReadOnly Property UsuarioEntController As UEmpleadoController
    '    Get
    '        Return VusuarioEntController
    '    End Get
    'End Property


    'Public Sub Alta(ByRef pObjeto As Object) Implements iAbmc.Alta
    '    LimpiarUsuarioEnt()
    '    Me.UsuarioEnt.nombre = pObjeto(0)
    '    Me.UsuarioEnt.apellido = pObjeto(1)
    '    Me.UsuarioEnt.cuit = pObjeto(2)
    '    Me.UsuarioEnt.email = pObjeto(3)
    '    Me.UsuarioEnt.usuario = pObjeto(4)
    '    Me.UsuarioEnt.clave = pObjeto(5)
    '    Try
    '        Me.UsuarioEntController.Alta(Me.UsuarioEnt)
    '    Catch ex As ControllerException
    '        Throw New VistaException("User Vista Exception", ex)
    '    End Try
    'End Sub

    'Public Sub Baja(ByRef pObjeto As Object) Implements iAbmc.Baja
    '    Me.UsuarioEnt.usuario = pObjeto
    '    Me.UsuarioEntController.Baja(Me.UsuarioEnt)
    'End Sub

    'Public Sub Consulta(ByRef pObjeto As Object) Implements iAbmc.Consulta

    'End Sub

    'Public Sub Modificacion(ByRef pObjeto As Object) Implements iAbmc.Modificacion
    '    LimpiarUsuarioEnt()
    '    Me.UsuarioEnt.nombre = pObjeto(0)
    '    Me.UsuarioEnt.apellido = pObjeto(1)
    '    Me.UsuarioEnt.usuario = pObjeto(4)
    '    Me.UsuarioEnt.cuit = pObjeto(2)
    '    Me.UsuarioEnt.email = pObjeto(3)

    '    Try
    '        Me.UsuarioEntController.Modificacion(Me.UsuarioEnt)
    '    Catch ex As ControllerException
    '        Throw New VistaException("User Vista Exception", ex)
    '    End Try
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
    '    Return Me.UsuarioEntController.ConsultaN(N)
    'End Function
End Class
