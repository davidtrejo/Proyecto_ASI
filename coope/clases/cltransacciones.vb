Public Class cltransacciones
    Dim strSql As String = ""
    Dim conn As New conexion
    Dim c = ","

    Public Function ObtenerAhorrosMovimientoXSocio(ByVal _lnsocio As Integer, ByVal _lnProducto As Integer, msjError As String) As DataTable
        Dim sqlCondicion As String = ""
        sqlCondicion = " WHERE a.idpersona= " & _lnsocio
        sqlCondicion = sqlCondicion & If(_lnProducto.ToString.Length > 0, " AND a.idproducto =" & _lnProducto, sqlCondicion)

        strSql = "SELECT a.NumPrestamo, a.MontoCubiertoenPrestamo, b.valormovimiento,b.fechamovimiento, b.descripcion " &
            "FROM ahorrosPersona AS a " &
            "LEFT OUTER JOIN ahorrosPersonaMovimientos AS b ON a.idahorro=b.idahorro " & sqlCondicion

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
