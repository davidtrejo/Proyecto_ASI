<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin/admin.Master" CodeBehind="frmSocios.aspx.vb" Inherits="coope.frmSocios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="main-header" class="page-header">
      <span class="titular1 block linea1bottom">Información del socio <asp:Label runat="server" ID="lbltitulo" Text =""></asp:Label>
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
                            <th>Nombre completo:</th>
                            <td>
                                <asp:TextBox ID="txtNombreCompleto" runat="server" Width="300px" Height="23px"></asp:TextBox>
                            </td>                           
                        </tr>                        
                        <tr>
                            <th>NIT:</th>     
                            <td>
                                <asp:TextBox ID="txtNit" runat="server" Width="300px" Height="25px"></asp:TextBox>
                            </td>                            
                        </tr>
                         <tr>
                            <th>Password:</th>
                            <td colspan="4">
                                <asp:TextBox ID="txtPassword" runat="server" Width="300px" Height="25px" TextMode="Password"></asp:TextBox>
                            </td>                             
                        </tr>                        
                        <tr>
                            <td colspan="5">
                                &nbsp;<asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="btn" OnClick="btnGuardar_Click"></asp:Button>
                            </td>                                  
                        </tr>     
                        <tr>
                            <td>
                                <asp:Label ForeColor ="Red" ID="lblErrror" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                    </tbody>
                </table> 
            </div>
        </div>
    </div>

    
</asp:Content>
