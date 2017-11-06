Public Class FrmRptListado
    Inherits System.Web.UI.Page

    Dim persona As New clpersona

    'Dim producto As New clproducto

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            llenarcombos()

            If Request.QueryString("id") <> "" Then

                Me.cmbSocio.SelectedValue = Request.QueryString("id")

            End If

        End If

    End Sub

    Protected Sub btnAceptar_Click(sender As Object, e As EventArgs) Handles btnAceptar.Click


        If Me.cmbSocio.SelectedValue = 0 Then
            Me.lblErrror.Visible = True
            Me.lblErrror.Text = "Seleccione un socio"
            Exit Sub
        Else Me.lblErrror.Visible = False
        End If


        Dim rpt As New RptEstadoCuenta2
        Dim msjError As String = ""

        'rpt.Parameters.Item("idpersona").Value = Request.QueryString("id")

        Dim ahorro As New clahorro
        rpt.DataSource = ahorro.ObtenerEstadoCuenta(msjError, Me.cmbSocio.SelectedValue)

        Using stream As New System.IO.MemoryStream

            Dim extencion As String = ".pdf"
            Dim fileName As String = "EstadoCuenta" & Date.Now.Second & extencion


            rpt.ExportToPdf(stream)
            'Response.Redirect("FrmRptEstadoCuenta.aspx?id=" & Me.cmbSocio.SelectedValue)

            Response.Clear()
            Response.ContentType = "pdf"
            Response.AddHeader("Content-Disposition", String.Format("{0}; filename={1}", "attachment", fileName))
            Response.BinaryWrite(stream.ToArray)
            Response.End()


        End Using

    End Sub


    Private Sub llenarcombos()
        Dim msjError As String = ""

        '' combo ahorrantes

        Me.cmbSocio.DataSource = persona.ObtenerListaPersonas(msjError, True)
        Me.cmbSocio.DataTextField = "nombreCompleto"
        Me.cmbSocio.DataValueField = "idpersona"
        Me.cmbSocio.DataBind()



        'Me.cmbProducto.DataSource = producto.ObtenerListaProductos(msjError)
        'Me.cmbProducto.DataTextField = "nombreproducto"
        'Me.cmbProducto.DataValueField = "idproducto"
        'Me.cmbProducto.DataBind()



    End Sub

    'Protected Sub cmbSocio_TextChanged(sender As Object, e As EventArgs) Handles cmbSocio.TextChanged




    '    Dim msjError As String = ""
    '    ''combo productos

    '    Me.cmbAhorro.DataSource = ahorro.ObtenerAhorrosPersona(Me.cmbSocio.SelectedValue, msjError)

    '    Me.cmbAhorro.DataTextField = "nombreproducto"
    '    Me.cmbAhorro.DataValueField = "idahorro"
    '    Me.cmbAhorro.DataBind()



    'End Sub

End Class