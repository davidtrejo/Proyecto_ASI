Public Class Retirar
    Inherits System.Web.UI.Page
    Dim ahorro As New clahorro


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim msj As String = ""


        ahorro.IdAhorro = Request.QueryString("idcuenta")
        ahorro.leerAhorroPersona(ahorro.IdAhorro, msj)
        Me.lblMontoMaximoRetiro.Text = ahorro.TotalAhorro

    End Sub

End Class