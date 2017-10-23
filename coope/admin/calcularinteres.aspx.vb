Public Class calcularinteres
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub




    Protected Sub btnAceptar_Click(sender As Object, e As EventArgs) Handles btnAceptar.Click
        Dim ahorro As New clahorro

        Dim msj As String = ""

        Dim uFechaProvision As Date = ahorro.obtenerUltimaFechaProvision(msj)

        If Me.txtFecha.Value < uFechaProvision Then
            Me.lblErrror.Text = " La fecha no puede ser menor a la fecha de la ultima provisión: " & uFechaProvision
            Me.lblErrror.Visible = True
            Exit Sub



        Else
            Me.lblErrror.Visible = False
            Me.lblErrror.Text = ""
        End If




        ahorro.provisionar(msj, txtFecha.Value)

    End Sub
End Class