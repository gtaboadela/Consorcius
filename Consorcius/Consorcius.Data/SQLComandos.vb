Imports System.Data.SqlClient
Imports System.Data
Imports System.Collections.Generic


Public Class SQLComandos

    Private Shared _objComando As SqlCommand
    Private Shared Function ObjComando(ByVal pNombreSP As String, ByVal pConexion As SqlConnection, ByVal pParametros As List(Of SQLParametros)) As SqlCommand
        _objComando = New SqlCommand
        _objComando.CommandText = pNombreSP
        _objComando.CommandType = CommandType.StoredProcedure
        _objComando.Connection = pConexion
        For Each param As SQLParametros In pParametros
            Dim p1 As New SqlParameter
            p1.ParameterName = param.NombreParametro
            p1.SqlDbType = param.TipoParametro
            p1.Value = param.Valor
            _objComando.Parameters.Add(p1)
        Next
        Return _objComando
    End Function

    Private Shared Function ObjComandoText(ByVal pText As String, ByVal pConexion As SqlConnection, ByVal pParametros As List(Of SQLParametros)) As SqlCommand
        _objComando = New SqlCommand
        _objComando.CommandText = pText
        _objComando.CommandType = CommandType.Text
        _objComando.Connection = pConexion
        For Each param As SQLParametros In pParametros
            Dim p As New SqlParameter
            p.ParameterName = param.NombreParametro
            p.SqlDbType = param.TipoParametro
            p.Value = param.Valor
            _objComando.Parameters.Add(p)
        Next
        Return _objComando
    End Function
    'ObjComando Recargada para que no tome parametros
    Private Shared Function ObjComando(ByVal pNombreSP As String, ByVal pConexion As SqlConnection) As SqlCommand
        _objComando = New SqlCommand
        _objComando.CommandText = pNombreSP
        _objComando.CommandType = CommandType.StoredProcedure
        _objComando.Connection = pConexion
        Return _objComando
    End Function

    Private Shared Function ObjComandoText(ByVal pText As String, ByVal pConexion As SqlConnection) As SqlCommand
        _objComando = New SqlCommand
        _objComando.CommandText = pText
        _objComando.CommandType = CommandType.Text
        _objComando.Connection = pConexion
        Return _objComando
    End Function

    'RetDataTAble Querys que retornan datos en un DataTable
    Shared Function RetDatatable(ByVal pNombreSP As String, ByVal pParametros As List(Of SQLParametros)) As DataTable

        Dim da As New SqlDataAdapter(ObjComando(pNombreSP, SQLConexion.ObjConexion, pParametros))
            Dim dt As New DataTable
            da.Fill(dt)
            Return dt

    End Function

    'NoRet solo para ExecuteNonQuery, no retorna datos
    Shared Sub NoRet(ByVal pText As String, ByVal pParametros As List(Of SQLParametros), Optional pIsText As Boolean = False)
        If pIsText Then
            ObjComandoText(pText, SQLConexion.ObjConexion, pParametros).ExecuteNonQuery()
        Else
            ObjComando(pText, SQLConexion.ObjConexion, pParametros).ExecuteNonQuery()
        End If
    End Sub
    Shared Function Scalar(ByVal pText As String, ByVal pParametros As List(Of SQLParametros), Optional pIsText As Boolean = False) As Boolean
        If pIsText Then

            If ObjComandoText(pText, SQLConexion.ObjConexion, pParametros).ExecuteScalar() = 1 Then
                Return True
            Else
                Return False
            End If
        Else
            If ObjComandoText(pText, SQLConexion.ObjConexion, pParametros).ExecuteScalar() = 1 Then
                Return True
            Else
                Return False
            End If
        End If


    End Function

    Shared Sub NoRet(ByVal pText As String, Optional pIsText As Boolean = False)
        If pIsText Then
            ObjComandoText(pText, SQLConexion.ObjConexion).ExecuteNonQuery()
        Else
            ObjComando(pText, SQLConexion.ObjConexion).ExecuteNonQuery()
        End If
    End Sub



    'RetDatatable Recargada para que no tome parametros
    Shared Function RetDatatable(ByVal pNombreSP As String) As DataTable
        Dim da As New SqlDataAdapter(ObjComando(pNombreSP, SQLConexion.ObjConexion))
        Dim dt As New DataTable
        da.Fill(dt)
        Return dt
    End Function



End Class
