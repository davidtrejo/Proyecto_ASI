<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin/admin.Master" CodeBehind="MantoProducto.aspx.vb" Inherits="coope.frmMantoProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="main-header" class="page-header">
      <span class="titular1 block linea1bottom">Mantenimiento de productos <asp:Label runat="server" ID="lbltitulo" Text =""></asp:Label>
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
                            <th>Nombre producto:</th>
                            <td colspan="4">
                                <asp:TextBox ID="txtNombre" runat="server" Width="300px"></asp:TextBox>
                            </td>                     
                        </tr>
                        <tr>
                            <th>Clasificación:</th>
                            <td colspan="4">
                                <asp:DropDownList ID="ddClasificacion" runat="server" Width="300px"></asp:DropDownList>
                            </td>                     
                        </tr>
                        <tr>
                            <th>Duración en días:</th>
                            <td colspan="4">
                                <asp:TextBox ID="txtDDias" runat="server" Width="100px"></asp:TextBox>
                            </td>                     
                        </tr>
                        <tr>
                            <th></th>
                            <td colspan="5">
                                &nbsp;<asp:Button ID="btnGuardar" runat="server" Text="Guardar producto" CssClass="auto-style2"  OnClick="btnGuardar_Click"  Width="110px"></asp:Button>
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
