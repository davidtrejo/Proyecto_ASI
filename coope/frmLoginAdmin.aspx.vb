Public Class frmLoginAdmin
    Inherits System.Web.UI.Page
    Dim usuario As clusuario
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


    End Sub

    Protected Sub btnAceptar_Click(sender As Object, e As EventArgs) Handles btnAceptar.Click
        usuario = New clusuario
        Dim msjError As String = ""
        If usuario.login(Me.txtUser.Text, Me.txtPass.Text, msjError) Then
            Me.lblError.Visible = False

            Session("Administrador") = usuario.NombreUsuario

            Response.Redirect("admin/inicio.aspx")
        Else
            Me.lblError.Visible = True
        End If


    End Sub
End Class