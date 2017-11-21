Public Class frmMantoCerrarCtaSocio
    Inherits System.Web.UI.Page
    Dim persona As New clpersona
    Dim lnidpersona As Integer = 0

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnBuscar_Click(sender As Object, e As EventArgs) Handles btnBuscar.Click
        Dim dtPersona As New DataTable
        Dim msjError As String = ""
        dtPersona.Rows.Clear()

        Try
            Dim persona As New clpersona
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
End Class