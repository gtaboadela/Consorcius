Public Class EmpleadosBitacora
    Inherits System.Web.UI.Page
    'Dim vBitacora As New BitacoraVista
    'Dim fechaDesde, fechaHasta As Date
    'Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    '    If Not Page.IsPostBack Then
    '        RefrescarSinFiltro()
    '    End If
    '    'Limpio Cache para prevenir back button depues del logout.
    '    Response.Cache.SetCacheability(HttpCacheability.NoCache)
    '    Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1))
    '    Response.Cache.SetNoStore()
    '    If Session("isAuthenticated") <> 1 Then
    '        Response.Redirect("../Msg.aspx", False)
    '    End If

    'End Sub
    'Private Sub RefrescarSinFiltro()
    '    Try
    '        bitacoraGridView.DataSource = vBitacora.ConsultaN(999)
    '        bitacoraGridView.DataBind()
    '        Session("Filtro") = False
    '        bitacoraGridView.PageIndex = 0
    '    Catch ex As Exception
    '        ClientScript.RegisterStartupScript(Me.GetType(), "mialerta", "alert('" + ex.Message.ToString + "');", True)
    '    End Try

    'End Sub

    'Sub borrarBitacora(sender As Object, e As EventArgs)
    '    ClientScript.RegisterStartupScript(Me.GetType(), "mialerta", "alert('Se dispone a eliminar la bitacora del sistema');", True)
    '    vBitacora.Borrar()
    '    vBitacora.Registrar({11, "El usuario " + Session("Usuario") + " ha borrado la bitacora."})
    '    RefrescarSinFiltro()

    'End Sub

    'Public Sub cambioSeleccionDia(sender As Object, e As EventArgs)
    '    For Each fechita As DateTime In bitacoraCalendario.SelectedDates
    '        If StrComp(bitacoraFechaDesde.Text, "") = 0 Then
    '            bitacoraFechaDesde.Text &= fechita.ToString("d")
    '        ElseIf StrComp(bitacoraFechaHasta.Text, "") = 0 Then
    '            bitacoraFechaHasta.Text &= fechita.ToString("d")
    '        End If
    '    Next
    '    If StrComp(bitacoraFechaDesde.Text, "") <> 0 And StrComp(bitacoraFechaHasta.Text, "") <> 0 Then
    '        If CDate(bitacoraFechaHasta.Text) < CDate(bitacoraFechaDesde.Text) Then
    '            ClientScript.RegisterStartupScript(Me.GetType(), "mialerta", "alert('La fecha Hasta no puede ser anterior a Desde.');", True)
    '            bitacoraFechaDesde.Text = ""
    '            bitacoraFechaHasta.Text = ""
    '            bitacoraCalendario.SelectedDates.Clear()
    '        End If
    '    End If

    'End Sub

    'Public Sub LimpiarFechas(source As Object, e As EventArgs)
    '    bitacoraFechaDesde.Text = ""
    '    bitacoraFechaHasta.Text = ""
    '    bitacoraCalendario.SelectedDates.Clear()
    '    RefrescarSinFiltro()
    'End Sub

    'Public Sub AplicarFiltro(source As Object, e As EventArgs)

    '    FiltarBitacora()
    '    bitacoraCalendario.SelectedDates.Clear()

    'End Sub
    'Protected Sub bitacoraGridView_PageIndexChanging(sender As Object, e As GridViewPageEventArgs)
    '    bitacoraGridView.PageIndex = e.NewPageIndex
    '    If Not Session("Filtro") Then
    '        RefrescarSinFiltro()
    '    Else
    '        ' bitacoraGridView.DataSource = vBitacora.ConsultaDesdeHasta(fechaDesde, fechaHasta)
    '        ' bitacoraGridView.DataBind()
    '        FiltarBitacora()
    '    End If
    'End Sub

    'Private Sub FiltarBitacora()
    '    If StrComp(bitacoraFechaDesde.Text, "") = 0 And StrComp(bitacoraFechaHasta.Text, "") = 0 Then
    '        ClientScript.RegisterStartupScript(Me.GetType(), "mialerta", "alert('No ha seleccionado valores, se muestran los resultados sin filtros');", True)
    '    Else
    '        If StrComp(bitacoraFechaDesde.Text, "") <> 0 And StrComp(bitacoraFechaHasta.Text, "") <> 0 Then
    '            If CDate(bitacoraFechaHasta.Text) = Today Then
    '                'ClientScript.RegisterStartupScript(Me.GetType(), "mialerta", "alert('Fecha Hasta invalida, se toma el día de hoy.');", True)
    '                bitacoraFechaHasta.Text = Today
    '                fechaDesde = bitacoraFechaDesde.Text
    '                fechaHasta = Today.AddDays(1)
    '                bitacoraGridView.DataSource = vBitacora.ConsultaDesdeHasta(fechaDesde, fechaHasta)
    '                bitacoraGridView.DataBind()
    '                Session("Filtro") = True
    '            Else
    '                fechaDesde = bitacoraFechaDesde.Text
    '                fechaHasta = bitacoraFechaHasta.Text
    '                bitacoraGridView.DataSource = vBitacora.ConsultaDesdeHasta(fechaDesde, fechaHasta)
    '                bitacoraGridView.DataBind()
    '                Session("Filtro") = True
    '            End If
    '        End If

    '        If StrComp(bitacoraFechaHasta.Text, "") = 0 Then
    '            ClientScript.RegisterStartupScript(Me.GetType(), "mialerta", "alert('Fecha Hasta vacia, se toma el día de hoy.');", True)
    '            bitacoraFechaHasta.Text = Today
    '            fechaDesde = bitacoraFechaDesde.Text
    '            fechaHasta = Today.AddDays(1)
    '            bitacoraGridView.DataSource = vBitacora.ConsultaDesdeHasta(fechaDesde, fechaHasta)
    '            bitacoraGridView.DataBind()
    '            Session("Filtro") = True
    '        End If

    '    End If
    '    bitacoraGridView.PageIndex = 0
    'End Sub

    'Public Sub dayRender(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DayRenderEventArgs) Handles bitacoraCalendario.DayRender
    '    'Deshabilito los dias futuros y me ahorro muchos problemas
    '    If e.Day.Date > Today Then
    '        e.Day.IsSelectable = False
    '        e.Cell.ForeColor = Drawing.Color.Gray
    '    End If
    'End Sub

End Class