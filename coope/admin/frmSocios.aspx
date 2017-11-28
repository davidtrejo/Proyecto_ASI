<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin/admin.Master" CodeBehind="frmSocios.aspx.vb" Inherits="coope.frmSocios" %>

<%@ Register Assembly="DevExpress.Web.v16.2, Version=16.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="main-header" class="page-header">
      <span class="titular1 block linea1bottom">Información del usuario <asp:Label runat="server" ID="lbltitulo" Text =""></asp:Label>
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
                                <dx:ASPxTextBox ID="txtNombreCompleto1" runat="server" Width="170px" Theme="Moderno">
                                    <ValidationSettings>
                                        <RequiredField IsRequired="True" ErrorText="Ingrese el nombre del socio" />
                                    </ValidationSettings>
                                </dx:ASPxTextBox>
                                
                            </td>                           
                        </tr>                        
                        <tr>
                            <th>NIT:</th>     
                            <td>
                                <dx:ASPxTextBox ID="txtNit1" runat="server" Width="170px" Theme="Moderno">
                                    <MaskSettings Mask="0000-000000-000-0" />
                                    <ValidationSettings>
                                        <RequiredField IsRequired="True" ErrorText="Ingrese su nit" />
                                    </ValidationSettings>
                                </dx:ASPxTextBox>
                              
                            </td>                            
                        </tr>
                         <tr>
                            <th>Password:</th>
                            <td colspan="4">
                                <dx:ASPxTextBox ID="txtPass" runat="server" Width="170px" MaxLength="6" Password="True" Theme="Moderno">
                                    <ValidationSettings>
                                        <RequiredField IsRequired="True" ErrorText="Ingrese su contraseña" />
                                    </ValidationSettings>
                                </dx:ASPxTextBox>
                               
                            </td>                             
                        </tr>    
                        <tr>
                            <th>Repita su Password:</th>
                            <td colspan="4">
                                <dx:ASPxTextBox ID="txtPass2" runat="server" Width="170px" MaxLength="6" Password="True" Theme="Moderno">
                                    <ValidationSettings>
                                        <RequiredField ErrorText="Este campo es obligatorio" IsRequired="True" />
                                    </ValidationSettings>
                                </dx:ASPxTextBox>
                                
                            </td>                             
                        </tr>   
                        <tr>
                            <td colspan="5">
                                &nbsp;<dx:ASPxButton ID="ASPxButton1" runat="server" Text="Guardar" Theme="Moderno">
                                </dx:ASPxButton>
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
