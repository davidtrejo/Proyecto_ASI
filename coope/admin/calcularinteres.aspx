<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin/admin.Master" CodeBehind="calcularinteres.aspx.vb" Inherits="coope.calcularinteres" %>
<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <div id="main-header" class="page-header">
      <span class="titular1 block linea1bottom"> <asp:Label runat="server" ID="lbltitulo" Text ="Cierre Diario"></asp:Label><br/></span>
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
                                                   <th>Socio:</th>
                                                    <td>                                                        
                                                        <asp:DropDownList ID="cmbSocio" runat="server"  CssClass="span6" AutoPostBack="True"></asp:DropDownList>
                                                       <img src="../images/ayudaicon.png"  
                                                           onmouseover="document.getElementById('AyudaSocio').style.display = 'block';"
                                       onmouseout ="document.getElementById('imgtipo').style.display = 'none';" 
                                       width="13" height="13" alt="ayuda" style="margin-bottom:4px;"/>
                                                      
                                                 <%--       <asp:Label ID="AyudaSocio" runat="server" Text="Si desea hacer el cierre de una sola cuenta seleccione el socio y luego la cuenta a hacer el cierre" alt="ayudaSocio" style="display:none;position:absolute;top:-45px;left:-722px;" ></asp:Label>  
                                                 --%>     
                                                        <img alt="ayudaTipoSeguro" style="display:none;position:absolute;top:-45px;left:-722px;" id="AyudaSocio" src="../ayudaNoNit.png" class="siniestrohelp" width="523" height="225"/>
                                                     </td>


                                              </tr> 

                                      <tr>
                                                   <th>Producto:</th>
                                                    <td>
                                                         <asp:DropDownList ID="cmbProducto" runat="server"  CssClass="span6" AutoPostBack="True"></asp:DropDownList>
                                                     
                                                     </td>
                                              </tr> 
                                    
                                       
                                      <tr>
                                                   <th>Fecha Hasta:</th>
                                                    <td>
                                                      
                                                          
                                                                <dx:ASPxDateEdit ID="txtFecha" runat="server" UseMaskBehavior="True" EnableTheming="True" Theme="Moderno">
                                                                    <ValidationSettings>
                                                                        <RequiredField ErrorText="* Ingrese una Fecha" IsRequired="True" />
                                                                    </ValidationSettings>
                                                                </dx:ASPxDateEdit>
                                                        
                                                           

                                                         
                                                     </td>
                                              </tr>
                                             
                                              <tr>
                                                    <th></th>
                                                    <td>
                                                    &nbsp;
                                                       
                                                    <asp:Button ID="btnAceptar" runat="server" Text="Cierre Diario" CssClass="btn" />
                                                     
                                                     
                                                     </td>
                                              </tr>
                                              
                                                                                            
                                 </tbody> 
                        </table> 
                               <asp:Label ForeColor ="Red" ID="lblErrror" runat="server" Text=""></asp:Label>
                    </div>
                </div> 
            </div>
    
  
</asp:Content>
