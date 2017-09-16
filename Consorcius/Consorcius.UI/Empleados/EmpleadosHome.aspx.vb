

Public Class EmpleadosHome
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Limpio Cache para prevenir back button depues del logout.
        Response.Cache.SetCacheability(HttpCacheability.NoCache)
        Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1))
        Response.Cache.SetNoStore()

        If Session("isAuthenticated") <> 1 Then
            Response.Redirect("../Msg.aspx", False)

        End If
    End Sub

    

End Class