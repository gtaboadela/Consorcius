Public Class AltaClientes
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

    'Public Sub OnSubmitAltaCliente(source As Object, e As EventArgs)
    '    Dim vBitacoraVi As New BitacoraVista
    '    Dim vClienteVi As New ClienteVista
    '    Dim vUClienteVi As New UClienteVista
    '    'Alta del usuario Administrador
    '    'Inicializo las variables con los datos del formulario
    '    Dim vNombreCliente As String = Request.Form("clienteNombre")
    '    Dim vDireccionCliente As String = Request.Form("clienteDireccion")
    '    Dim vTelefonoCliente As String = Request.Form("clienteTelefono")
    '    Dim vCuitCliente As String = Request.Form("clienteCuit")
    '    'Datos del Administrador
    '    Dim vNombre As String = Request.Form("administradorNombre")
    '    Dim vApellido As String = Request.Form("administradorApellido")
    '    Dim vEmail As String = Request.Form("administradorEmail")
    '    Dim vUsuario As String = Request.Form("administradorUsuario")
    '    Dim vClave As String = Request.Form("administradorClave")
    '    Dim vIdioma As String = Request.Form("administradorIdioma")

    '    If vNombreCliente <> "" And vDireccionCliente <> "" And vCuitCliente <> "" And vNombre <> "" And vApellido <> "" And vUsuario <> "" And vClave <> "" Then
    '        'Cargo datos del cliente
    '        Dim VarrCliente() = {vNombreCliente, vDireccionCliente, vTelefonoCliente, vCuitCliente}
    '        Try
    '            vClienteVi.Alta(VarrCliente) 'Alta del Cliente
    '            vBitacoraVi.Registrar({15, "El Cliente " + vNombreCliente + " se ha creado correctamente"})
    '            vClienteVi.Consulta({vNombreCliente}) 'Lleno el cliente con el ID asignado por la BD, para traer el ID
    '            Dim VarrAdministrador() = {vNombre, vApellido, vEmail, vUsuario, vClave, vClienteVi.ClienteEnt.IDCliente, vIdioma}
    '            vUClienteVi.Alta(VarrAdministrador) 'Alta del Administrador
    '            vBitacoraVi.Registrar({5, "El Usuario Cliente " + vUsuario + " se ha creado correctamente"})
    '            vUClienteVi.Consulta({vUsuario}) 'Lleno el usuario cliente con el ID asignado por la BD, para traer el ID
    '            vUClienteVi.AgregarFamilia(vUClienteVi.UsuarioEnt, 2) 'Asigno permisos de Administrador
    '            vBitacoraVi.Registrar({21, "Se asignaron permisos de Administrador al usuario " + vUsuario})
    '            Alerta("El Cliente y su usuario administrador han sido agregados correctamente")
    '        Catch ex As VistaException
    '            Alerta("Hubo un problema al agregar el cliente. Revise la bitacora para mas detalles")
    '            vBitacoraVi.Registrar({16, "Error al intentar agregar el cliente " + vNombreCliente})
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