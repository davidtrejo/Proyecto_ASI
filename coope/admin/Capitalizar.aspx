<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin/admin.Master" CodeBehind="Capitalizar.aspx.vb" Inherits="coope.Capitalizar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
    <div id="main-header" class="page-header">
      <span class="titular1 block linea1bottom"> <asp:Label runat="server" ID="lbltitulo" Text ="Capitalizar"></asp:Label><br></span>
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
                                                      
                                                          
                                                                <input type='text' runat ="server" id="txtFecha" /><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/calendar.png" />

                                                                <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                                                        
                                                           

                                                         
                                                     </td>
                                              </tr>
                                             
                                              <tr>
                                                    <th></th>
                                                    <td>
                                                    &nbsp;
                                                       
                                                    <asp:Button ID="btnAceptar" runat="server" Text="Capitalizar" CssClass="btn" />
                                                     
                                                     
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
