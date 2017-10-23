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
End Module
