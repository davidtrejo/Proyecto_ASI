<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin/admin.Master" CodeBehind="frmCargarPlanilla.aspx.vb" Inherits="coope.frmCargarPlanilla" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div id="main-header" class="page-header">
      <span class="titular1 block linea1bottom">Agregar Socios <asp:Label runat="server" ID="lbltitulo" Text =""></asp:Label>
          <br/></span>
    </div>

      <div id="main-content"></div>
    
    <div class="row-fluid">
        <div class="span12 widget">
            <div class="widget-header">
                <span class="title"></span>
			</div>
            <div class="widget-content form-container">
                <table class="table table-striped table-detail-view">
                    <tbody>
                        <tr>
                            <th class="auto-style3">Por favor seleccione el archivo a cargar:</th>
                            <td class="auto-style3">
                                <dx:aspxcombobox ID="cmbSocios" runat="server" ValueType="System.String" Width="252px">
                                </dx:aspxcombobox>
                            </td>
                           
                            <td class="auto-style3">
                            <asp:FileUpload ID="fileuploadExcel" runat="server" />
                            </td>
                        </tr>
                         <tr class="auto-style3">
                            <td class="auto-style3">
                                <asp:Button ID="btnImport" runat="server" Text="Import Data" OnClick="btnImport_Click" />
                            </td>
                        </tr>

                      

                        <tr class="auto-style3">
                            <td class="auto-style3">
                                <asp:Label ForeColor ="Red" ID="lblErrror" runat="server" Text=""></asp:Label>
                                <asp:Label ID="lblMessage" runat="server" Visible="False" Font-Bold="True" ForeColor="#009933"></asp:Label><br />
                            </td>
                        </tr>
                    </tbody>
                </table> 
            </div>
        </div>
    </div>

    <div class="widget-content form-container">
    </div>


    <div>


<asp:GridView ID="grvExcelData" runat="server">
<HeaderStyle BackColor="#df5015" Font-Bold="true" ForeColor="White" />
</asp:GridView>
</div>

</asp:Content>
