
Public Class clusuario

    Inherits clpersona
    Dim conn As New conexion





#Region "Metodos"

    Public Sub New()

    End Sub



    Public Function login(nit As String, password As String, ByRef msjError As String)

        Me.Nit = nit
        Me.Pasword = password

        Try


            Dim strCadena As String = " select * from usuarios where nit = '" & nit & "' and password = '" & password & "'"


            Dim tabla As DataTable = conn.ObtenerTabla(strCadena, msjError)

            If tabla.Rows.Count = 1 Then
                Return True
            Else
                Return False
            End If

        Catch ex As Exception
            Return False
        End Try

    End Function

#End Region

End Class
