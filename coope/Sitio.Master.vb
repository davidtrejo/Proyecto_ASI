Public Class Sitio
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Me.lblAgente.Text = "David Elenilson"
    End Sub

End Class