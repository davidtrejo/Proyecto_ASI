Public Class Retirar
    Inherits System.Web.UI.Page
    Dim ahorro As New clahorro


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim msj As String = ""


        ahorro.IdAhorro = Request.QueryString("idcuenta")
        ahorro.leerAhorroPersona(ahorro.IdAhorro, msj)

        ''   ahorro.IdPErsona 
        Me.lblProducto.Text = ahorro.NombreAhorro
        Me.lblTotal.Text = FormatCurrency(ahorro.TotalAhorro)
        Me.lblMontoMaximoRetiro.Text = FormatCurrency(ahorro.TotalAhorro * 0.9)

    End Sub

    Protected Sub btnRetirar_Click(sender As Object, e As EventArgs) Handles btnRetirar.Click

        If Me.txtCantidad.Text = 0 Then
            Me.lblErrror.Visible = True
            Me.lblErrror.Text = "Escriba una cantidad a Reservar"
            Exit Sub

        Else Me.lblErrror.Visible = False
        End If

        Dim msj As String = ""

        ahorro.IdAhorro = Request.QueryString("idcuenta")
        Dim retiro As New clSolicitudes(ahorro.IdAhorro, Me.txtCantidad.Value)


        retiro.SolicitarRetiro(msj)

        Response.Write("<script language='JavaScript'>alert('Solicitud Realizada...!!!');</script>")

        Response.Write("<script language='JavaScript'>location.href = 'resumen.aspx" & "';</script>")



    End Sub
End Class