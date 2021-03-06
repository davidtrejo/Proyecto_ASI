﻿Public Class CrearCuenta
    Inherits System.Web.UI.Page

    Dim ahorro As New clahorro
    Dim persona As New clpersona
    Dim producto As New clproducto

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Page.IsPostBack Then
            Me.txtFecha.Value = Date.Now.Date
            llenarcombos()
            If Request.QueryString("id") <> "" Then

                Me.cmbSocio.SelectedValue = CInt(Request.QueryString("id"))
                ObtenerAhorrosPersona()
                Me.cmbSocio.Enabled = False
            End If


        End If


    End Sub

    Private Sub llenarcombos()
        Dim msjError As String = ""

        '' combo ahorrantes

        Me.cmbSocio.DataSource = persona.ObtenerListaPersonas(msjError, True)
        Me.cmbSocio.DataTextField = "nombreCompleto"
        Me.cmbSocio.DataValueField = "idpersona"
        Me.cmbSocio.DataBind()



        Me.cmbProducto.DataSource = producto.ObtenerListaProductos(msjError)
        Me.cmbProducto.DataTextField = "nombreproducto"
        Me.cmbProducto.DataValueField = "idproducto"
        Me.cmbProducto.DataBind()



    End Sub



    Protected Sub cmbSocio_TextChanged(sender As Object, e As EventArgs) Handles cmbSocio.TextChanged


        ObtenerAhorrosPersona()



    End Sub

    Private Sub ObtenerAhorrosPersona()
        Dim msjError As String = ""
        ''combo productos

        Me.cmbInteres.DataSource = ahorro.ObtenerAhorrosPersona(Me.cmbSocio.SelectedValue, msjError, True)

        Me.cmbInteres.DataTextField = "nombreproducto"
        Me.cmbInteres.DataValueField = "idahorro"
        Me.cmbInteres.DataBind()


    End Sub



    Protected Sub btnAceptar_Click(sender As Object, e As EventArgs) Handles btnAceptar.Click

        Dim msjError As String = ""

        If Me.txtFecha.Value < Date.Now.Date Then
            Response.Write("<script language='JavaScript'>alert('No se puede crear una cuenta con fecha retroactiva \n');</script>")
            Exit Sub 
        End If


        If Me.cmbProducto.SelectedValue = "" Then
            Me.lblErrror.Text = " Seleccione un tipo de producto "
            Me.lblErrror.Visible = True
            Exit Sub

        End If

        If Me.cmbSocio.SelectedValue = "" Then
            Me.lblErrror.Text = " Seleccione un socio "
            Me.lblErrror.Visible = True
            Exit Sub

        End If


        If Me.txtFecha.Text = "" Then
            Me.lblErrror.Text = " Seleccione una fecha de Inicio "
            Me.lblErrror.Visible = True
            Exit Sub

        End If

        ahorro.GuardarAhorro(Me.cmbProducto.SelectedValue, Me.cmbSocio.SelectedValue, Me.txtFecha.Value, Me.cmbInteres.SelectedValue, msjError, True)

        If msjError = "" Then
            Me.lblErrror.Visible = False
            Response.Write("<script language='JavaScript'>alert('Cuenta Agregada \n');</script>")
            Response.Write("<script language='JavaScript'>location.href = 'frmSocioProductos.aspx?id= " & Me.cmbSocio.SelectedValue & "';</script>")

        Else
            Me.lblErrror.Text = "Ocurrio un error al guardar la cuenta "
            Me.lblErrror.Visible = True
            Exit Sub
        End If

    End Sub
End Class