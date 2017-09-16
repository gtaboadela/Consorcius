Imports Consorcius.Entity
Imports Consorcius.Business

Imports System.Windows.Forms

Public Class LoginEmpleados
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub LogIn(sender As Object, e As EventArgs)
        If IsValid Then
            Dim _usuario As New Usuario
            Dim _login As New LoginController
            Dim usuario As String = ctrlUsuario.Text
            Dim clave As String = ctrlPassword.Text
            Dim arr() = {usuario, clave}
            _usuario.usuario = usuario
            _usuario.clave = clave
            Try
                If _login.IniciarSesion(_usuario) Then
                    Response.Redirect("Prueba.aspx", False)
                Else
                    FailureText.Text = "Login Invalido"
                    ErrorMessage.Visible = True
                End If
            Catch ex As Exception
                FailureText.Text = "Login Invalido"
                ErrorMessage.Visible = True
            End Try



        End If
    End Sub

    'Public Sub OnSubmit(source As Object, e As EventArgs)
    '    Dim vBitacoraVi As New BitacoraVista
    '    Dim VusuarioVi As New UEmpleadoVista
    '    Dim Vusuario As String = Request.Form("usuario")
    '    Dim Vclave As String = Request.Form("clave")
    '    Dim Varr() = {Vusuario, Vclave}

    '    If Vusuario <> "" And Vclave <> "" Then
    '        vBitacoraVi.Registrar({1, "Se registro un intento de login con el usuario " + Vusuario})
    '        Try
    '            VusuarioVi.Login(Varr)
    '            If VusuarioVi.UsuarioEnt.eliminado = True Then
    '                vBitacoraVi.Registrar({4, "Login Fallido. Error: El usuario " + Vusuario + " esta deshabilitado"})
    '                 Alerta("Usuario deshabilitado. Por favor, contacte al administrador.")
    '            ElseIf VusuarioVi.UsuarioEnt.bloqueado = True Then
    '                vBitacoraVi.Registrar({4, "Login Fallido. Error: El usuario " + Vusuario + " esta bloqueado"})
    '                Alerta("Usuario bloqueado. Por favor, contacte al administrador.")
    '            Else
    '                vBitacoraVi.Registrar({2, "El usuario " + Vusuario + " se ha logueado correctamente"})
    '                Session("Usuario") = VusuarioVi.UsuarioEnt.usuario
    '                Session("NombreUsuario") = VusuarioVi.UsuarioEnt.nombre
    '                Session("IsAuthenticated") = 1
    '                Response.Redirect("Empleados/EmpleadosHome.aspx", False)
    '            End If

    '        Catch ex As VistaException
    '            vBitacoraVi.Registrar({4, "El usuario " + Vusuario + " fallo en su intento de login. Error: " + ex.InnerException.InnerException.InnerException.Message.ToString})
    '            Alerta("Usuario o Password incorrecta. Por favor, verifique sus datos e intente nuevamente.")
    '        End Try
    '    Else
    '        Alerta("Usuario o Password en Blanco. Por favor, verifique sus datos e intente nuevamente.")
    '    End If
    'End Sub
    'Public Sub Alerta(message As String)

    '    Dim Msg As String = "<script language='javascript'>"
    '    Msg += "alert('" & message & "');"
    '    Msg += "</script>"
    '    Response.Write(Msg)

    'End Sub
End Class