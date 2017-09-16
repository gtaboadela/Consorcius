
Imports Consorcius.Business

Public Class EmpleadosConsulta
    Inherits System.Web.UI.Page
    'Dim vUsuario As New UEmpleadoVista
    'Dim vBitacora As New BitacoraVista

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

    'Sub ConsultaGridView_RowEditing(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewEditEventArgs)
    '    ConsultaGridView.EditIndex = e.NewEditIndex
    '    Refrescar()
    'End Sub

    'Sub ConsultaGridView_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs)
    '    If Session("Usuario").ToString <> e.Values("usuario").ToString Then
    '        Alerta("Se dispone a eliminar el Usuario " & e.Values("usuario").ToString & " del sistema.")
    '        vUsuario.Baja(e.Values("usuario"))
    '        vBitacora.Registrar({9, "El usuario: " & Session("Usuario").ToString & " elimino el usuario " & e.Values("usuario").ToString})
    '        Refrescar()
    '    Else
    '        vBitacora.Registrar({10, "El usuario: " & Session("Usuario").ToString & " no pudo eliminar el usuario " & e.Values("usuario").ToString & " : usuario activo"})
    '        Alerta("No puede eliminar el usuario " & e.Values("usuario").ToString & " ya que es el usuario activo")

    '    End If
    'End Sub

    'Sub ConsultaGridView_RowUpdating(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewUpdateEventArgs)
    '    Dim vRegistro = ConsultaGridView.Rows(e.RowIndex)
    '    Dim vBitacoraVi As New BitacoraVista
    '    Dim VusuarioVi As New UEmpleadoVista
    '    Dim vApellido As String = (CType((vRegistro.Cells(1).Controls(0)), TextBox)).Text
    '    Dim vNombre As String = (CType((vRegistro.Cells(0).Controls(0)), TextBox)).Text
    '    Dim vEmail As String = (CType((vRegistro.Cells(4).Controls(0)), TextBox)).Text
    '    Dim vUsuario As String = (CType((vRegistro.Cells(2).Controls(0)), TextBox)).Text
    '    Dim vCuit As Integer
    '    Integer.TryParse((CType((vRegistro.Cells(3).Controls(0)), TextBox)).Text, vCuit)

    '    If vApellido <> "" Or vNombre <> "" Or vUsuario <> "" Then
    '        Dim Varr() = {vNombre, vApellido, vCuit, vEmail, vUsuario}
    '        Try
    '            VusuarioVi.Modificacion(Varr)
    '            vBitacoraVi.Registrar({7, "El usuario " + vUsuario + " se ha modificado correctamente"})
    '            Alerta("El usuario ha sido modificado correctamente")
    '            ConsultaGridView.EditIndex = -1
    '            Refrescar()
    '        Catch ex As VistaException
    '            vBitacoraVi.Registrar({8, "Hubo un error en el intento de modificacion del usuario " + vUsuario})
    '            Alerta("Hubo un problema al modificar el usuario")
    '        End Try
    '    Else
    '        Alerta("Uno mas campos mandatorios estan en blanco, por favor, verifique la solicitud")
    '    End If

    'End Sub

    'Sub ConsultaGridView_RowCancelingEdit(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCancelEditEventArgs)
    '    ConsultaGridView.EditIndex = -1
    '    Refrescar()
    'End Sub

    'Public Sub Alerta(message As String)
    '    Dim Msg As String = "<script language='javascript'>"
    '    Msg += "alert('" & message & "');"
    '    Msg += "</script>"
    '    Response.Write(Msg)
    'End Sub

    'Private Sub Refrescar()
    '    ConsultaGridView.DataSource = vUsuario.ConsultaN(10)
    '    ConsultaGridView.DataBind()
    'End Sub
End Class