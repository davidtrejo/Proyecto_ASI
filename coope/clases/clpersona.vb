Imports System.Data



Public Class clpersona


#Region "Declaraciones"

    Dim strSql As String = ""
    Dim conn As New conexion

    Private _nombre As String
    Public Property Nombre() As String
        Get
            Return _nombre
        End Get
        Set(ByVal value As String)
            _nombre = value
        End Set
    End Property

    Private _fechaNacimiento As String
    Public Property FechaNacimiento() As String
        Get
            Return _fechaNacimiento
        End Get
        Set(ByVal value As String)
            _fechaNacimiento = value
        End Set
    End Property

    Private _dui As String
    Public Property DUI() As String
        Get
            Return _dui
        End Get
        Set(ByVal value As String)
            _dui = value
        End Set
    End Property

    Private _Nit As String
    Public Property Nit() As String
        Get
            Return _Nit
        End Get
        Set(ByVal value As String)
            _Nit = value
        End Set
    End Property

    Private _direccion As String
    Public Property Direccion() As String
        Get
            Return _direccion
        End Get
        Set(ByVal value As String)
            _direccion = value
        End Set
    End Property

    Private _Telefono As String
    Public Property Telefono() As String
        Get
            Return _Telefono
        End Get
        Set(ByVal value As String)
            _Telefono = value
        End Set
    End Property

    Private _email As String
    Public Property email() As String
        Get
            Return _email
        End Get
        Set(ByVal value As String)
            _email = value
        End Set
    End Property

    Private _password As String
    Public Property Pasword() As String
        Get
            Return _password
        End Get
        Set(ByVal value As String)
            _password = value
        End Set
    End Property




#End Region






    Public Sub New()

    End Sub

    Public Sub New(Nombre As String, fechanacimiento As Date, Dui As String, nit As String, direccion As String, telefono As String, email As String, password As String)

        Me._nombre = Nombre
        Me._fechaNacimiento = fechanacimiento
        Me.Direccion = direccion
        Me.Nit = nit
        Me.DUI = Dui
        Me.email = email
        Me.Pasword = password
        Me.Telefono = telefono


    End Sub

#Region "Metodos"



#End Region

#Region "Funciones"

    Public Function login(nit As String, password As String, ByRef msjError As String)

        Me.Nit = nit
        Me.Pasword = password

        Try

            Dim strCadena As String = " select * from personas where nit = '" & nit & "' and password = '" & password & "'"


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

    Public Function ObtenerListaPersonas(msjError As String) As DataTable

        strSql = " select * from personas"
        Dim tabla As DataTable = New DataTable

        Try
            tabla = conn.ObtenerTabla(strSql, msjError)
            Return tabla

        Catch ex As Exception
            msjError = ex.Message
            Return Nothing
        End Try


    End Function

    Public Function ObtenerListaPersonas(msjError As String, combo As Boolean) As DataTable

        strSql = "select '' as idpersona, '' as nombre union select idpersona,nombre from personas"
        Dim tabla As DataTable = New DataTable

        Try
            tabla = conn.ObtenerTabla(strSql, msjError)
            Return tabla

        Catch ex As Exception
            msjError = ex.Message
            Return Nothing
        End Try


    End Function

#End Region

End Class
