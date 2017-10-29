
Public Class clproducto


    Dim strSql As String = ""
    Dim conn As New conexion
    Dim c = ","


    Private _idTasa As Integer
    Public Property Idtasa() As Integer
        Get
            Return _idTasa
        End Get
        Set(ByVal value As Integer)
            _idTasa = value
        End Set
    End Property

    Private _tasa As Decimal
    Public Property tasa() As Decimal
        Get
            Return _tasa
        End Get
        Set(ByVal value As Decimal)
            _tasa = value
        End Set
    End Property

    Private _DuracionEnDias As Integer
    Public Property DuracionEndias() As Integer
        Get
            Return _DuracionEnDias
        End Get
        Set(ByVal value As Integer)
            _DuracionEnDias = value
        End Set
    End Property

    Private _nombreProduto As String
    Public Property NombreProducto() As String
        Get
            Return _nombreProduto
        End Get
        Set(ByVal value As String)
            _nombreProduto = value
        End Set
    End Property

    Private _idProducto As Integer
    Public Property IdProducto() As Integer
        Get
            Return _idProducto
        End Get
        Set(ByVal value As Integer)
            _idProducto = value
        End Set
    End Property


    Private _IdtipoPRoducto As Integer
    Public Property IdTipoProducto() As Integer
        Get
            Return _IdtipoPRoducto
        End Get
        Set(ByVal value As Integer)
            _IdtipoPRoducto = value
        End Set
    End Property

    Private _NombreTipoProducto As String
    Public Property NombreTipoProducto() As String
        Get
            Return _NombreTipoProducto
        End Get
        Set(ByVal value As String)
            _NombreTipoProducto = value
        End Set
    End Property


    Private _estaEnPeriodoRetiro As Boolean
    Public Property estaEnPeriodoRetiro() As Boolean
        Get
            Return _estaEnPeriodoRetiro
        End Get
        Set(ByVal value As Boolean)
            _estaEnPeriodoRetiro = value
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

    Public Function ProductoEnPeriodoRetiro(Idproducto As Integer) As Boolean
        Dim msjError As String = ""
        Try



            strSql = " select idperiodoRetiro from PeriodosRetiro where  getdate() between FechaDesde and FechaHasta    "
            strSql &= " and idproducto = " & Idproducto

            Dim tabla As DataTable = conn.ObtenerTabla(strSql, msjError)

            If tabla.Rows.Count <> 0 Then
                Return True
            Else Return False
            End If

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

    Public Sub leerProducto(idproducto As Integer, msjError As String)

        strSql = " select * from productos where idproducto =" & idproducto
        Dim tabla As DataTable = New DataTable

        Try
            tabla = conn.ObtenerTabla(strSql, msjError)

            If tabla.Rows.Count = 1 Then
                Dim row As DataRow = tabla.Rows(0)
                _idProducto = row("idproducto")
                _nombreProduto = row("nombreproducto")
                _DuracionEnDias = row("DuracionenDias")
                _IdtipoPRoducto = row("idtipoproducto")

                '' obtenemos el nombre del tipo de producto

                strSql = " select nombretipoproducto from tipoproductos  where idtipoproducto =   " & _IdtipoPRoducto
                _NombreTipoProducto = conn.ObtenerTabla(strSql, msjError).Rows(0).Item("nombretipoproducto")

                '' obtenemos la tasa actual de este producto

                strSql = " select isnull( max(idtasa) ,0)as idtasa from tasasInteres  where idproducto =   " & idproducto
                _idTasa = conn.ObtenerTabla(strSql, msjError).Rows(0).Item("idtasa")



            End If

        Catch ex As Exception
            msjError = ex.Message

        End Try


    End Sub

    Public Function ObtenerProductosPersona(ByVal _lnidpersona As Integer, msjError As String)

        strSql = " SELECT DISTINCT a,idahorro,b.*, " &
            "(SELECT SUM(valormovimiento) FROM ahorrosPersonaMovimientos WHERE idahorro=a.idahorro) AS saldo " &
            "FROM ahorrosPersona AS a " &
            "LEFT OUTER JOIN productos AS b ON a.idproducto=b.idproducto " &
            "WHERE a.idpersona =" & _lnidpersona
        Dim tabla As DataTable = New DataTable

        Try
            tabla = conn.ObtenerTabla(strSql, msjError)
            Return tabla
        Catch ex As Exception
            msjError = ex.Message
            Return Nothing
        End Try
    End Function



End Class
