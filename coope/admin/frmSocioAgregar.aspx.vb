Public Class frmSocioAgregar
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Page.IsPostBack Then
            Dim persona As New clpersona
            Dim msjError As String = ""
            Me.cmbSocios.DataSource = persona.ObtenerListaAgregarSocio(msjError)
            Me.cmbSocios.TextField = "Empleado"
            Me.cmbSocios.ValueField = "Id"
            Me.cmbSocios.DataBind()
        End If

    End Sub

    Protected Sub ASPxButton1_Click(sender As Object, e As EventArgs) Handles ASPxButton1.Click

        If Me.cmbSocios.Text <> "" Then
            Dim msj As String = ""
            Dim persona As New clpersona

            Dim idAhorro As Integer = persona.agregarSocio(Me.cmbSocios.Value, msj)

            If idAhorro <> 0 Then
                'Response.Write("<script language='JavaScript'>location.href = 'Pagina.aspx?e=p&idSu=" & Request.QueryString("Id") & "';</script>")
                Dim ahorro As New clahorro

                ahorro.GuardarAhorro(1, idAhorro, Date.Now, 0, msj, True) '' cuenta de Aportaciones
                ahorro.GuardarAhorro(2, idAhorro, Date.Now, 0, msj, True) '' Cuenta de Ahorro Programado

                Response.Write("<script language='JavaScript'>alert('Socio Agregado \n  Se agregaron las cuentas de Aportaciones y de Ahorro Programado ...!!!');</script>")



            Else
                Response.Write("<script language='JavaScript'>alert('Ocurrió un error...!!!');</script>")

            End If




        End If

    End Sub

    Protected Sub cmbSocios_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cmbSocios.SelectedIndexChanged

    End Sub
End Class