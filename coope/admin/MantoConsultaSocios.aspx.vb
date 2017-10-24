Public Class frmMantenimientoConsultaSocios
    Inherits System.Web.UI.Page
    Dim producto As New clproducto
    Dim lnidpersona As Integer = 0
    Dim dtProducto As New DataTable

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Page.IsPostBack Then


            Dim msjError As String = ""

            If msjError = "" Then
                dtProducto = producto.ObtenerListaProductos(msjError)
                If dtProducto.Rows.Count > 0 Then
                    With cbxTipoAhorro
                        .DataSource = dtProducto
                        .DataValueField = "idproducto"
                        .DataTextField = "nombreProducto"
                        .DataBind()
                    End With
                End If
            End If

        End If

    End Sub

    Protected Sub btnBuscar_Click(sender As Object, e As EventArgs) Handles btnBuscar.Click
        Dim msjError As String = ""
        Try
            Dim transacciones As New cltransacciones
            If Me.txtCodigo.Text.Length = 0 Then
                MsgBox("Ingrese un código de socio")
                Exit Sub
            End If
            If Me.cbxTipoAhorro.Text.Length = 0 Then
                MsgBox("Seleccione un producto")
                Exit Sub
            End If

            Dim lnCodigo As Integer = 0
            Dim lnProducto As Integer = 0
            lnCodigo = Val(Me.txtCodigo.Text)
            lnProducto = cbxTipoAhorro.SelectedValue

            Dim dtMovimientos As DataTable = transacciones.ObtenerAhorrosMovimientoXSocio(lnCodigo, lnProducto, msjError)

            If msjError = "" Then
                Me.dgvDatos.DataSource = dtMovimientos
                Me.dgvDatos.DataBind()
                Me.lblErrror.Text = ""
            Else
                Me.lblErrror.Text = " Ocurrió un error al buscar "
            End If

        Catch ex As Exception

        End Try
    End Sub



End Class