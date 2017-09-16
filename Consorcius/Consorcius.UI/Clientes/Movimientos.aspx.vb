Imports Consorcius.Entity

Public Class Movimientos
    Inherits System.Web.UI.Page

    'Dim vEgreso As New EgresoVista
    'Dim vBitacora As New BitacoraVista
    'Dim vEtiqueta As New EtiquetaVista
    'Dim pConsorcioID As String = ""
    'Dim vConsorcio As New ConsorcioVista

    'Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    '    If Session("idConsorcio") IsNot Nothing Then 'Pregunto si el usuario ya selecciono un consorcio, si hay uso ese para mostrar los movimientos
    '        pConsorcioID = Session("idConsorcio").ToString
    '        If Not Page.IsPostBack Then
    '            Refrescar()
    '            popularDDL()
    '        End If
    '    Else
    '        If Session("misConsorcios") Is Nothing Then  'Si no hay un consorcio seleccionado, cargo el combo con los valores.
    '            Alerta("No hay consorcios seleccionados, por favor seleccione un consorcio para ver sus movimientos")
    '            Dim vConsorcio As New Negocio.ConsorcioController
    '            Session("misConsorcios") = vConsorcio.traerPorCliente({Session("idCliente").ToString})
    '            popularDDL()
    '            Dim blank As New ListItem("---", "-1", True) 'Agrego un listitem vacio
    '            blank.Selected = True
    '            ddlConsorcios.Items.Add(blank)
    '            Session("idConsorcio") = "-1"
    '        ElseIf Session("idConsorcio") Is Nothing Then
    '            Alerta("No hay consorcios seleccionados, por favor seleccione un consorcio para ver sus movimientos")
    '            popularDDL()
    '            Dim blank As New ListItem("---", "-1", True) 'Agrego un listitem vacio
    '            blank.Selected = True
    '            ddlConsorcios.Items.Add(blank)
    '            Session("idConsorcio") = "-1"
    '        End If

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

    'Sub ConsultaEgresosGridView_RowEditing(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewEditEventArgs)
    '    ConsultaEgresosGridView.EditIndex = e.NewEditIndex
    '    Refrescar()
    'End Sub

    'Sub ConsultaEgresosGridView_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs)

    '    Alerta("Se dispone a eliminar el Egreso " & e.Values("Nombre").ToString & " del sistema. Se eliminaran todos las dependencias del mismo.")
    '    'vEgreso.Baja(e.Values("IdEgreso"))
    '    vBitacora.Registrar({27, "El usuario: " & Session("Usuario").ToString & " elimino la Egreso " & e.Values("Nombre").ToString})
    '    Refrescar()

    'End Sub

    'Sub ConsultaEgresosGridView_RowUpdating(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewUpdateEventArgs)
    '    Dim vRegistro = ConsultaEgresosGridView.Rows(e.RowIndex)
    '    Dim vIdEgreso As String = vRegistro.Cells(0).Text
    '    Dim vNombre As String = (CType((vRegistro.Cells(1).Controls(0)), TextBox)).Text
    '    Dim vDescripcion As String = (CType((vRegistro.Cells(2).Controls(0)), TextBox)).Text
    '    Dim vCoeficienteProrrateo As String = (CType((vRegistro.Cells(3).Controls(0)), TextBox)).Text
    '    Dim vMetrosCuadrados As String = (CType((vRegistro.Cells(4).Controls(0)), TextBox)).Text

    '    If vNombre <> "" And vCoeficienteProrrateo <> "" And vMetrosCuadrados <> "" Then
    '        Dim Varr() = {vIdEgreso, vNombre, vDescripcion, vCoeficienteProrrateo, vMetrosCuadrados}
    '        Try
    '            ' vEgreso.Modificacion(Varr)
    '            vBitacora.Registrar({31, "La Egreso " + vNombre + " se ha modificado correctamente"})
    '            Alerta("La Egreso " + vNombre + " se ha modificado correctamente")
    '            ConsultaEgresosGridView.EditIndex = -1
    '            Refrescar()
    '        Catch ex As VistaException
    '            vBitacora.Registrar({32, "Hubo un error en el intento de modificacion de la Egreso " + vNombre})
    '            Alerta("Hubo un problema al modificar la Egreso")
    '        End Try
    '    Else
    '        Alerta("Uno mas campos mandatorios estan en blanco, por favor, verifique la solicitud")
    '    End If
    'End Sub

    'Sub ConsultaEgresosGridView_RowCancelingEdit(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCancelEditEventArgs)
    '    ConsultaEgresosGridView.EditIndex = -1
    '    Refrescar()
    'End Sub

    'Protected Sub ConsultaEgresosGridView_PageIndexChanging(sender As Object, e As GridViewPageEventArgs)
    '    ConsultaEgresosGridView.PageIndex = e.NewPageIndex
    '    Refrescar()
    'End Sub

    'Public Sub Alerta(message As String)
    '    Dim Msg As String = "<script language='javascript'>"
    '    Msg += "alert('" & message & "');"
    '    Msg += "</script>"
    '    Response.Write(Msg)
    'End Sub

    'Private Sub Refrescar()
    '    If pConsorcioID <> "-1" Then
    '        Try
    '            ' ConsultaEgresosGridView.DataSource = vEgreso.traerPorConsorcio({pConsorcioID})
    '            Dim vArr() = {Session("idConsorcio"), New Object, New Object, New Object, New Object, New Object, New Object, New Object}
    '            vConsorcio.Consulta(vArr)
    '            ConsultaEgresosGridView.DataSource = vEgreso.traerPorConsorcio(vConsorcio.ConsorcioEnt)
    '            ConsultaEgresosGridView.DataBind()
    '        Catch ex As Exception
    '            Alerta("Hubo un problema al cargar los Egresos")
    '        End Try
    '    End If
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
    '    Dim Cant As String = Me.FormMovimientos.Controls.Count.ToString
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

    'Sub popularDDL()
    '    ddlConsorcios.DataSource = Session("misConsorcios")
    '    ddlConsorcios.DataValueField = "IdConsorcio"
    '    ddlConsorcios.DataTextField = "Nombre"
    '    ddlConsorcios.DataBind()
    'End Sub

End Class