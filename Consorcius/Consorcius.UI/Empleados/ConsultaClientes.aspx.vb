Public Class EmpleadosConsultaClientes
    Inherits System.Web.UI.Page
    Dim vCliente As New ClienteVista
    Dim vBitacora As New BitacoraVista

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
    'End Sub

    'Sub ConsultaClientesGridView_RowEditing(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewEditEventArgs)
    '    ConsultaClientesGridView.EditIndex = e.NewEditIndex
    '    Refrescar()
    'End Sub

    'Sub ConsultaClientesGridView_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs)

    '    Alerta("Se dispone a eliminar el Cliente " & e.Values("Nombre").ToString & " del sistema.")
    '    vCliente.Baja(e.Values("IDCliente"))
    '    vBitacora.Registrar({19, "El usuario: " & Session("Usuario").ToString & " elimino el usuario " & e.Values("Nombre").ToString})
    '    Refrescar()

    'End Sub

    'Sub ConsultaClientesGridView_RowUpdating(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewUpdateEventArgs)
    '    Dim vRegistro = ConsultaClientesGridView.Rows(e.RowIndex)
    '    Dim vIdCliente As String = vRegistro.Cells(0).Text
    '    Dim vNombre As String = (CType((vRegistro.Cells(1).Controls(0)), TextBox)).Text
    '    Dim vFechaAlta As String = (CType((vRegistro.Cells(2).Controls(0)), TextBox)).Text
    '    Dim vDireccion As String = (CType((vRegistro.Cells(3).Controls(0)), TextBox)).Text
    '    Dim vTelefono As String = (CType((vRegistro.Cells(4).Controls(0)), TextBox)).Text
    '    Dim vCuit As String = (CType((vRegistro.Cells(5).Controls(0)), TextBox)).Text
    '    Dim vUsuarioAdministrador As String = vRegistro.Cells(6).Text

    '    If vNombre <> "" And vFechaAlta <> "" And vDireccion <> "" And vTelefono <> "" And vCuit <> "" Then
    '        Dim Varr() = {vIdCliente, vNombre, vFechaAlta, vDireccion, vTelefono, vCuit, vUsuarioAdministrador}
    '        Try
    '            vCliente.Modificacion(Varr)
    '            vBitacora.Registrar({17, "El cliente " + vNombre + " se ha modificado correctamente"})
    '            Alerta("El cliente " + vNombre + " se ha modificado correctamente")
    '            ConsultaClientesGridView.EditIndex = -1
    '            Refrescar()
    '        Catch ex As VistaException
    '            vBitacora.Registrar({18, "Hubo un error en el intento de modificacion del cliente " + vNombre})
    '            Alerta("Hubo un problema al modificar el Cliente")
    '        End Try
    '    Else
    '        Alerta("Uno mas campos mandatorios estan en blanco, por favor, verifique la solicitud")
    '    End If



    'End Sub

    'Sub ConsultaClientesGridView_RowCancelingEdit(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCancelEditEventArgs)
    '    ConsultaClientesGridView.EditIndex = -1
    '    Refrescar()
    'End Sub

    'Protected Sub ConsultaClientesGridView_PageIndexChanging(sender As Object, e As GridViewPageEventArgs)
    '    ConsultaClientesGridView.PageIndex = e.NewPageIndex
    '    Refrescar()
    'End Sub

    'Public Sub Alerta(message As String)
    '    Dim Msg As String = "<script language='javascript'>"
    '    Msg += "alert('" & message & "');"
    '    Msg += "</script>"
    '    Response.Write(Msg)
    'End Sub

    'Private Sub Refrescar()
    '    ConsultaClientesGridView.DataSource = vCliente.traerTodas
    '    ConsultaClientesGridView.DataBind()
    'End Sub


End Class