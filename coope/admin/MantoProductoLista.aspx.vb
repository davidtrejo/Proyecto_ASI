Public Class MantoProductoLista
    Inherits System.Web.UI.Page
    Dim conn As New conexion

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Me.SqlDataSource1.ConnectionString = conn.CadenaConexion
        SqlDataSource1.SelectCommand = "select a.* from productos as a"
        SqlDataSource1.DeleteCommand = "delete from Productos where IdProducto = @idProducto"
        SqlDataSource1.UpdateCommand = " Update productos set  nombreproducto =@nombreproducto ,DuracionenDias = @DuracionenDias where idproducto=@idproducto "
        SqlDataSource1.InsertCommand = " Insert into productos (nombreProducto,idtipoproducto,DuracionenDias) values(@nombreproducto,@idtipoproducto,@DuracionenDias)   "

        Me.SqlDSTipoProductos.ConnectionString = conn.CadenaConexion
        Me.SqlDSTipoProductos.SelectCommand = "SELECT [idtipoproducto], [nombretipoproducto] FROM [tipoproductos]"
    End Sub

End Class