<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin/admin.Master" CodeBehind="FrmRptListado.aspx.vb" Inherits="coope.FrmRptListado" %>
<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div id="main-header" class="page-header">
      <span class="titular1 block linea1bottom"> <asp:Label runat="server" ID="lbltitulo" Text ="Generar Estado Cuenta"></asp:Label><br/></span>
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
                                                     </td>
                                              </tr> 
                                     <%-- <tr>
                                                   <th>Producto:</th>
                                                    <td>
                                                         <asp:DropDownList ID="cmbProducto" runat="server"  CssClass="span6" AutoPostBack="True"></asp:DropDownList>
                                                     
                                                     </td>
                                              </tr> 
                              
                                       
                                      <tr>--%>
                                                 <%--  <th>Fecha Inicio:</th>
                                                    <td>
                                                      
                                                          
                                                                <dx:ASPxDateEdit ID="txtFecha" runat="server" UseMaskBehavior="True" EnableTheming="True" Theme="Moderno">
                                                                    <ValidationSettings>
                                                                        <RequiredField ErrorText="* Ingrese una Fecha" IsRequired="True" />
                                                                    </ValidationSettings>
                                                                </dx:ASPxDateEdit>
                                                        
                                                           

                                                         
                                                     </td>--%>
                                           <%--   </tr>
                                        <tr>
                                                   <th>Ahorro :</th>
                                                    <td>
                                                         <asp:DropDownList ID="cmbAhorro" runat="server"  CssClass="span6" AutoPostBack="True"></asp:DropDownList>
                                                     
                                                     </td>
                                              </tr> 
                                             --%>
                                              <tr>
                                                    <th></th>
                                                    <td>
                                                    &nbsp;
                                                       
                                                    <asp:Button ID="btnAceptar" runat="server" Text="Imprimir" CssClass="btn" />
                                                     
                                                     
                                                     </td>
                                              </tr>
                                              
                                                                                            
                                 </tbody> 
                        </table> 
                               <asp:Label ForeColor ="Red" ID="lblErrror" runat="server" Text=""></asp:Label>
                    </div>
                </div> 
            </div>


</asp:Content>
