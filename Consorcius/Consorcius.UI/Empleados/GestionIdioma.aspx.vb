Public Class EmpleadosIdioma
    Inherits System.Web.UI.Page
    Dim vEtiqueta As New EtiquetaVista
    Dim vIdPagina As String
    Dim vBitacora As New BitacoraVista

    'Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    '    'Limpio Cache para prevenir back button depues del logout.
    '    Response.Cache.SetCacheability(HttpCacheability.NoCache)
    '    Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1))
    '    Response.Cache.SetNoStore()
    '    If Session("isAuthenticated") <> 1 Then
    '        Response.Redirect("../Msg.aspx", False)
    '    End If
    '    If Not Page.IsPostBack Then
    '        RefrescarSinFiltro()
    '    End If
    'End Sub



    'Protected Sub idiomaGridView_PageIndexChanging(sender As Object, e As GridViewPageEventArgs)
    '    idiomaGridView.PageIndex = e.NewPageIndex
    '    If Not Session("Filtro") Then
    '        RefrescarSinFiltro()
    '    Else
    '        idiomaGridView.DataSource = vEtiqueta.traerPorPagina(vIdPagina)
    '        idiomaGridView.DataBind()
    '    End If
    'End Sub

    'Private Sub RefrescarSinFiltro()
    '    Try
    '        idiomaGridView.DataSource = vEtiqueta.traerTodas
    '        idiomaGridView.DataBind()
    '        Session("Filtro") = False
    '        idiomaGridView.PageIndex = 0

    '    Catch ex As Exception
    '        ClientScript.RegisterStartupScript(Me.GetType(), "mialerta", "alert('" + ex.Message.ToString + "');", True)
    '    End Try

    'End Sub

    'Sub idiomaGridView_RowEditing(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewEditEventArgs)
    '    idiomaGridView.EditIndex = e.NewEditIndex
    '    RefrescarSinFiltro()
    'End Sub

    'Sub idiomaGridView_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs)
    '    Alerta("Se dispone a eliminar la Etiqueta " & e.Values("IdEtiqueta").ToString & " del sistema.")
    '    vEtiqueta.Baja({e.Values("IdEtiqueta"), e.Values("Idioma")})
    '    vBitacora.Registrar({12, "El usuario: " & Session("Usuario").ToString & " elimino la etiqueta " & e.Values("IdEtiqueta").ToString})
    '    RefrescarSinFiltro()
    'End Sub

    'Sub idiomaGridView_RowUpdating(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewUpdateEventArgs)
    '    Dim vRegistro = idiomaGridView.Rows(e.RowIndex)
    '    Dim vIdEtiqueta As String = DirectCast(vRegistro.FindControl("txtIdEtiqueta"), TextBox).Text
    '    Dim vIdIdioma As String = DirectCast(vRegistro.FindControl("txtIdioma"), TextBox).Text
    '    Dim vTexto As String = DirectCast(vRegistro.FindControl("txtTexto"), TextBox).Text
    '    Dim vDescripcion As String = DirectCast(vRegistro.FindControl("txtDescripcion"), TextBox).Text
    '    Dim Varr() = {vIdEtiqueta, vIdIdioma, vTexto, vDescripcion}
    '    Try
    '        vEtiqueta.Modificacion(Varr)
    '        vBitacora.Registrar({14, "La Etiqueta " + vIdEtiqueta + " se ha modificado correctamente"})
    '        Alerta("La Etiqueta ha sido modificado correctamente")
    '        idiomaGridView.EditIndex = -1
    '        RefrescarSinFiltro()
    '    Catch ex As Exception
    '        vBitacora.Registrar({14, "Hubo un error en el intento de modificacion de la etiqueta " + vIdEtiqueta})
    '        Alerta("Hubo un problema al modificar la etiqueta")
    '        RefrescarSinFiltro()
    '    End Try
    'End Sub

    'Sub idiomaGridView_RowCancelingEdit(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCancelEditEventArgs)
    '    idiomaGridView.EditIndex = -1
    '    RefrescarSinFiltro()
    'End Sub

    'Sub agregarEtiqueta(ByVal sender As Object, ByVal e As EventArgs)
    '    Dim vIdEtiqueta As String = DirectCast(idiomaGridView.FooterRow.FindControl("txtIdEtiqueta"), TextBox).Text
    '    Dim vIdioma As String = DirectCast(idiomaGridView.FooterRow.FindControl("txtIdioma"), TextBox).Text
    '    Dim vTexto As String = DirectCast(idiomaGridView.FooterRow.FindControl("txtTexto"), TextBox).Text
    '    Dim vDescripcion As String = DirectCast(idiomaGridView.FooterRow.FindControl("txtDescripcion"), TextBox).Text
    '    Dim vArr = {vIdEtiqueta, vIdioma, vTexto, vDescripcion}
    '    Try
    '        vEtiqueta.Alta(vArr)
    '        RefrescarSinFiltro()
    '        vBitacora.Registrar({12, "La Etiqueta " + vIdEtiqueta + " se ha agregado correctamente"})
    '        Alerta("La Etiqueta ha sido agregada correctamente")
    '    Catch ex As Exception
    '        vBitacora.Registrar({14, "Hubo un error en el intento de agregar una etiqueta"})
    '        Alerta("Hubo un problema al agregar la etiqueta")
    '    End Try


    'End Sub


    'Public Sub Alerta(message As String)
    '    Dim Msg As String = "<script language='javascript'>"
    '    Msg += "alert('" & message & "');"
    '    Msg += "</script>"
    '    Response.Write(Msg)
    'End Sub

End Class