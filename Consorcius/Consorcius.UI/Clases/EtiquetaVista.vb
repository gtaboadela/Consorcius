
Imports Consorcius.Entity
Imports Consorcius.Business

Public Class EtiquetaVista
    'Implements iEtiquetaController
    'Sub New()
    '    VetiquetaEnt = New Etiqueta
    '    vEtiquetaController = New EtiquetaController
    'End Sub

    'Private VetiquetaEnt As Etiqueta
    'Public ReadOnly Property EtiquetaEnt As Etiqueta
    '    Get
    '        Return VetiquetaEnt
    '    End Get
    'End Property

    'Private vEtiquetaController As EtiquetaController
    'Public ReadOnly Property EtiquetaController As EtiquetaController
    '    Get
    '        Return vEtiquetaController
    '    End Get
    'End Property

    'Public Function traerPorPagina(pIdPagina As String, pIdIdioma As Integer) As List(Of Object) Implements iEtiquetaController.traerPorPagina
    '    Try
    '        Return Me.EtiquetaController.traerPorPagina(pIdPagina, pIdIdioma)
    '    Catch ex As Exception
    '        Throw New VistaException("Etiqueta Vista Exception", ex)
    '    End Try
    'End Function

    'Public Function traerTodas() As List(Of Object) Implements iEtiquetaController.traerTodas
    '    Try
    '        Return Me.EtiquetaController.traerTodas()
    '    Catch ex As Exception
    '        Throw New VistaException("Etiqueta Vista Exception", ex)
    '    End Try
    'End Function

    'Public Function traerPorPagina(pIdPagina As String) As List(Of Object) Implements iEtiquetaController.traerPorPagina
    '    Try
    '        Return Me.EtiquetaController.traerPorPagina(pIdPagina)
    '    Catch ex As Exception
    '        Throw New VistaException("Etiqueta Vista Exception", ex)
    '    End Try
    'End Function

    'Public Sub Alta(ByRef pObjeto As Object) Implements iEtiquetaController.Alta
    '    Me.EtiquetaEnt.IdEtiqueta = pObjeto(0)
    '    Me.EtiquetaEnt.Idioma = pObjeto(1)
    '    Me.EtiquetaEnt.Texto = pObjeto(2)
    '    Me.EtiquetaEnt.Descripcion = pObjeto(3)
    '    Try
    '        Me.EtiquetaController.Alta(Me.EtiquetaEnt)
    '    Catch ex As ControllerException
    '        Throw New VistaException("Etiqueta Vista Exception", ex)
    '    End Try
    'End Sub

    'Public Sub Baja(ByRef pObjeto As Object) Implements iEtiquetaController.Baja
    '    Me.EtiquetaEnt.IdEtiqueta = pObjeto(0)
    '    Me.EtiquetaEnt.Idioma = pObjeto(1)
    '    Try
    '        Me.EtiquetaController.Baja(Me.EtiquetaEnt)
    '    Catch ex As ControllerException
    '        Throw New VistaException("Etiqueta Vista Exception", ex)
    '    End Try
    'End Sub

    'Public Sub Modificacion(ByRef pObjeto As Object) Implements iEtiquetaController.Modificacion
    '    Me.EtiquetaEnt.IdEtiqueta = pObjeto(0)
    '    Me.EtiquetaEnt.Idioma = pObjeto(1)
    '    Me.EtiquetaEnt.Texto = pObjeto(2)
    '    Me.EtiquetaEnt.Descripcion = pObjeto(3)
    '    Try
    '        Me.EtiquetaController.Modificacion(Me.EtiquetaEnt)
    '    Catch ex As ControllerException
    '        Throw New VistaException("Etiqueta Vista Exception", ex)
    '    End Try
    'End Sub
End Class
