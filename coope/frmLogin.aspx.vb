'Imports ClaseInspeccionAuto

Public Class frmLogin
    Inherits System.Web.UI.Page

    'Dim cl As New clInspeccionAutos
    Dim persona As clpersona



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txtUsuario.Focus()
        Me.txtUsuario.Text = "1123-180592-102-5"

        If Page.IsPostBack = False Then
            '    Dim cookie As HttpCookie = Request.Cookies("CookieInspAutos.ACSA")

            '    'si existe la cookie entonces la leemos .
            '    If Not cookie Is Nothing Then
            '        Dim Usuario As String = Utility.Generic.Decrypt(cookie("Nombre"), "H0k@g30809")
            '        Dim Pass As String = Utility.Generic.Decrypt(cookie("Secret"), "H0k@g30809")

            '        'autologon-
            '        If Usuario.Length > 0 And Pass.Length > 0 Then
            '            If cl.ValidaUsuario(Usuario, Pass) = True Then
            '                Session("idusuario") = cl.parIDUsuario
            '                Session("nombre") = cl.parNombre
            '                Session("correoinspector") = cl.parCorreo_Electronico
            '                Session("usuario") = cl.parUsuario

            '                Response.Redirect("FrmPidePlaca.aspx")
            '            Else
            '                RequiredFieldValidator2.Text = "Usuario o Contraseña incorrectos."
            '                RequiredFieldValidator2.IsValid = False

            '            End If
            '        End If

            '    End If
        End If

    End Sub


    'Protected Sub cmdLogin_Click(sender As Object, e As EventArgs) Handles cmdLogin.Click

    'If cl.ValidaUsuario(txtUsuario.Text, txtPassword.Text) = True Then

    '    If Not Request.Form("checkrecordar") Is Nothing Then
    '        'cuando venga con un valor entonces procedemos a recordar.
    '        'para recordar lo que hacemos es crear la powta cookie jajajaaj!
    '        Dim cookie As HttpCookie = Request.Cookies("CookieInspAutos.ACSA")

    '        'si no existe la cookie la creamos
    '        If cookie Is Nothing Then
    '            cookie = New HttpCookie("CookieInspAutos.ACSA")
    '            cookie("Nombre") = Utility.Generic.Encrypt(Me.txtUsuario.Text, "H0k@g30809")
    '            cookie("Secret") = Utility.Generic.Encrypt(Me.txtPassword.Text, "H0k@g30809")
    '            'dura 15 dias la cookie.
    '            cookie.Expires = DateTime.Now.AddDays(15)
    '            Response.Cookies.Add(cookie)
    '        End If
    '    End If



    '    Session("idusuario") = cl.parIDUsuario
    '    Session("nombre") = cl.parNombre
    '    Session("correoinspector") = cl.parCorreo_Electronico
    '    Session("usuario") = cl.parUsuario

    '    Response.Redirect("FrmPidePlaca.aspx")
    '    ''Response.Write("LOGUEADO CORRECTAMENTE")

    '    '    If cl.parCorreo_Electronico.Length > 0 Then
    '    '        If cl.parDiasPassword <= 90 Then
    '    '            Response.Redirect("frmHoja1.aspx")
    '    '        Else
    '    '            'Actualizar el registro de cambio de password por que pasa de 90 dias.
    '    '            Response.Redirect("frmActualizaRegistro.aspx")
    '    '        End If
    '    '    Else
    '    '        'Actualiza el registro de password por que no tiene correo electronico
    '    '        Response.Redirect("frmActualizaRegistro.aspx")
    '    '    End If

    'Else
    '    RequiredFieldValidator2.Text = "Usuario o Contraseña incorrectos."
    '    RequiredFieldValidator2.IsValid = False

    'End If

    'End Sub

    Protected Sub btnAceptar_Click(sender As Object, e As EventArgs) Handles btnAceptar.Click

        persona = New clpersona
        Dim msjError As String = ""
        If persona.login(Me.txtUsuario.Text, Me.txtPassword.Text, msjError) Then

            If msjError <> "" Then
                lblError.Text = "Ocurrio un error"
            End If

            Me.lblError.Visible = False
            Response.Redirect("inicio.aspx")
        Else
            Me.lblError.Visible = False
        End If



    End Sub
End Class