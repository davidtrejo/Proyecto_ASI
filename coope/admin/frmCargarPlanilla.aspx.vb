Imports System.Data
Imports System.Data.OleDb
Imports System.IO


Public Class frmCargarPlanilla
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnImport_Click(sender As Object, e As EventArgs) Handles btnImport.Click
        Dim connString As String = ""
        Dim strFileType As String = Path.GetExtension(fileuploadExcel.FileName).ToLower()
        Dim path__1 As String = fileuploadExcel.PostedFile.FileName
        'Connection String to Excel Workbook
        If strFileType.Trim() = ".xls" Then
            connString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & path__1 & ";Extended Properties=""Excel 8.0;HDR=Yes;IMEX=2"""
        ElseIf strFileType.Trim() = ".xlsx" Then
            connString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" & path__1 & ";Extended Properties=""Excel 12.0;HDR=Yes;IMEX=2"""
        End If
        Dim query As String = "SELECT [UserName],[Education],[Location] FROM [Sheet1$]"
        Dim conn As New OleDbConnection(connString)
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        Dim cmd As New OleDbCommand(query, conn)
        Dim da As New OleDbDataAdapter(cmd)
        Dim ds As New DataSet()
        da.Fill(ds)
        grvExcelData.DataSource = ds.Tables(0)
        grvExcelData.DataBind()
        da.Dispose()
        conn.Close()
        conn.Dispose()
    End Sub
End Class