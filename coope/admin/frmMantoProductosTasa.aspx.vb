Public Class frmMantoProductosTasa
    Inherits System.Web.UI.Page
    Dim producto As New clproducto
    Dim dtTipoProducto As New DataTable

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            Dim msjError As String = ""
            MTD_SetControls()

            If Request.QueryString("id") <> "" Then

                producto.leerProducto(Request.QueryString("id"), msjError)
                Me.txtNombre.Text = producto.NombreProducto
                Me.ddClasificacion.SelectedValue = producto.IdTipoProducto
                Me.txtDDias.Text = producto.DuracionEndias
            End If


        End If
    End Sub

    Private Sub MTD_SetControls()
        Dim msjError As String = ""
        Try
            dtTipoProducto = producto.ObtenerTiposProductos(msjError)
            If dtTipoProducto.Rows.Count > 0 Then
                With ddClasificacion
                    .DataSource = dtTipoProducto
                    .DataValueField = "idtipoproducto"
                    .DataTextField = "nombretipoproducto"
                    .DataBind()
                End With
            End If

        Catch ex As Exception

        End Try
    End Sub
End Class