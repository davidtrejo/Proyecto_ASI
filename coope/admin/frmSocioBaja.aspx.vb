Public Class frmSocioBaja
    Inherits System.Web.UI.Page
    Dim persona As New clpersona

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Page.IsPostBack Then
            Me.txtFecha.Value = Date.Now.Date
            llenarcombos()

            If Request.QueryString("id") <> "" Then
                Me.cmbSocio.SelectedValue = Request.QueryString("id")
            End If

        End If

    End Sub

    Private Sub llenarcombos()
        Dim msjError As String = ""

        '' combo ahorrantes

        Me.cmbSocio.DataSource = persona.ObtenerListaPersonas(msjError, True)
        Me.cmbSocio.DataTextField = "nombreCompleto"
        Me.cmbSocio.DataValueField = "idpersona"
        Me.cmbSocio.DataBind()






    End Sub

    Protected Sub btnAceptar_Click(sender As Object, e As EventArgs) Handles btnAceptar.Click

    End Sub
End Class