Public Class frmSocios
    Inherits System.Web.UI.Page
    Dim usuario As New clusuario

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            'MTD_SetControls()
        End If
    End Sub

    Protected Sub btnGuardar_Click(sender As Object, e As EventArgs) Handles btnGuardar.Click
        MTD_Guardar()
    End Sub

    'Private Sub MTD_SetControls()
    '    Try
    '        Dim msjError As String = ""
    '        Dim sqlCondicion As String = If(lnidpersona <> 0, " WHERE idpersona =" & lnidpersona, " WHERE idpersona=0")
    '        dtPersona = persona.ObtenerListaPersonasxcondicion(msjError, sqlCondicion)

    '        With dtPersona
    '            If .Rows.Count > 0 Then
    '                With .Rows(0)
    '                    .Item("idpersona") = lnidpersona
    '                    Me.txtPrimerNombre.Text = .Item("primerNombre")
    '                    Me.txtNit.Text = .Item("nit")
    '                    Me.txtPassword.Text = .Item("fechanacimiento")
    '                End With
    '            End If
    '        End With


    '    Catch ex As Exception

    '    End Try
    'End Sub

    Private Sub MTD_Guardar()

        Dim msjError As String = ""
        Try
            usuario.InsertarUsuario(txtNombreCompleto.Text, txtNit.Text, txtPassword.Text, msjError)
        Catch ex As Exception
            MsgBox(ex.ToString)
            Me.lblErrror.Text = "Ocurrió un error al guardar"
        End Try

    End Sub

    Private Function Fun_Validar()
        Try
            Return True
        Catch ex As Exception
            Return False
        End Try
    End Function
End Class