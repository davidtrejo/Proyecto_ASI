<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Sitio.Master" CodeBehind="Retirar.aspx.vb" Inherits="coope.Retirar" %>

<%@ Register Assembly="DevExpress.Web.v16.2, Version=16.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div id="main-header" class="page-header">
      <span class="titular1 block linea1bottom"> <asp:Label runat="server" ID="lbltitulo" Text ="Retirar de Cuenta"></asp:Label><br/></span>
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
                                                   <th>Cuenta:</th>
                                                    <td>
                                                        <dx:ASPxLabel ID="lblProducto" runat="server" Text="ASPxLabel"></dx:ASPxLabel>
                                                     </td>
                                              </tr> 
                                     <tr>
                                                   <th>Total en Cuenta:</th>
                                                    <td>
                                                        <dx:ASPxLabel ID="lblTotal" runat="server" Text=""></dx:ASPxLabel>
                                                     </td>
                                              </tr> 
                                   <tr>
                                                   <th>Cantidad M&aacute;xima a Retirar:</th>
                                                    <td>
                                                        <dx:ASPxLabel ID="lblMontoMaximoRetiro" runat="server" Text=""></dx:ASPxLabel>
                                                     </td>
                                              </tr> 
                                                                        <tr>
                                                   <th>Valor a Retirar </th>
                                                    <td>
                                                        <dx:ASPxTextBox ID="txtCantidad" runat="server" Width="170px"></dx:ASPxTextBox>
                                                     </td>
                                              </tr> 
                                     <tr>
                                         <th> </th>
                                         <td>
                                             <dx:ASPxButton ID="btnRetirar" runat="server" Text="Retirar" Theme ="Moderno" ></dx:ASPxButton> </td>
                                     </tr>

                                              <tr><td>
                                                  <asp:Label ForeColor ="Red" ID="lblErrror" runat="server" Text=""></asp:Label></td></tr>
                                                                                            
                                 </tbody> 
                        </table> 
                    </div>
                </div> 
            </div>
    

</asp:Content>
