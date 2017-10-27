Public Class ahorros
    Inherits System.Web.UI.Page

    Dim ahorro As New clahorro


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Page.IsPostBack Then
            Me.grid.DataBind()
            llenarcombos()
            Me.Calendar1.Visible = False
        End If




    End Sub

    Protected Sub grid_DataBinding(sender As Object, e As EventArgs) Handles grid.DataBinding

        Dim msjError As String = ""

        Dim tabla As DataTable = ahorro.ObtenerAhorros(msjError)

        If msjError = "" Then

            If tabla.Rows.Count > 0 Then
                Me.grid.DataSource = tabla

            Else
                Me.grid.Visible = False
            End If

        Else

        End If

    End Sub


    Private Sub llenarcombos()
        Dim msjError As String = ""

        '' combo ahorrantes
        Dim persona As New clpersona
        Me.cmdahorrante.DataSource = persona.ObtenerListaPersonas(msjError)
        Me.cmdahorrante.DataTextField = "nombreCompleto"
        Me.cmdahorrante.DataValueField = "idpersona"
        Me.cmdahorrante.DataBind()


        ''combo productos
        Dim producto As New clproducto
        Me.cmdProducto.DataSource = producto.ObtenerListaProductos(msjError)
        Me.cmdProducto.DataTextField = "nombreproducto"
        Me.cmdProducto.DataValueField = "idproducto"
        Me.cmdProducto.DataBind()


    End Sub

    Protected Sub ImageButton1_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton1.Click
        Me.Calendar1.Visible = True
    End Sub

    Protected Sub Calendar1_SelectionChanged(sender As Object, e As EventArgs) Handles Calendar1.SelectionChanged
        Me.txtFecha.Value = Me.Calendar1.SelectedDate.ToString
        Calendar1.Visible = False
    End Sub

    Protected Sub btnguardar_Click(sender As Object, e As EventArgs) Handles btnguardar.Click
        Dim msjError As String = ""
        Try
            ' ahorro.GuardarAhorro(Me.cmdProducto.SelectedValue, Me.cmdahorrante.SelectedValue, Sef(Me.Calendar1.SelectedDate.Date, "dd/mm/yyyy", False), msjError)
            'ahorro.GuardarAhorro(Me.cmdProducto.SelectedValue, Me.cmdahorrante.SelectedValue, String.Format("{0:yyyyMMdd}", Me.Calendar1.SelectedDate.Date), msjError)

            If msjError = "" Then
                Me.grid.DataBind()
                Me.lblErrror.Text = ""
            Else
                Me.lblErrror.Text = " Ocurrió un error al guardar "
            End If

        Catch ex As Exception

        End Try
    End Sub
End Class