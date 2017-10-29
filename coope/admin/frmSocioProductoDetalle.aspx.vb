Public Class frmSocioProductoDetalle
    Inherits System.Web.UI.Page
    Dim transacciones As New cltransacciones
    Dim producto As New clproducto
    Dim lnidpersona As Integer = 0

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            MTD_SetControls()
        End If
    End Sub

    Private Sub MTD_SetControls()
        Try
            Dim msjError As String = ""
            Me.txtSocio.Enabled = False
            lnidpersona = Request.QueryString("id")

            Dim dtPersona As DataTable = transacciones.ObtenerListaPersonasxcondicion(msjError, " WHERE idpersona=" & lnidpersona)
            Dim dtProdxPers As DataTable = producto.ObtenerProductosPersona(lnidpersona, msjError)

            With dtPersona
                Me.txtSocio.Text = If(dtPersona.Rows.Count > 0, .Rows(0).Item("nombreCompleto"), "")
            End With
            Me.dgvDatos.DataSource = dtProdxPers
            Me.dgvDatos.DataBind()
        Catch ex As Exception
            MsgBox(ex.ToString)
            Me.lblErrror.Text = "Ocurrió un error al guardar"
        End Try
    End Sub
End Class