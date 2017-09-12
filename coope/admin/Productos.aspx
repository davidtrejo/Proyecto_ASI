<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin/admin.Master" CodeBehind="Productos.aspx.vb" Inherits="coope.Productos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="main-header" class="page-header">
      <span class="titular1 block linea1bottom">Buscar Productos <asp:Label runat="server" ID="lbltitulo" Text =""></asp:Label><br></span>
    </div>  
    
    <div id="main-content">       
        </div>
           <div class="row-fluid">
               <div class="span12 widget">
                    <div class="widget-header">
                        <span class="title"></span>
					</div>

                   	<div class="widget-content form-container">
                          <table class="table table-striped table-detail-view">
                                 <tbody>  
                                        <tr>
                                                   <th>Producto:</th>
                                                    <td>
                                                        <asp:TextBox ID="txtproducto" runat="server" CssClass="span6"></asp:TextBox>
                                                     
                                                     </td>
                                              </tr> 
                                              <tr>
                                                    <th>Tasa de Inter&eacute;s:</th>
                                                    <td>
                                                        <asp:TextBox ID="txttasa" TextMode="Number" runat="server" CssClass="span6" ></asp:TextBox>
                                                      
                                                     </td>
                                              </tr> 
                                             
                                              <tr>
                                                    <th></th>
                                                    <td>
                                                    &nbsp;
                                                       
                                                    <asp:Button ID="btnBuscar" runat="server" Text="Buscar" CssClass="btn" />
                                                     
                                                     
                                                     </td>
                                              </tr>
                                              <tr><td>
                                                  <asp:Label ForeColor ="Red" ID="lblErrror" runat="server" Text=""></asp:Label></td></tr>
                                                                                            
                                 </tbody> 
                        </table> 
                    </div>
                </div> 
            </div>
    
    <div class="widget-content form-container">
        <asp:GridView ID="grid" runat="server"></asp:GridView>
    </div>

</asp:Content>
