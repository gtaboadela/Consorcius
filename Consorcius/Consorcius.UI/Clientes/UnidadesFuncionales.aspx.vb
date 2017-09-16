Imports Consorcius.Entity
Public Class UnidadesFuncionales
    Inherits System.Web.UI.Page

    'Dim vUnidadFuncional As New UnidadFuncionalVista
    'Dim vBitacora As New BitacoraVista
    'Dim vEtiqueta As New EtiquetaVista
    'Dim pConsorcioID As String = ""

    'Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    '    If Not Page.IsPostBack Then
    '        pConsorcioID = Session("idConsorcio").ToString 'Guardo el ID del consorcio
    '        Refrescar() 'DataBind del GV
    '        ddlConsorcios.DataSource = Session("misConsorcios") 'Leo de la sesion y populo las opciones del DDList
    '        ddlConsorcios.DataValueField = "IdConsorcio"
    '        ddlConsorcios.DataTextField = "Nombre"
    '        ddlConsorcios.SelectedValue = Session("idConsorcio").ToString
    '        ddlConsorcios.DataBind()
    '    Else
    '        pConsorcioID = Session("idConsorcio").ToString
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

    'Sub ddlConsorcios_SelectedIndexChanged(sender As Object, e As EventArgs)
    '    Dim vConsorcio As DropDownList = sender
    '    Try
    '        pConsorcioID = vConsorcio.SelectedValue.ToString
    '        Session("idConsorcio") = vConsorcio.SelectedValue.ToString
    '        Refrescar()
    '    Catch ex As Exception
    '        Alerta("Hubo un problema al consultar los movimientos del consorcio seleccionado")
    '    End Try

    'End Sub

    'Sub ConsultaUnidadesFuncionalesGridView_RowEditing(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewEditEventArgs)
    '    ConsultaUnidadesFuncionalesGridView.EditIndex = e.NewEditIndex
    '    Refrescar()
    'End Sub

    'Sub ConsultaUnidadesFuncionalesGridView_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs)

    '    Alerta("Se dispone a eliminar el UnidadFuncional " & e.Values("Nombre").ToString & " del sistema. Se eliminaran todos las dependencias del mismo.")
    '    vUnidadFuncional.Baja(e.Values("IdUnidadFuncional"))
    '    vBitacora.Registrar({27, "El usuario: " & Session("Usuario").ToString & " elimino la UnidadFuncional " & e.Values("Nombre").ToString})
    '    Refrescar()

    'End Sub

    'Sub ConsultaUnidadesFuncionalesGridView_RowUpdating(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewUpdateEventArgs)
    '    Dim vRegistro = ConsultaUnidadesFuncionalesGridView.Rows(e.RowIndex)
    '    Dim vIdUnidadFuncional As String = vRegistro.Cells(0).Text
    '    Dim vNombre As String = (CType((vRegistro.Cells(1).Controls(0)), TextBox)).Text
    '    Dim vDescripcion As String = (CType((vRegistro.Cells(2).Controls(0)), TextBox)).Text
    '    Dim vCoeficienteProrrateo As String = (CType((vRegistro.Cells(3).Controls(0)), TextBox)).Text
    '    Dim vMetrosCuadrados As String = (CType((vRegistro.Cells(4).Controls(0)), TextBox)).Text

    '    If vNombre <> "" And vCoeficienteProrrateo <> "" And vMetrosCuadrados <> "" Then
    '        Dim Varr() = {vIdUnidadFuncional, vNombre, vDescripcion, vCoeficienteProrrateo, vMetrosCuadrados}
    '        Try
    '            vUnidadFuncional.Modificacion(Varr)
    '            vBitacora.Registrar({31, "La UnidadFuncional " + vNombre + " se ha modificado correctamente"})
    '            Alerta("La UnidadFuncional " + vNombre + " se ha modificado correctamente")
    '            ConsultaUnidadesFuncionalesGridView.EditIndex = -1
    '            Refrescar()
    '        Catch ex As VistaException
    '            vBitacora.Registrar({32, "Hubo un error en el intento de modificacion de la UnidadFuncional " + vNombre})
    '            Alerta("Hubo un problema al modificar la UnidadFuncional")
    '        End Try
    '    Else
    '        Alerta("Uno mas campos mandatorios estan en blanco, por favor, verifique la solicitud")
    '    End If
    'End Sub

    'Sub ConsultaUnidadesFuncionalesGridView_RowCancelingEdit(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCancelEditEventArgs)
    '    ConsultaUnidadesFuncionalesGridView.EditIndex = -1
    '    Refrescar()
    'End Sub

    'Protected Sub ConsultaUnidadesFuncionalesGridView_PageIndexChanging(sender As Object, e As GridViewPageEventArgs)
    '    ConsultaUnidadesFuncionalesGridView.PageIndex = e.NewPageIndex
    '    Refrescar()
    'End Sub

    'Public Sub Alerta(message As String)
    '    Dim Msg As String = "<script language='javascript'>"
    '    Msg += "alert('" & message & "');"
    '    Msg += "</script>"
    '    Response.Write(Msg)
    'End Sub

    'Private Sub Refrescar()
    '    Try
    '        ConsultaUnidadesFuncionalesGridView.DataSource = vUnidadFuncional.traerPorConsorcio({pConsorcioID})
    '        ConsultaUnidadesFuncionalesGridView.DataBind()
    '    Catch ex As Exception
    '        Alerta("Hubo un problema al cargar las unidades Funcionales")
    '    End Try

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
    '    Dim Cant As String = Me.FormUnidadesFuncionales.Controls.Count.ToString
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