<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin/admin.Master" CodeBehind="frmSocioAgregar.aspx.vb" Inherits="coope.frmSocioAgregar" %>
<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <style type="text/css">
         .auto-style3 {
             height: 61px;
         }
    </style>
    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <div id="main-header" class="page-header">
      <span class="titular1 block linea1bottom">caAgregar Socios <asp:Label runat="server" ID="lbltitulo" Text =""></asp:Label>
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
                            <th class="auto-style3">Nombre socio:</th>
                            <td class="auto-style3">
                                <dx:ASPxComboBox ID="cmbSocios" runat="server" ValueType="System.String" Width="252px">
                                </dx:ASPxComboBox>
                            </td>
                           
                            <td class="auto-style3">
                                &nbsp;&nbsp;<dx:ASPxButton ID="ASPxButton1" runat="server" Text="Agregar" Theme="Moderno">
                                </dx:ASPxButton>
                            </td>
                        </tr>
                        <tr class="auto-style3">
                            <td class="auto-style3">
                                <asp:Label ForeColor ="Red" ID="lblErrror" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                    </tbody>
                </table> 
            </div>
        </div>
    </div>

    <div class="widget-content form-container">
    </div>


</asp:Content>
