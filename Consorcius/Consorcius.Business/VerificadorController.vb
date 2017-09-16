Imports Consorcius.Entity
Imports Consorcius.Data

Public Class VerificadorController
    Dim _bitacoraController As New BitacoraController
    Dim _encriptador As New EncriptadorController
    Dim _usuarioController As New UsuarioController
    Dim _verificadorDal As New VerificadorDAO


#Region "Funciones Publicas"
    Public Function VerificarIntegridad(ByRef pCantDVH As Integer, ByRef pCantDVV As Integer, ByRef pExecTime As TimeSpan) As Boolean
        Static start_time As DateTime
        Static stop_time As DateTime
        Dim integridad As Boolean = True
        start_time = Now
        Dim listaUsuarios As New List(Of Usuario)
        listaUsuarios = _usuarioController.Listar(999)
        pCantDVH = listaUsuarios.Count
        pCantDVV = 1
        Dim DVH As Boolean = ControlarH(listaUsuarios)
        If DVH Then
            Dim DVV As Boolean = ControlarV(listaUsuarios, "USUARIO")
            If Not DVV Then
                integridad = False
            End If
        Else
            integridad = False
        End If
        If integridad Then
            _bitacoraController.Agregar(New Bitacora(Bitacora.TipoActividad.IntegridadOK))
        Else
            _bitacoraController.Agregar(New Bitacora(Bitacora.TipoActividad.IntegridadNoOK))
        End If
        stop_time = Now
        pExecTime = stop_time.Subtract(start_time)

        Return integridad

    End Function

#End Region

#Region "Funciones Privadas"
    Public Function ControlarH(pListaObjetos As IEnumerable(Of Object)) As Boolean
        Dim integridadH As Boolean = True
        Dim hashCalculado As String
        For Each objeto As Object In pListaObjetos
            hashCalculado = CalcularH(objeto)
            If objeto.hash <> hashCalculado Then
                integridadH = False
                Dim propiedades = objeto.GetType().GetProperties()
                Dim strPropiedades As String = ""
                For Each prop In propiedades
                    Dim lineaPropiedad As String = prop.Name + " = " + prop.GetValue(objeto, Nothing).ToString + "; "
                    strPropiedades += lineaPropiedad
                Next
                _bitacoraController.Agregar(New Bitacora(Bitacora.TipoActividad.DVHFallida, "Objeto: " + strPropiedades + ". Hash calculado: " + hashCalculado))
                Exit For
            End If
        Next
        Return integridadH
    End Function

    Public Function CalcularH(pObjeto As Object) As String
        Dim concatenado As String = ""
        Dim propiedades = pObjeto.GetType().GetProperties()
        For Each prop In propiedades
            If prop.Name <> "hash" Then
                concatenado += prop.GetValue(pObjeto, Nothing).ToString
            End If
        Next
        Return _encriptador.Encriptar(concatenado)
    End Function


    Private Function ControlarV(pListaObjetos As IEnumerable(Of Object), pDVVName As String) As Boolean
        Dim integridadV As Boolean = True
        Dim shortHash As String = ""
        Dim hashCalculado As String
        Dim concatenado As String = ""
        For Each objeto In pListaObjetos
            concatenado += objeto.hash
        Next
        hashCalculado = CalcularV(concatenado)
        For i As Integer = 0 To 155 Step 2
            Dim c As Char = hashCalculado(i)
            shortHash += c
        Next
        shortHash += "=="
        If shortHash <> _verificadorDal.Consultar(pDVVName) Then
            integridadV = False
            _bitacoraController.Agregar(New Bitacora(Bitacora.TipoActividad.DVVFallida, "Objeto: " + pDVVName + ". Hash calculado: " + shortHash))
        End If
        Return integridadV
    End Function

    Public Function ActualizarV(pDVVName As String) As Boolean
        Dim hashCalculado As String
        Dim shortHash As String = ""
        Dim concatenado As String = ""
        Dim listaObjetos As IEnumerable(Of Object)

        Select Case pDVVName
            Case "USUARIO"
                listaObjetos = _usuarioController.Listar(999)
            Case Else
                listaObjetos = _usuarioController.Listar(999)
        End Select
        For Each objeto In listaObjetos
            concatenado += objeto.hash
        Next
        Try
            hashCalculado = CalcularV(concatenado)
            For i As Integer = 0 To 155 Step 2
                Dim c As Char = hashCalculado(i)
                shortHash += c
            Next
            shortHash += "=="
            _verificadorDal.ActualizarV(pDVVName, shortHash)
        Catch ex As Exception
            Return False
        End Try

        Return True

    End Function

    Private Function CalcularV(pConcatenado As String) As String
        Return _encriptador.Encriptar(pConcatenado)
    End Function
#End Region

End Class
