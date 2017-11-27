Imports DevExpress.Web
Imports System.Collections.Generic

Public Class frmMantoProductosTasa
    Inherits System.Web.UI.Page
    Dim producto As New clproducto
    Dim dtTipoProducto As New DataTable
    Dim conn As New conexion



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Me.SqlDataSource1.ConnectionString = conn.CadenaConexion
        Me.SqlDataSource1.SelectCommand = "SELECT [idtasa], [tasa], [FechaDesde] FROM [tasasInteres] WHERE ([idproducto] = @idproducto) order by idtasa desc"
        Me.SqlDataSource1.InsertCommand = " Insert into tasasInteres (idproducto,tasa,fechaDesde) values(@idproducto,@tasa,@fechaDesde) "



        If Not Page.IsPostBack Then
            Dim msjError As String = ""
            ' MTD_SetControls()
            MTD_SetControls()
            If Request.QueryString("id") <> "" Then


                producto.leerProducto(Request.QueryString("id"), msjError)
                Me.txtNombre.Text = producto.NombreProducto
                Me.ddClasificacion.SelectedValue = producto.IdTipoProducto
                Me.txtDDias.Text = producto.DuracionEndias
            End If


        End If
    End Sub

    Private Sub MTD_SetControls()
        Dim msjError As String = ""
        Try
            dtTipoProducto = producto.ObtenerTiposProductos(msjError)
            If dtTipoProducto.Rows.Count > 0 Then
                With ddClasificacion
                    .DataSource = dtTipoProducto
                    .DataValueField = "idtipoproducto"
                    .DataTextField = "nombretipoproducto"
                    .DataBind()
                End With
            End If

        Catch ex As Exception

        End Try
    End Sub



    Protected Sub ASPxGridView1_RowValidating(sender As Object, e As DevExpress.Web.Data.ASPxDataValidationEventArgs) Handles ASPxGridView1.RowValidating

        If e.NewValues("FechaDesde") IsNot Nothing AndAlso e.NewValues("FechaDesde") < Date.Now Then
            AddError(e.Errors, Me.ASPxGridView1.Columns("FechaDesde"), "No puede guardar una tasa con fecha retroactiva")
        End If

        If String.IsNullOrEmpty(e.RowError) AndAlso e.Errors.Count > 0 Then
            e.RowError = "PorFavor, corregir todos los errores."
        End If

    End Sub


    Private Sub AddError(ByVal errors As Dictionary(Of GridViewColumn, String), ByVal column As GridViewColumn, ByVal errorText As String)
        If errors.ContainsKey(column) Then
            Return
        End If
        errors(column) = errorText
    End Sub

    Protected Sub ASPxGridView1_HtmlRowPrepared(sender As Object, e As ASPxGridViewTableRowEventArgs) Handles ASPxGridView1.HtmlRowPrepared
        If (Not Object.Equals(e.RowType, GridViewRowType.Data)) Then
            Return
        End If

        Dim hasError As Boolean = String.IsNullOrEmpty(e.GetValue("FechaDesde").ToString())


        If hasError Then
            e.Row.ForeColor = System.Drawing.Color.Red
        End If

    End Sub

    Protected Sub ASPxGridView1_StartRowEditing(sender As Object, e As Data.ASPxStartRowEditingEventArgs) Handles ASPxGridView1.StartRowEditing
        If (Not Me.ASPxGridView1.IsNewRowEditing) Then
            ASPxGridView1.DoRowValidation()
        End If
    End Sub
End Class