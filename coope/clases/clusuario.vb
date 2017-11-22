
Imports coope

Public Class clusuario

    Inherits clpersona
    Dim conn As New conexion

#Region "Declaraciones"

    Private _nombreUsuario As String
    Public Property NombreUsuario() As String
        Get
            Return _nombreUsuario
        End Get
        Set(ByVal value As String)
            _nombreUsuario = value
        End Set
    End Property

    Private _nitUsuario As String
    Public Property NitUsuario() As String
        Get
            Return _nitUsuario
        End Get
        Set(ByVal value As String)
            _nitUsuario = value
        End Set
    End Property

#End Region



#Region "Metodos"

    Public Sub New()

    End Sub

    Public Sub InsertarUsuario(_nombreUsuario As String, _nitUsuario As String, _password As String, ByRef msjError As String)
        Dim sqlInsert As String = "INSERT INTO usuarios (nombre,nit,acceso,password)  VALUES('" &
            _nombreUsuario & "','" &
            _nitUsuario & "'," &
            1 & ",'" &
            _password & "')"

        Try
            conn.EjecutarSql(sqlInsert, msjError)
        Catch ex As Exception
            msjError = ex.Message
        End Try
    End Sub
#End Region

#Region "Funciones"
    Public Function login(nit As String, password As String, ByRef msjError As String)

        Me.Nit = nit
        Me.Pasword = password

        Try


            Dim strCadena As String = " select top 1 nombre from usuarios where nit = '" & nit & "' and password = '" & password & "'"


            Dim tabla As DataTable = conn.ObtenerTabla(strCadena, msjError)

            If tabla.Rows.Count = 1 Then

                _nombreUsuario = tabla.Rows(0).Item("nombre")

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
