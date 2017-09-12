Public Class Productos
    Inherits System.Web.UI.Page

    Dim producto As New clproducto
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim msjError As String = ""

        Dim tabla As DataTable = producto.ObtenerListaProductos(msjError)

        If msjError = "" Then

            If tabla.Rows.Count > 0 Then
                Me.grid.DataSource = tabla
                Me.grid.DataBind()
            Else
                Me.grid.Visible = False
            End If

        Else

        End If
    End Sub

End Class