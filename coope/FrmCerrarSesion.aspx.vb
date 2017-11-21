﻿Public Class FrmCerrarSesion
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session.Abandon()
        Session.Clear()

        Response.Cookies("CookieCoope.ACSA").Expires = DateTime.Now.AddDays(-1)
        Response.Redirect("frmLogin.aspx")

    End Sub

End Class