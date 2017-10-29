Public Class frmSocioProductoDetalle
    Inherits System.Web.UI.Page
    Dim transacciones As New cltransacciones
    Dim producto As New clproducto
    Dim ahorro As New clahorro
    Dim persona As New clpersona

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            MTD_SetControls()
        End If
    End Sub

    Private Sub MTD_SetControls()
        Try
            Dim msjError As String = ""
            Dim lnidahorro As Integer = 0
            Dim lnidpersona As Integer = 0
            Dim lnidproducto As Integer = 0

            Me.txtSocio.Enabled = False
            lnidahorro = Request.QueryString("id")
            ahorro.leerAhorroPersona(lnidahorro, msjError)
            lnidpersona = ahorro.IdPErsona
            lnidproducto = ahorro.IdProducto

            Dim dtPersona As DataTable = persona.ObtenerListaPersonasxcondicion(msjError, " WHERE idpersona=" & lnidpersona)
            Dim dtProducto As DataTable = producto.ObtenerProductosxCondicion(" WHERE idproducto=" & lnidproducto, msjError)
            Dim dtMovimientos As DataTable = transacciones.ObtenerAhorrosMovimientoXSocio(lnidpersona, lnidproducto, msjError)
            With dtPersona
                Me.txtSocio.Text = If(dtPersona.Rows.Count > 0, .Rows(0).Item("nombreCompleto"), "")
            End With
            With dtProducto
                Me.txtProducto.Text = If(dtProducto.Rows.Count > 0, .Rows(0).Item("nombreproducto"), "")
            End With

            Dim drNew As DataRow = dtMovimientos.Rows.Add()
            With drNew
                Dim lnSaldo As Decimal = 0
                'lnSaldo = dtMovimientos.Compute("SUM(valormovimiento)", "valormovimiento is not null")
                For Each fila As DataRow In dtMovimientos.Select("valormovimiento is not null")
                    lnSaldo = lnSaldo + fila.Item("valormovimiento")
                Next

                .Item("descripcion") = "SALDO"
                .Item("valormovimiento") = lnSaldo
            End With
            Me.dgvDatos.DataSource = dtMovimientos
            Me.dgvDatos.DataBind()
        Catch ex As Exception
            MsgBox(ex.ToString)
            Me.lblErrror.Text = "Ocurrió un error al generar"
        End Try
    End Sub
End Class