Public Class frmSocios
    Inherits System.Web.UI.Page
    Dim usuario As New clusuario

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            'MTD_SetControls()
        End If
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
            usuario.InsertarUsuario(txtNombreCompleto1.Text, txtNit1.Text, txtPass.Text, msjError)
        Catch ex As Exception
            ' MsgBox(ex.ToString)
            Me.lblErrror.Text = "Ocurrió un error al guardar"
        End Try

    End Sub





    Protected Sub txtNit1_Validation(sender As Object, e As DevExpress.Web.ValidationEventArgs) Handles txtNit1.Validation
        Dim msj As String = ""

        If usuario.Existe(txtNit1.Text, msj) Then
            Me.lblErrror.Visible = True
            Me.lblErrror.Text = " El usuario ya existe "
        Else
            Me.lblErrror.Visible = False
            Me.lblErrror.Text = " "
        End If
    End Sub

    Protected Sub ASPxButton1_Click(sender As Object, e As EventArgs) Handles ASPxButton1.Click

        If Me.lblErrror.Visible = True Then
            Exit Sub
        End If

        If Me.txtPass.Text <> Me.txtPass2.Text Then
            Me.lblErrror.Text = "Las constraseñas no coinciden"
            Me.lblErrror.Visible = True
            Exit Sub
        Else
            Me.lblErrror.Text = ""
            Me.lblErrror.Visible = False
        End If

        MTD_Guardar()

        Response.Write("<script language='JavaScript'>alert('Cuenta Agregada \n');</script>")
        Response.Write("<script language='JavaScript'>location.href = 'Inicio.aspx';</script>")


    End Sub
End Class