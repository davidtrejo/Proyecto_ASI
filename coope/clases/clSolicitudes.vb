Public Class clSolicitudes

    Private _idahorro As Integer
    Public Property IdAhorro() As Integer
        Get
            Return _idahorro
        End Get
        Set(ByVal value As Integer)
            _idahorro = value
        End Set
    End Property

    Private _valorRetiro As Double
    Public Property ValorRetiro() As Double
        Get
            Return _valorRetiro
        End Get
        Set(ByVal value As Double)
            _valorRetiro = value
        End Set
    End Property

    Dim conn As New conexion


    Public Sub New()

    End Sub

    Public Sub New(idAhorro As Integer, valor As Double)
        _idahorro = idAhorro
        _valorRetiro = valor
    End Sub

    Public Sub SolicitarRetiro(ByRef msj As String)

        strSql = " Insert into solicitudesRetiro (IdAhorro,valor,fecha) values ( "
        strSql &= IdAhorro & c
        strSql &= _valorRetiro & c
        strSql &= "getdate())"

        conn.EjecutarSql(strSql, msj)

    End Sub



End Class
