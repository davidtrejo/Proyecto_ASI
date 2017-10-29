Public Class frmMantoProducto
    Inherits System.Web.UI.Page
    Dim producto As New clproducto
    Dim dtTipoProducto As New DataTable

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            MTD_SetControls()
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
            Me.lblErrror.Text = "Error al cargar formulario"
        End Try
    End Sub

    Protected Sub btnGuardar_Click(sender As Object, e As EventArgs) Handles btnGuardar.Click
        MTD_Guardar()
    End Sub

    Private Sub MTD_Guardar()
        Dim msjError As String = ""
        Try
            Dim lnFechaDesde As Date = Date.Now

            producto.GuardarProducto(Me.txtNombre.Text, ddClasificacion.SelectedValue, Val(Me.txtDDias.Text), msjError)
            producto.GuardarTasas(4, ddClasificacion.SelectedValue, lnFechaDesde, msjError)
            msjError = "Producto guardado exitosamente"
        Catch ex As Exception
            msjError = "Error al guardar producto"
            Me.lblErrror.Text = msjError
        End Try
    End Sub



End Class