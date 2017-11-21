Public Class admin
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("Administrador") = "" Then
            Response.Redirect("~/FrmLoginAdmin.aspx")
        Else
            Me.lblNombre.Text = Session("Administrador")
        End If

    End Sub

End Class