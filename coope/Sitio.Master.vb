Public Class Sitio
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("Socio") = "" Then
            Response.Redirect("~/FrmLogin.aspx")
        Else
            Me.lblNombre.Text = Session("Socio")
        End If
    End Sub

End Class