Imports Consorcius.Business


Public Class Logout
    Inherits System.Web.UI.Page

    Dim _loginController As New LoginController

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        _loginController.CerrarSesion(Session("Usuario"))
        Session("IsAuthenticated") = 0
        Session.Abandon()

    End Sub

End Class