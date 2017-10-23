Module funciones

    'formatea la fecha para insertar en sql

    Public Function sef2(Fecha As Date) As String

        Dim anio As String = Fecha.Year
        Dim mes As String = Fecha.Month
        Dim dia As String = Fecha.Day

        If dia.Length = 1 Then
            dia = "0" & dia
        End If

        If mes.Length = 1 Then
            mes = "0" & mes
        End If


        Return "'" & anio & mes & dia & "'"


    End Function


    'validate null values 1/5
    Public Function IsNull(ByVal Expression As Object, ByVal UnhandledReturnExpression As Object) As Object
        Return IsNull(Expression, UnhandledReturnExpression, "", Nothing, Nothing, False)
    End Function

    'validate null values 2/5
    Public Function IsNull(ByVal Expression As Object, ByVal UnhandledReturnExpression As Object, ByVal OutDataFormat As String) As Object
        Return IsNull(Expression, UnhandledReturnExpression, OutDataFormat, Nothing, Nothing, False)
    End Function

    'validate null values 3/5
    Public Function IsNull(ByVal Expression As Object, ByVal UnhandledReturnExpression As Object, ByVal QuotationMark As Boolean) As Object
        Return IsNull(Expression, UnhandledReturnExpression, "", Nothing, Nothing, QuotationMark)
    End Function

    'validate null values 4/5
    Public Function IsNull(ByVal Expression As Object, ByVal UnhandledReturnExpression As Object, ByVal OutDataFormat As String, ByVal InDataFormat As String(), ByVal QuotationMark As Boolean) As Object
        Return IsNull(Expression, UnhandledReturnExpression, OutDataFormat, InDataFormat, Nothing, QuotationMark)
    End Function

    'validate null values 5/5
    Public Function IsNull(ByVal Expression As Object, ByVal UnhandledReturnExpression As Object, ByVal OutDataFormat As String, ByVal InDataFormat As String(), ByVal FormatProvider As IFormatProvider, ByVal QuotationMark As Boolean) As Object
        Dim Espacio As String = " "
        Try
            'validacion de la entrada
            If Expression.ToString = "" Then Return UnhandledReturnExpression

            'formato de la expresion
            If OutDataFormat <> "" Then
                If IsDate(Expression) = True Then
                    Dim Fecha As DateTime
                    If FormatProvider Is Nothing Then FormatProvider = New System.Globalization.CultureInfo("es-ES", True)
                    If InDataFormat Is Nothing Then
                        ReDim InDataFormat(2)
                        InDataFormat = {"yyyyMMdd", "dd/MM/yyyy", "dd/MMM/yyyy"}
                    End If

                    'remocion de espacios en la fecha
                    Expression = Expression.ToString().Split(Espacio).GetValue(0).ToString()
                    If DateTime.TryParseExact(Convert.ToString(Expression), InDataFormat, FormatProvider, System.Globalization.DateTimeStyles.None, Fecha) = True Then
                        Expression = Fecha.ToString(OutDataFormat, FormatProvider)
                    Else
                        Return UnhandledReturnExpression
                    End If
                Else
                    Expression = Convert.ToDouble(Expression).ToString(OutDataFormat, FormatProvider) ' string.Format(OutDataFormat, Convert.ToDouble(Expression))
                End If
            End If

            'comillado de la expresion
            If QuotationMark = True Then
                ''/*Expression = "'" + Convert.ToString(Expression) + "'";*/
                Expression = Convert.ToString(Expression)
                ' Expression = Convert.ToString(Scm(Expression))
            End If
            Return Expression
        Catch ex As Exception
            Return UnhandledReturnExpression
        End Try
    End Function

End Module
