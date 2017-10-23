<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin/admin.Master" CodeBehind="calcularinteres.aspx.vb" Inherits="coope.calcularinteres" %>
<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <div id="main-header" class="page-header">
      <span class="titular1 block linea1bottom"> <asp:Label runat="server" ID="lbltitulo" Text ="Calcular Interés"></asp:Label><br></span>
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
                                                         <asp:DropDownList ID="cmdProducto" runat="server"  CssClass="span6"></asp:DropDownList>
                                                     
                                                     </td>
                                              </tr> 
                                      <tr>
                                                   <th>Socio:</th>
                                                    <td>                                                        
                                                        <asp:DropDownList ID="cmdahorrante" runat="server"  CssClass="span6"></asp:DropDownList>
                                                     </td>
                                              </tr> 
                                       
                                      <tr>
                                                   <th>Fecha Hasta:</th>
                                                    <td>
                                                      
                                                          
                                                                <dx:ASPxDateEdit ID="txtFecha" runat="server">
                                                                </dx:ASPxDateEdit>
                                                        
                                                           

                                                         
                                                     </td>
                                              </tr>
                                             
                                              <tr>
                                                    <th></th>
                                                    <td>
                                                    &nbsp;
                                                       
                                                    <asp:Button ID="btnAceptar" runat="server" Text="Calcular Interés" CssClass="btn" />
                                                     
                                                     
                                                     </td>
                                              </tr>
                                              <tr><td>
                                                  <asp:Label ForeColor ="Red" ID="lblErrror" runat="server" Text=""></asp:Label></td></tr>
                                                                                            
                                 </tbody> 
                        </table> 
                    </div>
                </div> 
            </div>
    
  
</asp:Content>
