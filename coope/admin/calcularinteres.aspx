<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin/admin.Master" CodeBehind="calcularinteres.aspx.vb" Inherits="coope.calcularinteres" %>
<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" href="../css/popup.css"/>

    <script type="text/javascript" src="../js/jquery.js"></script>

<script type="text/javascript">
    $(document).ready(function () {
        $('#open').click(function () {
            $('#popupSocio').fadeIn('slow');
            //$('body').css('opacity', '0.5');
            return false;
        });

        $('#close').click(function () {
            $('#popupSocio').fadeOut('slow');
            //$('body').css('opacity', '1');
            return false;
        });

        $('#open2').click(function () {
            $('#popupCuenta').fadeIn('slow');
           // $('body').css('opacity', '0.5');
            return false;
        });

        $('#close2').click(function () {
            $('#popupCuenta').fadeOut('slow');
           // $('body').css('opacity', '1');
            return false;
        });
    });
</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    
    <div id="main-header" class="page-header">
      <span class="titular1 block linea1bottom"> <asp:Label runat="server" ID="lbltitulo" Text ="Cierre Diario"></asp:Label><br/></span>
    </div>  
    
    
                        <span class="title"> Para hacer el cierre de todas las cuentas precione el bot&oacute;n aceptar sin seleccionar socio ni cuenta </span>
					<br />
    <div id="main-content">       
        </div>
           <div class="row-fluid">
               <div class="span12 widget">
                   

                   	<div class="widget-content form-container">
                          <table class="table table-striped table-detail-view">
                                 <tbody> 
                                       <tr>
                                                   <th>Socio:</th>
                                                    <td>                                                        
                                                        <asp:DropDownList ID="cmbSocio" runat="server"  CssClass="span6" AutoPostBack="True"></asp:DropDownList>
                                                    <a href="#" id="open">   <img src="../images/ayudaicon.png"  width="13" height="13" alt="ayuda" style="margin-bottom:4px;"/></a> 

                                                    
                                           
                                                    </td>


                                              </tr> 

                                      <tr>
                                                   <th>Cuenta:</th>
                                                    <td>
                                                         <asp:DropDownList ID="cmbProducto" runat="server"  CssClass="span6" AutoPostBack="True"></asp:DropDownList>
                                                      <a href="#" id="open2">   <img src="../images/ayudaicon.png"  width="13" height="13" alt="ayuda" style="margin-bottom:4px;"/></a> 

                                                     </td>
                                              </tr> 
                                    
                                       
                                      <tr>
                                                   <th>Fecha Cierre:</th>
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
    


       <%--popups de ayuda--%> 

        <div id="popupSocio" class="popup" style="display: none;">
                <div class="content-popup">
                    <div class="close"><a href="#" id="close"><img src="../images/close.png"/></a></div>
                    <div>Seleccione un socio para hacer el cierre diario a todas las cuentas de un socio en espec&iacute;fico</div>
                </div>
        </div>
                                                      
        <div id="popupCuenta" class="popup" style="display: none;">
            <div class="content-popup">
                <div class="close"><a href="#" id="close2"><img src="../images/close.png"/></a></div>
                <div>Seleccione una cuenta para hacer el cierre de una cuenta de un socio previamente seleccionado</div>
            </div>
        </div>
  
    <%--Fin popus de ayuda--%>
  
</asp:Content>
