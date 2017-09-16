
Imports Consorcius.Entity
Public Class AltaConsorcios
    Inherits System.Web.UI.Page
    'Dim vEtiqueta As New EtiquetaVista


    'Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    '    'Limpio Cache para prevenir back button depues del logout.
    '    Response.Cache.SetCacheability(HttpCacheability.NoCache)
    '    Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1))
    '    Response.Cache.SetNoStore()

    '    If Session("isAuthenticated") <> 1 Then
    '        Response.Redirect("../Msg.aspx", False)

    '    End If
    'End Sub

    'Public Sub OnSubmitAltaConsorcio(source As Object, e As EventArgs)
    '    Dim vBitacoraVi As New BitacoraVista
    '    Dim vConsorcioVi As New ConsorcioVista
    '    'Alta del consorcio
    '    'Inicializo las variables con los datos del formulario
    '    Dim vNombre As String = Request.Form("Nombre")
    '    Dim vDireccion As String = Request.Form("Direccion")
    '    Dim vLocalidad As String = Request.Form("Localidad")
    '    Dim vCodPostal As String = Request.Form("CodPostal")
    '    Dim vTelefono As String = Request.Form("Telefono")
    '    Dim vDiaVencimiento As String = Request.Form("DiaVencimiento")
    '    Dim vInteres As String = Request.Form("Interes")
    '    Dim vIdCliente As String = Session("idCliente").ToString

    '    If vNombre <> "" And vDireccion <> "" And vLocalidad <> "" And vTelefono <> "" And vDiaVencimiento <> "" And vInteres <> "" Then
    '        'Cargo datos del cliente
    '        Dim VarrConsorcio() = {vNombre, vDireccion, vLocalidad, vCodPostal, vTelefono, vDiaVencimiento, vInteres, vIdCliente}
    '        Try
    '            vConsorcioVi.Alta(VarrConsorcio) 'Alta del Consorcio
    '            vBitacoraVi.Registrar({15, "El Consorcio" + vNombre + " se ha creado correctamente"})
    '            Alerta("El Consorcio ha sido agregado correctamente")
    '        Catch ex As VistaException
    '            Alerta("Hubo un problema al agregar el consorcio. Revise la bitacora para mas detalles")
    '            vBitacoraVi.Registrar({16, "Error al intentar agregar el cliente " + vNombre})
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
    '    Dim Cant As String = Me.FormAltaConsorcios.Controls.Count.ToString
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

