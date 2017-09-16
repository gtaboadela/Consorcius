Imports Consorcius.Business

Public Class AdminBitacora
    Inherits System.Web.UI.Page
    Dim _bitacora As New BitacoraController

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            RefrescarSinFiltro()
        End If
        'Limpio Cache para prevenir back button depues del logout.
        Response.Cache.SetCacheability(HttpCacheability.NoCache)
        Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1))
        Response.Cache.SetNoStore()
        If Session("isAuthenticated") <> 1 Then
            Response.Redirect("LoginMsg.aspx", False)
        End If

    End Sub


    Private Sub RefrescarSinFiltro()
        Try
            bitacoraGridView.DataSource = _bitacora.Listar(50)
            bitacoraGridView.DataBind()
            Session("Filtro") = False
            bitacoraGridView.PageIndex = 0
        Catch ex As Exception

        End Try

    End Sub

    Protected Sub bitacoraGridView_PageIndexChanging(sender As Object, e As GridViewPageEventArgs)
        bitacoraGridView.PageIndex = e.NewPageIndex
        If Not Session("Filtro") Then
            RefrescarSinFiltro()
        Else
            ' bitacoraGridView.DataSource = vBitacora.ConsultaDesdeHasta(fechaDesde, fechaHasta)
            ' bitacoraGridView.DataBind()
            'FiltarBitacora()
        End If
    End Sub


    Protected Sub LimpiarBitacora(sender As Object, e As EventArgs)
        _bitacora.Limpiar(Session("Usuario"))
        RefrescarSinFiltro()

    End Sub
End Class