<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin/admin.Master" CodeBehind="manatenimientoproductos.aspx.vb" Inherits="coope.manatenimientoproductos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div id="main-header" class="page-header">
      <span class="titular1 block linea1bottom"> <asp:Label runat="server" ID="lbltitulo" Text ="Agregar Producto"></asp:Label><br></span>
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
                                                   <th>Tipo Producto:</th>
                                                    <td>                                                        
                                                        <asp:DropDownList ID="cmdTipoProductos" runat="server"  CssClass="span6"></asp:DropDownList>
                                                     </td>
                                              </tr> 
                                        <tr>
                                                   <th>Producto:</th>
                                                    <td>
                                                        <asp:TextBox ID="txtproducto" runat="server" CssClass="span6"></asp:TextBox>
                                                     
                                                     </td>
                                              </tr> 
                                      <tr>
                                                   <th>Descripci&oacute;n:</th>
                                                    <td>
                                                        <asp:TextBox ID="txtDescripcion" TextMode ="MultiLine" runat="server" CssClass="span6"></asp:TextBox>
                                                     
                                                     </td>
                                              </tr>
                                              <tr>
                                                    <th>Tasa de Inter&eacute;s:</th>
                                                    <td>
                                                        <asp:TextBox ID="txttasa" runat="server" CssClass="span6" ></asp:TextBox> %
                                                      
                                                     </td>
                                              </tr> 
                                             
                                              <tr>
                                                    <th></th>
                                                    <td>
                                                    &nbsp;
                                                       
                                                    <asp:Button ID="btnguardar" runat="server" Text="Guardar" CssClass="btn" />
                                                     
                                                     
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
        <asp:GridView Width ="100%" ID="grid" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="nombreproducto" HeaderText="Producto">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="tasa" HeaderText="tasa">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="descripcion" HeaderText="Descripción">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
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
