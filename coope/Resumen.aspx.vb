Public Class Resumen
    Inherits System.Web.UI.Page

    Dim ahorro As New clahorro
    Dim Usuario As Integer

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session("Usuario") = 1
        ''prueba comentario github
        Usuario = Session("Usuario")

        If Not Page.IsPostBack Then

            llenarCombo()

        End If



    End Sub

    Private Sub llenarCombo()
        Dim msjError As String = ""
        ''combo productos

        Me.cmbProducto.DataSource = ahorro.ObtenerAhorrosPersona(Usuario, msjError)

        Me.cmbProducto.DataTextField = "nombreproducto"
        Me.cmbProducto.DataValueField = "idahorro"
        Me.cmbProducto.DataBind()


    End Sub

    Protected Sub grid_DataBinding(sender As Object, e As EventArgs) Handles grid.DataBinding
        Dim msjError As String = ""
        Me.grid.DataSource = ahorro.ObtenerAhorrosMovimientos(Usuario, Me.cmbProducto.SelectedValue, msjError)

    End Sub

    Protected Sub btnMostrar_Click(sender As Object, e As EventArgs) Handles btnMostrar.Click
        Me.grid.DataBind()

    End Sub
    Dim total As Double = 0
    Protected Sub grid_RowDataBonud(sender As Object, e As GridViewRowEventArgs) Handles grid.RowDataBound
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