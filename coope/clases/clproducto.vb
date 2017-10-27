
Public Class clproducto


    Dim strSql As String = ""
    Dim conn As New conexion
    Dim c = ","

    Private _idProducto As Integer
    Public Property IdProducto() As Integer
        Get
            Return _idProducto
        End Get
        Set(ByVal value As Integer)
            _idProducto = value
        End Set
    End Property

    Public Function ObtenerListaProductos(msjError As String) As DataTable

        strSql = " select * from productos"
        Dim tabla As DataTable = New DataTable

        Try
            tabla = conn.ObtenerTabla(strSql, msjError)
            Return tabla

        Catch ex As Exception
            msjError = ex.Message
            Return Nothing
        End Try


    End Function


    Public Function ObtenerPeriodosRetiro(idproducto As Integer, ByRef msj As String) As DataTable

        strSql = " select IdPeriodoRetiro , nombreproducto , FechaDesde , FechaHasta  from PeriodosRetiro  as a inner join productos as b on a.idproducto = b.idproducto 
"
        Dim tabla As DataTable = New DataTable

        Try
            tabla = conn.ObtenerTabla(strSql, msj)
            Return tabla

        Catch ex As Exception
            msj = ex.Message
            Return Nothing
        End Try


    End Function


    Public Function ObtenerTiposProductos(msjError As String) As DataTable

        strSql = " select * from tipoproductos"
        Dim tabla As DataTable = New DataTable

        Try
            tabla = conn.ObtenerTabla(strSql, msjError)
            Return tabla

        Catch ex As Exception
            msjError = ex.Message
            Return Nothing
        End Try


    End Function

    Public Sub GuardarProducto(tipoproducto As Integer, nombreproducto As String, descripcion As String, tasa As Decimal, ByRef msjError As String)


        Try
            strSql = " Insert into productos (nombreproducto,descripcion,tasa,idtipoproducto) values ( "
            strSql &= "'" & nombreproducto & "'" & c
            strSql &= "'" & descripcion & "'" & c
            strSql &= tasa & c
            strSql &= tipoproducto & " )"

            conn.EjecutarSql(strSql, msjError)

        Catch ex As Exception
            msjError = ex.Message
        End Try

    End Sub



End Class
