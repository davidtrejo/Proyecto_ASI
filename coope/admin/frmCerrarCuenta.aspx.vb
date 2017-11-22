Public Class frmCerrarCuenta
    Inherits System.Web.UI.Page
    Dim ahorro As New clahorro
    Dim persona As New clpersona
    Dim lnidpersona As Integer = 0

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            If Request.QueryString("idpersona") <> "" Then
                lnidpersona = Request.QueryString("idpersona")
            End If
            MTD_SetControls(lnidpersona)
        End If
    End Sub

    Private Sub MTD_SetControls(ByVal _lnidpersona As Integer)
        Dim msjError As String = ""

        Me.cmbDestino.DataSource = ahorro.ObtenerAhorrosPersona(_lnidpersona, msjError, True)
        Me.cmbDestino.DataTextField = "nombreproducto"
        Me.cmbDestino.DataValueField = "idahorro"
        Me.cmbDestino.DataBind()
    End Sub

    Protected Sub btnAgregar_Click(sender As Object, e As EventArgs) Handles btnAgregar.Click

    End Sub
End Class