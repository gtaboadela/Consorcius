﻿Imports Consorcius.Business
Imports Consorcius.Entity


Public Class AdminRestore
    Inherits System.Web.UI.Page

    Dim _backup As New BackupController
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Page.IsPostBack Then
            Refrescar()
        End If
        'Limpio Cache para prevenir back button depues del logout.
        Response.Cache.SetCacheability(HttpCacheability.NoCache)
        Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1))
        Response.Cache.SetNoStore()
        If Session("isAuthenticated") <> 1 Then
            Response.Redirect("LoginMsg.aspx", False)
        End If

    End Sub

    Private Sub Refrescar()

        Try
            backupGridView.DataSource = _backup.Listar(10)
            backupGridView.DataBind()
            backupGridView.PageIndex = 0
        Catch ex As Exception

        End Try

    End Sub

    Protected Sub backupGridView_PageIndexChanging(sender As Object, e As GridViewPageEventArgs)
        backupGridView.PageIndex = e.NewPageIndex

        Refrescar()

    End Sub


    Protected Sub RealizarRestore(sender As Object, e As EventArgs)


        StatusText.Text = ""
        StatusMessage.Visible = False

        If IsValid Then

            Try
                Dim nombreBackup As String = txtNombreRestore.Text
                Dim pathBackup As String = txtPathRestore.Text


                If _backup.Restore(New Backup(nombreBackup, pathBackup)) Then
                    StatusText.Text = "El restore fue ejecutado correctamente"
                    StatusMessage.Visible = True

                Else
                    StatusText.Text = "Hubo un problema al realizar el Restore. Contactese con el administrador."
                    StatusMessage.Visible = True

                End If
                Refrescar()
            Catch ex As Exception

                StatusText.Text = "Hubo un problema al realizar el Restore. Contactese con el administrador."
                StatusMessage.Visible = True

            End Try
        Else
            Refrescar()

        End If


    End Sub

End Class