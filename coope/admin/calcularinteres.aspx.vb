Public Class calcularinteres
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub




    Protected Sub btnAceptar_Click(sender As Object, e As EventArgs) Handles btnAceptar.Click
        Dim ahorro As New clahorro

        Dim msj As String = ""

        ahorro.provisionar(msj, txtFecha.Value)

    End Sub
End Class