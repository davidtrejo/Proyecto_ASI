﻿Public Class frmCerrarCuenta
    Inherits System.Web.UI.Page
    Dim ahorro As New clahorro
    Dim persona As New clpersona
    Dim producto As New clproducto

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            'Me.txtFecha.Value = Date.Now.Date
            'llenarcombos()

            'If Request.QueryString("id") <> "" Then

            '    Me.cmbSocio.SelectedValue = Request.QueryString("id")

            'End If

        End If
    End Sub

    Protected Sub btnBuscar_Click(sender As Object, e As EventArgs) Handles btnBuscar.Click
        Dim sqlCondicion As String = If(Me.txtNombre.Text.Length > 0, " WHERE nombreCompleto LIKE '%" & Me.txtNombre.Text & "%'", " WHERE NULL")
    End Sub
End Class