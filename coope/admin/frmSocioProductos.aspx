<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin/admin.Master" CodeBehind="frmSocioProductos.aspx.vb" Inherits="coope.frmSocioProductos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 61px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div id="main-header" class="page-header">
      <span class="titular1 block linea1bottom"> <asp:Label runat="server" ID="lbltitulo" Text ="Detalle productos socio"></asp:Label><br/></span>
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
                                          <th class="auto-style1">Socio:</th>
                                          <td colspan="5"><asp:TextBox ID="txtSocio" runat="server" Width="300px" Enabled="False" ></asp:TextBox></td>
                                     </tr> 
                                     <tr>
                                         <th>Cuentas de ahorro:</th>
                                         <td colspan="4">&nbsp;<asp:Button ID="btnAgregar" runat="server" Text="Agregar" CssClass="btn" OnClick="btnAgregar_Click"></asp:Button></td>
                                     </tr> 
                                     <tr>
                                         <td><asp:Label ForeColor ="Red" ID="lblErrror" runat="server" Text=""></asp:Label></td>
                                     </tr>                                                                                            
                                 </tbody> 
                        </table> 
                    </div>
                </div> 
            </div>
    
    <div class="widget-content form-container">
        <asp:GridView Width ="94%" ID="dgvDatos" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="idahorro" HeaderText="idahorro" Visible ="false">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="idproducto" HeaderText="id">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="nombreproducto" HeaderText="Producto">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="saldo" HeaderText="Saldo">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                
              <asp:TemplateField HeaderText = "Ver detalle">
                    <ItemStyle HorizontalAlign="Center" Width="400px" /> 
                  <ItemTemplate>
                      <%--<asp:HyperLink runat="server" NavigateUrl='<%# Eval("idproducto", "frmSocioProductoDetalle.aspx?id={0}") %>' Text="Ver detalle" />--%>
                      <asp:HyperLink runat="server" NavigateUrl='<%# Eval("idahorro", "frmSocioProductoDetalle.aspx?id={0}") %>' Text="Ir a detalle" />
                  </ItemTemplate>
              </asp:TemplateField>            
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    </div>

</asp:Content>


