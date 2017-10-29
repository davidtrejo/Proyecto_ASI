<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin/admin.Master" CodeBehind="listapersonas.aspx.vb" Inherits="coope.listapersonas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div id="main-header" class="page-header">
        <p>
      <span class="titular1 block linea1bottom">Buscar Socio <asp:Label runat="server" ID="lbltitulo" Text =""></asp:Label><br></span>
        </p>
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
                                                   <th>Nombre:</th>
                                                    <td>
                                                        <asp:TextBox ID="txtdanos" runat="server" CssClass="span6"></asp:TextBox>
                                                     
                                                     </td>
                                              </tr> 
                                              <tr>
                                                    <th>Nit:</th>
                                                    <td>
                                                        <asp:TextBox ID="txtvalor" TextMode="Number" runat="server" CssClass="span6" ></asp:TextBox>
                                                      
                                                     </td>
                                              </tr> 
                                             
                                              <tr>
                                                    <th></th>
                                                    <td>
                                                    &nbsp;
                                                       
                                                    <asp:Button ID="btnBuscar" runat="server" Text="Buscar" CssClass="btn" />
                                                     
                                                     
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
        <asp:GridView width="100%" ID="gridPersonas" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
             <%--   <asp:BoundField DataField="idpersona" HeaderText="Id">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>--%>
                <asp:BoundField DataField="nombreCompleto" HeaderText="Nombre">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
              <%--  <asp:BoundField DataField="dui" HeaderText="Dui">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="nit" HeaderText="Nit">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="email" HeaderText="Email">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>--%>
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
