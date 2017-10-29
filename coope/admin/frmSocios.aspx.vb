Public Class frmSocios
    Inherits System.Web.UI.Page
    Dim persona As New clpersona
    Public lnidpersona As Integer = 0
    Dim dtPersona As New DataTable

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            MTD_SetControls()
        End If
    End Sub

    Protected Sub btnGuardar_Click(sender As Object, e As EventArgs) Handles btnGuardar.Click
        MTD_Guardar()
    End Sub

    Private Sub MTD_SetControls()
        Try
            Dim msjError As String = ""
            Dim sqlCondicion As String = If(lnidpersona <> 0, " WHERE idpersona =" & lnidpersona, " WHERE idpersona=0")
            dtPersona = persona.ObtenerListaPersonasxcondicion(msjError, sqlCondicion)

            With dtPersona
                If .Rows.Count > 0 Then
                    With .Rows(0)
                        '.Item("idpersona") = lnidpersona
                        Me.txtPrimerNombre.Text = .Item("primerNombre")
                        Me.txtSegundoNombre.Text = .Item("SegundoNombre")
                        Me.txtPrimerApe.Text = .Item("PrimerApellido")
                        Me.txtSegundoApe.Text = .Item("SegundoApellido")
                        Me.txtDUI.Text = .Item("dui")
                        Me.txtNit.Text = .Item("nit")
                        Me.txtFNacimiento.Text = .Item("fechanacimiento")
                        Me.txtDireccion.Text = .Item("direccion")
                        Me.txtTelefono.Text = .Item("telefono")
                    End With
                End If
            End With


        Catch ex As Exception

        End Try
    End Sub

    Private Sub MTD_Guardar()

        Dim msjError As String = ""
        Try
            'persona.DUI = Me.txtDUI

            'persona.InsertarPersona()


            Dim dr As DataRow = If(lnidpersona = 0, dtPersona.Rows.Add(), dtPersona.Rows(0))

            With dr
                .Item("idpersona") = lnidpersona
                .Item("primerNombre") = Me.txtPrimerNombre.Text
                .Item("SegundoNombre") = Me.txtSegundoNombre.Text
                .Item("PrimerApellido") = Me.txtPrimerApe.Text
                .Item("SegundoApellido") = Me.txtSegundoApe.Text
                .Item("nombreCompleto") = .Item("primerNombre") & " " & .Item("primerNombre") & " " & .Item("SegundoNombre") & " " & .Item("PrimerApellido") & " " & .Item("SegundoApellido")
                .Item("dui") = Me.txtDUI.Text
                .Item("nit") = Me.txtNit.Text
                .Item("fechanacimiento") = Me.txtFNacimiento.Text
                .Item("direccion") = Me.txtDireccion.Text
                .Item("sexo") = Me.ddSexo.SelectedValue
                .Item("telefono") = Me.txtTelefono.Text
                .Item("estado") = True
            End With
            If lnidpersona = 0 Then
                'persona.InsertarPersona(dtPersona, msjError)
            End If

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