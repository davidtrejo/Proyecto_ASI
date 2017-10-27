Public Class abonos
    Inherits System.Web.UI.Page

    Dim ahorro As New clahorro


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Page.IsPostBack Then
            llenarcombos()
        End If
    End Sub

    Protected Sub btnguardar_Click(sender As Object, e As EventArgs) Handles btnguardar.Click

        Dim msjError As String = ""

        ahorro.GuardarAbono(Me.cmbProducto.SelectedValue, Me.txtMonto.Text, Me.txtDescripcion.Text, Me.DateFechaAplicacion.Value, clahorro.TiposMOvimientos.Abono, msjError)

        Me.grid.DataBind()


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
        Dim msjError As String = ""
        ''combo productos

        Me.cmbProducto.DataSource = ahorro.ObtenerAhorrosPersona(Me.cmbSocio.SelectedValue, msjError)

        Me.cmbProducto.DataTextField = "nombreproducto"
        Me.cmbProducto.DataValueField = "idahorro"
        Me.cmbProducto.DataBind()

        ''combo productos
        grid.DataBind()

    End Sub

    Protected Sub cmbProducto_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cmbProducto.SelectedIndexChanged


        ''combo productos
        grid.DataBind()



    End Sub

    Protected Sub grid_DataBinding(sender As Object, e As EventArgs) Handles grid.DataBinding
        Dim msjError As String = ""

        If Me.cmbSocio.SelectedValue <> "" Then
            Me.grid.DataSource = ahorro.ObtenerAhorrosMovimientos(Me.cmbSocio.SelectedValue, msjError)

        End If

        If Me.cmbProducto.SelectedValue <> "" Then
            Me.grid.DataSource = ahorro.ObtenerAhorrosMovimientos(Me.cmbProducto.SelectedValue, msjError)

        End If


    End Sub
    Dim total As Double = 0
    Protected Sub gridview_rowDataBound(sender As Object, e As GridViewRowEventArgs) Handles grid.RowDataBound

        If e.Row.RowType = DataControlRowType.DataRow Then
            total += Convert.ToDouble(DataBinder.Eval(e.Row.DataItem, "valormovimiento"))
        ElseIf e.Row.RowType = DataControlRowType.Footer Then
            e.Row.Cells(1).Text = "Total Movimientos"
            e.Row.Cells(1).Font.Bold = True

            e.Row.Cells(3).Text = total.ToString
            e.Row.Cells(3).Font.Bold = True
            e.Row.Cells(3).HorizontalAlign = HorizontalAlign.Right

        End If

    End Sub
End Class