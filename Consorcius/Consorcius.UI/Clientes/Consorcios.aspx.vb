Imports Consorcius.Entity

Public Class Consorcios
    Inherits System.Web.UI.Page

    Dim vConsorcio As New ConsorcioVista
    Dim vBitacora As New BitacoraVista
    Dim vEtiqueta As New EtiquetaVista

    'Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    '    If Not Page.IsPostBack Then
    '        Refrescar()
    '    End If
    '    'Limpio Cache para prevenir back button depues del logout.
    '    Response.Cache.SetCacheability(HttpCacheability.NoCache)
    '    Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1))
    '    Response.Cache.SetNoStore()

    '    If Session("isAuthenticated") <> 1 Then
    '        Response.Redirect("../Msg.aspx", False)
    '    End If

    '    If Session("Idioma").ToString IsNot "Español" Then
    '        traducirPagina(Session("Idioma").ToString)
    '    End If

    'End Sub

    'Sub ConsultaConsorciosGridView_RowEditing(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewEditEventArgs)
    '    ConsultaConsorciosGridView.EditIndex = e.NewEditIndex
    '    Refrescar()
    'End Sub

    'Sub ConsultaConsorciosGridView_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs)

    '    Alerta("Se dispone a eliminar el Consorcio " & e.Values("Nombre").ToString & " del sistema. Se eliminaran todos las dependencias del mismo.")
    '    vConsorcio.Baja(e.Values("IdConsorcio"))
    '    vBitacora.Registrar({27, "El usuario: " & Session("Usuario").ToString & " elimino el consorcio " & e.Values("Nombre").ToString})
    '    Refrescar()

    'End Sub

    'Sub ConsultaConsorciosGridView_RowUpdating(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewUpdateEventArgs)
    '    Dim vRegistro = ConsultaConsorciosGridView.Rows(e.RowIndex)
    '    Dim vIdConsorcio As String = vRegistro.Cells(0).Text
    '    Dim vNombre As String = (CType((vRegistro.Cells(1).Controls(0)), TextBox)).Text
    '    Dim vDireccion As String = (CType((vRegistro.Cells(2).Controls(0)), TextBox)).Text
    '    Dim vLocalidad As String = (CType((vRegistro.Cells(3).Controls(0)), TextBox)).Text
    '    Dim vCodPostal As String = (CType((vRegistro.Cells(4).Controls(0)), TextBox)).Text
    '    Dim vTelefono As String = (CType((vRegistro.Cells(5).Controls(0)), TextBox)).Text
    '    Dim vDiaVencimiento As String = (CType((vRegistro.Cells(6).Controls(0)), TextBox)).Text
    '    Dim vInteres As String = (CType((vRegistro.Cells(7).Controls(0)), TextBox)).Text

    '    If vNombre <> "" And vInteres <> "" And vLocalidad <> "" And vDireccion <> "" And vTelefono <> "" And vCodPostal <> "" And vDiaVencimiento <> "" Then
    '        Dim Varr() = {vIdConsorcio, vNombre, vDireccion, vLocalidad, vCodPostal, vTelefono, vDiaVencimiento, vInteres}
    '        Try
    '            vConsorcio.Modificacion(Varr)
    '            vBitacora.Registrar({25, "El Consorcio " + vNombre + " se ha modificado correctamente"})
    '            Alerta("El consorcio " + vNombre + " se ha modificado correctamente")
    '            ConsultaConsorciosGridView.EditIndex = -1
    '            Refrescar()
    '        Catch ex As VistaException
    '            vBitacora.Registrar({26, "Hubo un error en el intento de modificacion del consorcio " + vNombre})
    '            Alerta("Hubo un problema al modificar el Consorcio")
    '        End Try
    '    Else
    '        Alerta("Uno mas campos mandatorios estan en blanco, por favor, verifique la solicitud")
    '    End If
    'End Sub

    'Sub ConsultaConsorciosGridView_RowCancelingEdit(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCancelEditEventArgs)
    '    ConsultaConsorciosGridView.EditIndex = -1
    '    Refrescar()
    'End Sub

    'Sub verUnidadesFuncionales(ByVal sender As Object, ByVal e As EventArgs)
    '    Dim btn As LinkButton = sender
    '    Dim r As GridViewRow = btn.NamingContainer
    '    Dim pIdConsorcio As String = ConsultaConsorciosGridView.Rows(r.RowIndex).Cells(0).Text
    '    Dim pNombreConsorcio As String = ConsultaConsorciosGridView.Rows(r.RowIndex).Cells(1).Text
    '    Session("idConsorcio") = pIdConsorcio
    '    Session("nombreConsorcio") = pNombreConsorcio
    '    Response.Redirect("UnidadesFuncionales.aspx")
    'End Sub

    'Protected Sub ConsultaConsorciosGridView_PageIndexChanging(sender As Object, e As GridViewPageEventArgs)
    '    ConsultaConsorciosGridView.PageIndex = e.NewPageIndex
    '    Refrescar()
    'End Sub

    'Public Sub Alerta(message As String)
    '    Dim Msg As String = "<script language='javascript'>"
    '    Msg += "alert('" & message & "');"
    '    Msg += "</script>"
    '    Response.Write(Msg)
    'End Sub

    'Private Sub Refrescar()
    '    ConsultaConsorciosGridView.DataSource = vConsorcio.traerPorCliente({Session("idCliente").ToString})
    '    ConsultaConsorciosGridView.DataBind()
    '    Session("misConsorcios") = ConsultaConsorciosGridView.DataSource
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
    '    Dim Cant As String = Me.FormClientesConsorcios.Controls.Count.ToString
    '    Dim ListadeEtiquetas As List(Of Object) = vEtiqueta.traerPorPagina("CLH", vIdIdioma)
    '    For Each ctl As Control In Me.Controls
    '        For Each childctl As Control In ctl.Controls
    '            If childctl.ID IsNot Nothing Then
    '                If TypeOf childctl Is HtmlGenericControl And childctl.ID.ToString.StartsWith("CLH") Then
    '                    Try
    '                        CType(childctl, HtmlGenericControl).InnerHtml = CType(ListadeEtiquetas.Find(Function(column) column.idEtiqueta = childctl.ID), Etiqueta).Texto
    '                    Catch ex As Exception
    '                        'Do Nothing
    '                    End Try
    '                ElseIf TypeOf childctl Is HtmlAnchor And childctl.ID.ToString.StartsWith("CLH") Then
    '                    Try
    '                        CType(childctl, HtmlAnchor).InnerHtml = CType(ListadeEtiquetas.Find(Function(column) column.idEtiqueta = childctl.ID), Etiqueta).Texto
    '                    Catch ex As Exception
    '                        'Do Nothing
    '                    End Try
    '                ElseIf TypeOf childctl Is HtmlInputButton And childctl.ID.ToString.StartsWith("CLH") Then
    '                    Try
    '                        CType(childctl, HtmlInputButton).Value = CType(ListadeEtiquetas.Find(Function(column) column.idEtiqueta = childctl.ID), Etiqueta).Texto
    '                    Catch ex As Exception
    '                        'Do Nothing
    '                    End Try

    '                End If
    '            End If
    '        Next
    '    Next
    'End Sub

End Class