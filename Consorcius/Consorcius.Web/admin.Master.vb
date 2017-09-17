Imports Consorcius.Business


Public Class admin
    Inherits System.Web.UI.MasterPage

    Dim _traductor As New TraductorController

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Page.IsPostBack Then
            traerIdiomas()
        End If




    End Sub

    Protected Sub traerIdiomas()

        Dim ListaIdiomasHtml As String = ""

        For Each Idioma In _traductor.ListarIdiomas()
            ListaIdiomasHtml += " <li><a id=""MST-" + Idioma + """ href="""" runat=""server"" onserverclick=""Traducir"">" + Idioma + "</a></li>"
        Next

        ddmIdiomas.Text = ListaIdiomasHtml


    End Sub

    Protected Sub Traducir(sender As Object, e As EventArgs)

        Dim D As String
        D = "rwe"

    End Sub

End Class