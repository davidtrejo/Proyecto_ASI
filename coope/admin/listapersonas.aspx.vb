Public Class listapersonas
    Inherits System.Web.UI.Page

    Dim persona As New clpersona

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim msjError As String = ""

        Dim tabla As DataTable = persona.ObtenerListaPersonas(msjError)

        If msjError = "" Then

            If tabla.Rows.Count > 0 Then
                Me.gridPersonas.DataSource = tabla
                Me.gridPersonas.DataBind()
            Else
                Me.gridPersonas.Visible = False
            End If

        Else

        End If



    End Sub

End Class