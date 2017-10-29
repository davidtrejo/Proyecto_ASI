Public Class MantoSocios
    Inherits System.Web.UI.Page
    Dim persona As New clpersona
    Dim lnidpersona As Integer = 0
    Dim dtPersona As New DataTable

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then


            'Dim msjError As String = ""

            'If msjError = "" Then
            '    dtPersona = persona.ObtenerListaPersonas(msjError)
            '    If dtPersona.Rows.Count > 0 Then
            '        With dgvDatos
            '            .DataSource = dtPersona
            '            .DataBind()
            '        End With
            '    End If
            'End If

        End If
    End Sub

    Protected Sub btnBuscar_Click(sender As Object, e As EventArgs) Handles btnBuscar.Click
        Dim msjError As String = ""
        dtPersona.Rows.Clear()

        Try
            Dim transacciones As New clpersona
            'If Me.txtNombre.Text.Length = 0 Then
            '    MsgBox("Ingrese un nombre")
            '    Exit Sub
            'End If

            Dim sqlCondicion As String = If(Me.txtNombre.Text.Length > 0, " WHERE nombreCompleto LIKE '%" & Me.txtNombre.Text & "%'", " WHERE NULL")

            dtPersona = persona.ObtenerListaPersonasxcondicion(msjError, sqlCondicion)

            If msjError = "" Then
                Me.dgvDatos.DataSource = dtPersona
                Me.dgvDatos.DataBind()
                Me.lblErrror.Text = ""
            Else
                Me.lblErrror.Text = " Ocurrió un error al buscar "
            End If

        Catch ex As Exception

        End Try
    End Sub

    Protected Sub dgvDatos_PageIndexChanged(sender As Object, e As EventArgs) Handles dgvDatos.PageIndexChanged

    End Sub

    Protected Sub dgvDatos_SelectedIndexChanged(sender As Object, e As EventArgs) Handles dgvDatos.SelectedIndexChanged

    End Sub
End Class