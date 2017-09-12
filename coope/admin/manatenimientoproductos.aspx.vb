Public Class manatenimientoproductos
    Inherits System.Web.UI.Page
    Dim producto As New clproducto
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        llenarCombo()
        Me.grid.DataBind()

    End Sub



    Private Sub llenarCombo()
        Dim msjError As String = ""
        Me.cmdTipoProductos.DataSource = producto.ObtenerTiposProductos(msjError)
        Me.cmdTipoProductos.DataTextField = "nombretipoproducto"
        Me.cmdTipoProductos.DataValueField = "idtipoproducto"
        Me.cmdTipoProductos.DataBind()
    End Sub

    Protected Sub grid_DataBinding(sender As Object, e As EventArgs) Handles grid.DataBinding
        Dim msjError As String = ""

        Dim tabla As DataTable = producto.ObtenerListaProductos(msjError)

        If msjError = "" Then

            If tabla.Rows.Count > 0 Then
                Me.grid.DataSource = tabla

            Else
                Me.grid.Visible = False
            End If

        Else

        End If
    End Sub

    Protected Sub btnguardar_Click(sender As Object, e As EventArgs) Handles btnguardar.Click
        Dim msjError As String = ""

        Try
            producto.GuardarProducto(Me.cmdTipoProductos.SelectedValue, Me.txtproducto.Text, Me.txtDescripcion.Text, Me.txttasa.Text, msjError)

            If msjError = "" Then
                Me.lblErrror.Text = ""
                grid.DataBind()
                Me.lblErrror.Visible = False
            Else
                Me.lblErrror.Text = "Ocurrió un error al guardar"
                Me.lblErrror.Visible = True
            End If


        Catch ex As Exception

        End Try





    End Sub
End Class