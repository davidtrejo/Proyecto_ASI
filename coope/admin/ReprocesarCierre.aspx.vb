Public Class ReprocesarCierre
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            Me.txtFecha.Value = Date.Now.Date
            llenarcombos()
        End If

    End Sub

    Private Sub llenarcombos()
        Dim msjError As String = ""

        '' combo ahorrantes
        Dim persona As New clpersona
        Me.cmbSocio.DataSource = persona.ObtenerListaPersonas(msjError, True)
        Me.cmbSocio.DataTextField = "nombreCompleto"
        Me.cmbSocio.DataValueField = "idpersona"
        Me.cmbSocio.DataBind()

    End Sub



    Protected Sub cmbSocio_TextChanged(sender As Object, e As EventArgs) Handles cmbSocio.TextChanged

        Dim ahorro As New clahorro


        Dim msjError As String = ""
        ''combo productos

        Me.cmbProducto.DataSource = ahorro.ObtenerAhorrosPersona(Me.cmbSocio.SelectedValue, msjError)

        Me.cmbProducto.DataTextField = "nombreproducto"
        Me.cmbProducto.DataValueField = "idahorro"
        Me.cmbProducto.DataBind()



    End Sub


End Class