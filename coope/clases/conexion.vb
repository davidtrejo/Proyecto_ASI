Imports System.Data.SqlClient


Public Class conexion

    Public conn As SqlConnection

    Public Sub New()
        Dim msjError As String = ""
        Conectar(msjError)
    End Sub


    Public Sub Conectar(msjError As String)
        conn = New SqlConnection
        '' cadena de conexion comentarizada para publicar en hosting

        conn.ConnectionString = "Data Source=SQL7001.SmarterASP.NET;Initial Catalog=DB_A2B255_coope;User Id=DB_A2B255_coope_admin;Password=Abc12345;"

        '' cadena de conexion de maquina 
        conn.ConnectionString = "Data Source=DESKTOP-RG9QC1P; Initial Catalog=cooperativa1; user=cooperativa; password=12345; Integrated Security=SSPI;"



        conn.Open()

    End Sub

    Public Function ObtenerTabla(strCadena As String, ByRef msjError As String) As DataTable



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



        Dim cmd As New SqlCommand

        Try
            cmd = New SqlCommand(strCadena, conn)
            cmd.ExecuteNonQuery()

        Catch ex As Exception
            msjError = ex.Message
        End Try

    End Sub


End Class
