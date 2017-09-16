Imports Consorcius.Business


Public Class AltaEmpleados
    Inherits System.Web.UI.Page

    'Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    '    'Limpio Cache para prevenir back button depues del logout.
    '    Response.Cache.SetCacheability(HttpCacheability.NoCache)
    '    Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1))
    '    Response.Cache.SetNoStore()

    '    If Session("isAuthenticated") <> 1 Then
    '        Response.Redirect("../Msg.aspx", False)

    '    End If
    'End Sub
    'Public Sub OnSubmitAltaEmpleado(source As Object, e As EventArgs)
    '    Dim vBitacoraVi As New BitacoraVista
    '    Dim VusuarioVi As New UEmpleadoVista
    '    Dim vApellido As String = Request.Form("empleadoApellido")
    '    Dim vNombre As String = Request.Form("empleadoNombre")
    '    Dim vEmail As String = Request.Form("empleadoEmail")
    '    Dim vUsuario As String = Request.Form("empleadoUsuario")
    '    Dim vClave As String = Request.Form("empleadoClave")
    '    Dim vCuit As Integer
    '    Integer.TryParse(Request.Form("empleadoCuit"), vCuit)
    '    If vApellido <> "" Or vNombre <> "" Or vUsuario <> "" Or vClave <> "" Then
    '        Dim Varr() = {vNombre, vApellido, vCuit, vEmail, vUsuario, vClave}
    '        Try
    '            VusuarioVi.Alta(Varr)

    '            vBitacoraVi.Registrar({5, "El usuario " + vUsuario + " se ha creado correctamente"})
    '            Alerta("El usuario ha sido agregado correctamente")
    '        Catch ex As VistaException
    '            Alerta("Hubo un problema al agregar el usuario. Posible Causa: ID de Usuario duplicado")
    '            vBitacoraVi.Registrar({6, "Error al intentar agregar el usuario " + vUsuario})
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

End Class