Module funciones

    'date format function level 1/3
    Public Function Sef(ByVal Fecha As String) As String
        Return Sef(Fecha, "", False)
    End Function

    'date format function level 2/3
    Public Function Sef(ByVal Fecha As String, ByVal DateFormat As String) As String
        Return Sef(Fecha, DateFormat, False)
    End Function

    'date format function level 3/4
    Public Function Sef(ByVal Fecha As String, ByVal IncludeTime As Boolean) As String
        Return Sef(Fecha, "", IncludeTime)
    End Function

    'date format function level 4/4
    Public Function Sef(ByVal Fecha As String, ByVal DateFormat As String, ByVal IncludeTime As Boolean) As String
        'declarations
        Dim strExpression As String = Convert.ToString(Fecha)
        Dim strReturnExpression As String = ""
        Dim ReturnDate As DateTime
        Dim FormatProvider As IFormatProvider = New System.Globalization.CultureInfo("es-ES", True)
        Dim ImputFormat() As String = {"ddMMyy", "ddMMyyyy", "yyyyMMdd", "dd/MM/yyyy", "dd/MMM/yyyy", "dd/MM/yy"}

        'validating
        If strExpression.Trim().Length = 0 Then Return ""
        If IsDate(strExpression) = False Then Return ""
        If DateFormat.Length = 0 Then DateFormat = "yyyyMMdd"

        Try
            'revision de la cadena para evaluar si es una fecha valida
            DateTime.TryParseExact(strExpression, ImputFormat, FormatProvider, System.Globalization.DateTimeStyles.None, ReturnDate)
            strReturnExpression = ReturnDate.ToString(DateFormat, FormatProvider)
            If IncludeTime = True Then
                strReturnExpression &= " " & DateTime.Now.TimeOfDay.Hours.ToString() & ":" & DateTime.Now.TimeOfDay.Minutes.ToString() & ":" & DateTime.Now.TimeOfDay.Seconds.ToString()
            End If
            Return strReturnExpression
        Catch ex As Exception
            Return ""
        End Try
    End Function
End Module
