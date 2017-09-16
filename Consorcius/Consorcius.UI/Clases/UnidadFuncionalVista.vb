Imports Consorcius.Entity
Imports Consorcius.Business

Public Class UnidadFuncionalVista

    'Implements iAbmc, iUnidadFuncionalController
    'Sub New()
    '    _vUnidadFuncional = New UnidadFuncional
    '    _vUnidadFuncionalController = New UnidadFuncionalController
    'End Sub
    'Private _vUnidadFuncional As UnidadFuncional
    'Public ReadOnly Property UnidadFuncionalEnt As UnidadFuncional
    '    Get
    '        Return _vUnidadFuncional
    '    End Get
    'End Property

    'Private _vUnidadFuncionalController As UnidadFuncionalController
    'Public ReadOnly Property UnidadFuncionalController As UnidadFuncionalController
    '    Get
    '        Return _vUnidadFuncionalController
    '    End Get
    'End Property

    'Public Sub Alta(ByRef pObjeto As Object) Implements iAbmc.Alta
    '    LimpiarUnidadFuncionalEnt()
    '    Me.UnidadFuncionalEnt.IdConsorcio = pObjeto(0)
    '    Me.UnidadFuncionalEnt.Nombre = pObjeto(1)
    '    Me.UnidadFuncionalEnt.Descripcion = pObjeto(2)
    '    Me.UnidadFuncionalEnt.CoeficienteProrrateo = pObjeto(3)
    '    Me.UnidadFuncionalEnt.MetrosCuadrados = pObjeto(4)
    '    Try
    '        Me.UnidadFuncionalController.Alta(Me.UnidadFuncionalEnt)
    '    Catch ex As ControllerException
    '        Throw New VistaException("UnidadFuncional Vista Exception", ex)
    '    End Try
    'End Sub

    'Public Sub Baja(ByRef pObjeto As Object) Implements iAbmc.Baja
    '    Try
    '        Me.UnidadFuncionalEnt.IdUnidadFuncional = pObjeto
    '        Me.UnidadFuncionalController.Baja(Me.UnidadFuncionalEnt)
    '    Catch ex As Exception
    '        Throw New VistaException("UnidadFuncional Vista Exception", ex)
    '    End Try
    'End Sub

    'Public Sub Consulta(ByRef pObjeto As Object) Implements iAbmc.Consulta

    'End Sub

    'Public Function ConsultaN(N As Integer) As List(Of Object) Implements iAbmc.ConsultaN

    'End Function

    'Public Sub Modificacion(ByRef pObjeto As Object) Implements iAbmc.Modificacion
    '    LimpiarUnidadFuncionalEnt()
    '    Me.UnidadFuncionalEnt.IdUnidadFuncional = pObjeto(0)
    '    Me.UnidadFuncionalEnt.Nombre = pObjeto(1)
    '    Me.UnidadFuncionalEnt.Descripcion = pObjeto(2)
    '    Me.UnidadFuncionalEnt.MetrosCuadrados = pObjeto(3)
    '    Me.UnidadFuncionalEnt.CoeficienteProrrateo = pObjeto(4)
    '    'Me.UnidadFuncionalEnt.IdConsorcio = pObjeto(5)
    '    'Me.UnidadFuncionalEnt.IdInquilino = pObjeto(6)
    '    'Me.UnidadFuncionalEnt.IdPropietario = pObjeto(7)
    '    Try
    '        Me.UnidadFuncionalController.Modificacion(Me.UnidadFuncionalEnt)
    '    Catch ex As ControllerException
    '        Throw New VistaException("UnidadFuncional Vista Exception", ex)
    '    End Try
    'End Sub


    'Protected Sub LimpiarUnidadFuncionalEnt()
    '    Me.UnidadFuncionalEnt.IdUnidadFuncional = Nothing
    '    Me.UnidadFuncionalEnt.IdConsorcio = Nothing
    '    Me.UnidadFuncionalEnt.IdInquilino = Nothing
    '    Me.UnidadFuncionalEnt.IdPropietario = Nothing
    '    Me.UnidadFuncionalEnt.Nombre = Nothing
    '    Me.UnidadFuncionalEnt.Descripcion = Nothing
    '    Me.UnidadFuncionalEnt.MetrosCuadrados = Nothing
    '    Me.UnidadFuncionalEnt.CoeficienteProrrateo = Nothing
    'End Sub


    'Public Function traerPorConsorcio(ByRef pObjeto As Object) As List(Of Object) Implements iUnidadFuncionalController.traerPorConsorcio
    '    Try
    '        Return Me.UnidadFuncionalController.traerPorConsorcio(pObjeto)
    '    Catch ex As Exception
    '        Throw New VistaException("UnidadFuncional Vista Exception", ex)
    '    End Try
    'End Function
End Class
