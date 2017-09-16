Imports Consorcius.Entity
Public Class UsuarioDAO

#Region "Funciones Publicas CRUD"
    Public Function Agregar(ByRef pObjeto As Object) As Boolean
        Dim _objeto As Usuario = Activator.CreateInstance(pObjeto.GetType)
        _objeto = pObjeto

        Dim _listaParametros As New List(Of SQLParametros)
        _listaParametros.AddRange({
        New SQLParametros("@apellido", SqlDbType.VarChar, _objeto.apellido),
        New SQLParametros("@nombre", SqlDbType.VarChar, _objeto.nombre),
        New SQLParametros("@usuario", SqlDbType.VarChar, _objeto.usuario),
        New SQLParametros("@clave", SqlDbType.VarChar, _objeto.clave),
        New SQLParametros("@email", SqlDbType.VarChar, _objeto.email),
        New SQLParametros("@idCliente", SqlDbType.Int, _objeto.idCliente),
        New SQLParametros("@hash", SqlDbType.VarChar, _objeto.hash),
        New SQLParametros("@idioma", SqlDbType.VarChar, _objeto.Idioma)
})

        Try
            SQLComandos.NoRet("SP_agregarUsuario", _listaParametros)
        Catch ex As Exception
            Console.Write("Error al Insertar Usuario", ex)
            Return False
        End Try

        Return True
    End Function
    Public Function Consultar(ByRef pObjeto As Object) As Boolean
        Dim _objeto As Usuario = Activator.CreateInstance(pObjeto.GetType)
        _objeto = pObjeto

        Dim _listaParametros As New List(Of SQLParametros)
        _listaParametros.Add(New SQLParametros("@UserId", SqlDbType.VarChar, _objeto.usuario))
        '_listaParametros.Add(New SQLParametros("@Clave", SqlDbType.VarChar, _objeto.clave))
        Try
            Dim Vdt As DataTable = SQLComandos.RetDatatable("SP_ConsultarUsuario", _listaParametros)
            _objeto.apellido = Vdt.Rows(0).Item("US_apellido")
            _objeto.nombre = Vdt.Rows(0).Item("US_nombre")
            _objeto.bloqueado = Vdt.Rows(0).Item("US_bloqueado")
            _objeto.eliminado = Vdt.Rows(0).Item("US_eliminado")
            _objeto.email = Vdt.Rows(0).Item("US_email")
            _objeto.Idioma = Vdt.Rows(0).Item("US_idIdioma")
            _objeto.idCliente = Vdt.Rows(0).Item("US_idCliente")
            _objeto.clave = Vdt.Rows(0).Item("US_clave")
        Catch ex As Exception
            Console.Write("Usuario Inexistente", ex)
            Return False
        End Try

        Return True

    End Function

    Public Function Eliminar(ByRef pObjeto As Object) As Boolean
        Dim _objeto As Usuario = Activator.CreateInstance(pObjeto.GetType)
        _objeto = pObjeto

    End Function

    Public Function Modificar(ByRef pObjeto As Object) As Boolean
        Dim _objeto As Usuario = Activator.CreateInstance(pObjeto.GetType)
        _objeto = pObjeto

        Dim _listaParametros As New List(Of SQLParametros)
        _listaParametros.AddRange({
            New SQLParametros("@apellido", SqlDbType.VarChar, _objeto.apellido),
            New SQLParametros("@nombre", SqlDbType.VarChar, _objeto.nombre),
            New SQLParametros("@usuario", SqlDbType.VarChar, _objeto.usuario),
            New SQLParametros("@clave", SqlDbType.VarChar, _objeto.clave),
            New SQLParametros("@email", SqlDbType.VarChar, _objeto.email),
            New SQLParametros("@idCliente", SqlDbType.Int, _objeto.idCliente),
            New SQLParametros("@eliminado", SqlDbType.Bit, _objeto.eliminado),
            New SQLParametros("@bloqueado", SqlDbType.Bit, _objeto.bloqueado),
            New SQLParametros("@hash", SqlDbType.VarChar, _objeto.hash),
            New SQLParametros("@idioma", SqlDbType.VarChar, _objeto.Idioma)})
        Try
            SQLComandos.NoRet("SP_modificarUsuario", _listaParametros)
        Catch ex As Exception
            Console.Write("Error al Modificar Usuario", ex)
            Return False
        End Try

        Return True

    End Function


    Public Function Listar(pCantidad As Integer) As List(Of Consorcius.Entity.Usuario)

        Dim _listaParametros As New List(Of SQLParametros)
        _listaParametros.Add(New SQLParametros("@cantidad", SqlDbType.VarChar, pCantidad))

        Dim listaUsuarios As New List(Of Usuario)
        Try
            Dim dt As DataTable = SQLComandos.RetDatatable("SP_ListarUsuarios", _listaParametros)
            If dt.Rows.Count > 0 Then
                For Each dr As DataRow In dt.Rows
                    listaUsuarios.Add(New Usuario(dr.Item("US_apellido"), dr.Item("US_bloqueado"), dr.Item("US_clave"), dr.Item("US_eliminado"), dr.Item("US_email"), dr.Item("US_nombre"), dr.Item("US_usuario"), dr.Item("US_idIdioma"), dr.Item("US_idCliente"), dr.Item("US_hash")))
                Next
            End If
            Return listaUsuarios
        Catch ex As Exception

        End Try

    End Function

#End Region

End Class
