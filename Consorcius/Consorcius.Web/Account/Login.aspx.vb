Imports System.Web
Imports System.Web.UI
'Imports Microsoft.AspNet.Identity
'Imports Microsoft.AspNet.Identity.EntityFramework
'Imports Microsoft.AspNet.Identity.Owin
'Imports Microsoft.Owin.Security
'Imports Owin
Imports Consorcius.Business
Imports Consorcius.Entity

Partial Public Class Login

    Inherits Page

    Dim _bitacoraController As New BitacoraController
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load


    End Sub

    Protected Sub LogIn(sender As Object, e As EventArgs)
        FailureText.Text = ""
        ErrorMessage.Visible = False
        If IsValid Then
            Dim _usuario As New Usuario
            Dim _login As New LoginController
            Dim usuario As String = ctrlUsuario.Text
            Dim clave As String = ctrlPassword.Text
            Dim arr() = {usuario, clave}
            _usuario.usuario = usuario
            _usuario.clave = clave
            Try
                Select Case _login.IniciarSesion(_usuario)
                    Case 0
                        Session("Usuario") = _usuario.usuario
                        Session("Nombre") = _usuario.nombre
                        Session("Idioma") = _usuario.Idioma
                        Session("idCliente") = _usuario.idCliente
                        Session("IsAuthenticated") = 1
                        If _usuario.idCliente = 1 Then
                            Response.Redirect("AdminUsuarios.aspx", False)
                        Else
                            Response.Redirect("ClientesHome.aspx", False)
                        End If

                    Case 1
                        FailureText.Text = "Login invalido: Usuario Inexistente"
                        ErrorMessage.Visible = True
                    Case 2
                        FailureText.Text = "Login invalido: Usuario Bloqueado"
                        ErrorMessage.Visible = True
                    Case 3
                        FailureText.Text = "Login invalido: Clave incorrecta"
                        ErrorMessage.Visible = True
                End Select

            Catch ex As Exception
                FailureText.Text = "Login Invalido"
                ErrorMessage.Visible = True
            End Try



        End If
    End Sub
End Class
