Public Class About
    Inherits Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        Dim usuario As New Consorcius.Entity.Usuario
        Dim _encriptador As New Consorcius.Business.EncriptadorController
        Dim _verificador As New Consorcius.Business.VerificadorController
        Dim usuarioc As New Consorcius.Business.UsuarioController
        'usuario.apellido = "taboadela"
        'usuario.nombre = "pedro"
        'usuario.usuario = "ptaboadela"
        'usuario.Idioma = "ENG"
        'usuario.clave = _encriptador.Encriptar("123456")
        'usuario.email = "ptaboadela@mail.com"
        'usuario.idCliente = 1
        'usuario.hash = _verificador.CalcularH(usuario)
        'usuarioc.Agregar(usuario)

        'usuario.apellido = "taboadela"
        'usuario.nombre = "serafin"
        'usuario.usuario = "staboadela"
        'usuario.Idioma = "ENG"
        'usuario.clave = _encriptador.Encriptar("123456")
        'usuario.email = "staboadela@mail.com"
        'usuario.idCliente = 1
        'usuario.hash = _verificador.CalcularH(usuario)
        'usuarioc.Agregar(usuario)

        'usuario.apellido = "taboadela"
        'usuario.nombre = "german"
        'usuario.usuario = "gtaboadela"
        'usuario.Idioma = "ENG"
        'usuario.clave = _encriptador.Encriptar("123456")
        'usuario.email = "gtaboadela@mail.com"
        'usuario.idCliente = 1
        'usuario.hash = _verificador.CalcularH(usuario)
        'usuarioc.Agregar(usuario)


        usuario.apellido = "balcedo"
        usuario.nombre = "pamela"
        usuario.usuario = "pbalcedo"
        usuario.Idioma = "ENG"
        usuario.clave = _encriptador.Encriptar("123456")
        usuario.email = "pbalcedo@mail.com"
        usuario.idCliente = 1
        usuarioc.Agregar(usuario)

        '_verificador.ActualizarV("USUARIO")



        'Dim _respaldo As New Consorcius.Business.RespaldoController
        ''_respaldo.Backup("testbkp.bak", "C:\Temp")

        '_respaldo.Restore("testbkp.bak", "C:\Temp")
        'Dim _bitacora As New Consorcius.Business.BitacoraController
        'Dim result As Boolean = _bitacora.ValidarActividadLogin(4, "staboadela", 3, 90)
        'Dim result2 As Boolean = _bitacora.ValidarActividadLogin(4, "staboadela", 3, 20)
    End Sub
End Class