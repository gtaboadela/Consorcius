Imports Consorcius.Business
Public Class AdminIntegridad
    Inherits System.Web.UI.Page
    Dim _verificador As New VerificadorController

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        StatusText.Text = ""
        StatusMessage.Visible = False

        Dim DVH, DVV As Integer
        Dim TiempoEjecucion As TimeSpan
        If _verificador.VerificarIntegridad(DVH, DVV, TiempoEjecucion) Then
            StatusText.Text = "El Chequeo de Integridad fue ejecutado correctamente en: " + DateTime.Now.ToString("yyyy/MM/dd HH:mm:ss")
            StatusMessage.Visible = True
            lblDVH.Text = DVH.ToString
            lblDVV.Text = DVV.ToString
            lblEjecucion.Text = TiempoEjecucion.ToString

        Else
            StatusText.Text = "El chequeo de integridad falló, revise la bitacora para mayor detalle."
            StatusMessage.Visible = True

        End If

    End Sub

End Class