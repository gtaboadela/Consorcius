Imports Consorcius.Entity
Public Class AltaUnidadFuncional
    Inherits System.Web.UI.Page

    Dim vEtiqueta As New EtiquetaVista

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Limpio Cache para prevenir back button depues del logout.
        Response.Cache.SetCacheability(HttpCacheability.NoCache)
        Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1))
        Response.Cache.SetNoStore()

        If Session("isAuthenticated") <> 1 Then
            Response.Redirect("../Msg.aspx", False)
        End If
    End Sub

    'Public Sub OnSubmitAltaUnidadFuncional(source As Object, e As EventArgs)
    '    Dim vBitacoraVi As New BitacoraVista
    '    Dim vUnidadFuncionalVi As New UnidadFuncionalVista
    '    'Alta del UnidadFuncional
    '    'Inicializo las variables con los datos del formulario
    '    Dim vIdConsorcio As String = Session("idConsorcio").ToString
    '    Dim vNombre As String = Request.Form("Nombre")
    '    Dim vDescripcion As String = Request.Form("Descripcion")
    '    Dim vCoeficienteProrrateo As String = Request.Form("CoeficienteProrrateo")
    '    Dim vMetrosCuadrados As String = Request.Form("MetrosCuadrados")

    '    If vNombre <> "" And vIdConsorcio <> "" And vCoeficienteProrrateo <> "" And vMetrosCuadrados <> "" Then
    '        ''Cargo datos del cliente
    '        Dim VarrUnidadFuncional() = {vIdConsorcio, vNombre, vDescripcion, vCoeficienteProrrateo, vMetrosCuadrados}
    '        Try
    '            vUnidadFuncionalVi.Alta(VarrUnidadFuncional) 'Alta del UnidadFuncional
    '            vBitacoraVi.Registrar({29, "La UnidadFuncional" + vNombre + " se ha creado correctamente"})
    '            Alerta("La Unidad Funcional ha sido agregada correctamente")
    '            Response.Redirect("UnidadesFuncionales.aspx")
    '        Catch ex As VistaException
    '            Alerta("Hubo un problema al agregar el UnidadFuncional. Revise la bitacora para mas detalles")
    '            vBitacoraVi.Registrar({30, "Error al intentar agregar la Unidad Funcional " + vNombre})
    '        End Try

    '    Else
    '        Alerta("Uno mas campos mandatorios estan en blanco, por favor, verifique la solicitud")
    '    End If

    'End Sub

    'Public Sub Alerta(message As String)

    '    Dim Msg As String = "<script language='javascript'>"
    '    Msg += "alert('" & message & "');"
    '    Msg += "</script>"
    '    Response.Write(Msg)
    'End Sub

    'Sub cambiarIdioma(sender As Object, e As EventArgs)
    '    If Session("Idioma") = "Español" Then
    '        traducirPagina("Ingles")
    '        Session("Idioma") = "Ingles"
    '    Else
    '        traducirPagina("Español")
    '        Session("Idioma") = "Español"
    '    End If
    'End Sub

    'Sub traducirPagina(pIdioma As String)
    '    Dim vIdIdioma As Integer
    '    Select Case pIdioma
    '        Case "Español"
    '            vIdIdioma = 1
    '        Case "Ingles"
    '            vIdIdioma = 2
    '    End Select
    '    Dim Cant As String = Me.FormAltaUnidadFuncional.Controls.Count.ToString
    '    Dim ListadeEtiquetas As List(Of Object) = vEtiqueta.traerPorPagina("CLH", vIdIdioma)
    '    For Each ctl As Control In Me.Controls
    '        For Each childctl As Control In ctl.Controls
    '            If childctl.ID IsNot Nothing Then
    '                If TypeOf childctl Is HtmlGenericControl And childctl.ID.ToString.StartsWith("CLH") Then
    '                    CType(childctl, HtmlGenericControl).InnerHtml = CType(ListadeEtiquetas.Find(Function(column) column.idEtiqueta = childctl.ID), Etiqueta).Texto
    '                ElseIf TypeOf childctl Is HtmlAnchor And childctl.ID.ToString.StartsWith("CLH") Then
    '                    CType(childctl, HtmlAnchor).InnerHtml = CType(ListadeEtiquetas.Find(Function(column) column.idEtiqueta = childctl.ID), Etiqueta).Texto
    '                ElseIf TypeOf childctl Is HtmlInputButton And childctl.ID.ToString.StartsWith("CLH") Then
    '                    CType(childctl, HtmlInputButton).Value = CType(ListadeEtiquetas.Find(Function(column) column.idEtiqueta = childctl.ID), Etiqueta).Texto
    '                End If
    '            End If
    '        Next
    '    Next
    'End Sub

End Class