Imports System.Data.SqlClient


Public Class conexion

    Public conn As SqlConnection

    Public Sub Conectar(msjError As String)
        conn = New SqlConnection
        '' cadena de conexion comentarizada para publicar en hosting
        ''conn.ConnectionString = "Data Source=DESKTOP-RG9QC1P; Initial Catalog=coope; user=cooperativa; password=12345; Integrated Security=SSPI;"

        conn.ConnectionString = "workstation id=dbcoope.mssql.somee.com;packet size=4096;user id=cooperativa;pwd=12345678;data source=dbcoope.mssql.somee.com;persist security info=False;initial catalog=dbcoope"
        conn.Open()

    End Sub

    Public Function ObtenerTabla(strCadena As String, ByRef msjError As String) As DataTable

        Conectar(msjError)


        Dim da As SqlDataAdapter
        Dim ds As DataSet = New DataSet

        Try

            da = New SqlDataAdapter(strCadena, conn)
            da.Fill(ds)

            Return ds.Tables(0)

        Catch ex As Exception
            msjError = ex.Message
            Return Nothing
        End Try



    End Function

    Public Sub EjecutarSql(strCadena As String, ByRef msjError As String)

        Conectar(msjError)


        Dim cmd As New SqlCommand

        Try
            cmd = New SqlCommand(strCadena, conn)
            cmd.ExecuteNonQuery()

        Catch ex As Exception
            msjError = ex.Message
        End Try

    End Sub


End Class
