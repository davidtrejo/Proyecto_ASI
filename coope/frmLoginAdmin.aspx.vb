Public Class frmLoginAdmin
    Inherits System.Web.UI.Page
    Dim usuario As clusuario
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Page.IsPostBack Then
            Me.txtUsuario.Text = "1123-180592-102-5"
            Me.checkrecordar.Checked = True
        End If

    End Sub

    Protected Sub btnAceptar_Click(sender As Object, e As EventArgs) Handles btnAceptar.Click
        usuario = New clusuario
        Dim msjError As String = ""
        If usuario.login(Me.txtUsuario.Text, Me.txtPassword.Text, msjError) Then
            Me.lblError.Visible = False

            Session("Administrador") = usuario.NombreUsuario

            Response.Redirect("admin/inicio.aspx")
        Else
            Me.lblError.Visible = True
        End If


    End Sub
End Class