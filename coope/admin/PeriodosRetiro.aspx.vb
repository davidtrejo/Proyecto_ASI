Public Class PeriodosRetiro
    Inherits System.Web.UI.Page

    Dim producto As New clproducto
    Dim msj As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Page.IsPostBack Then
            Dim conn As New conexion


            Me.SqlDataSource1.ConnectionString = conn.ConexionString

            'Me.cmbProducto.DataSource = producto.ObtenerListaProductos(msj)
            'Me.cmbProducto.DataTextField = "nombreproducto"
            'Me.cmbProducto.DataValueField = "idproducto"
            'Me.cmbProducto.DataBind()

        End If


    End Sub

    'Protected Sub cmbProducto_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cmbProducto.SelectedIndexChanged

    '    Me.ASPxGridView1.DataSource = producto.ObtenerPeriodosRetiro(Me.cmbProducto.SelectedValue, msj)

    'End Sub
End Class