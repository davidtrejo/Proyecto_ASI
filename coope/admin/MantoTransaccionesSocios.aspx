<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin/admin.Master" CodeBehind="MantoTransaccionesSocios.aspx.vb" Inherits="coope.frmMantenimientoConsultaSocios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="main-header" class="page-header">
      <span class="titular1 block linea1bottom">Consulta de transacciones de socio <asp:Label runat="server" ID="lbltitulo" Text =""></asp:Label>
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
                            <th>Codigo socio:</th>
                            <td>
                                <asp:TextBox ID="txtCodigo" runat="server" CssClass="span6"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <th>Tipo ahorro:</th>
                            <td>
                                <asp:DropDownList  ID="cbxTipoAhorro" runat="server" CssClass="span6"></asp:DropDownList>
                            </td>
                        </tr>
                       
                        <%--<tr>
                            <th>Cuenta:</th>
                            <td>
                                <asp:TextBox ID="txtCuenta" runat="server" CssClass="span6"></asp:TextBox>
                            </td>
                        </tr>--%>
                        <%--<tr>
                            <th>Nit:</th>
                            <td>
                                <asp:TextBox ID="txtvalor" TextMode="Number" runat="server" CssClass="span6" ></asp:TextBox>
                            </td>
                        </tr> --%>
                        <tr>
                            <th></th>
                            <td>
                                &nbsp;<asp:Button ID="btnBuscar" runat="server" Text="Buscar" CssClass="btn" OnClick="btnBuscar_Click"/>
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

    <div class="widget-content form-container">
        <asp:GridView Width ="100%" ID="dgvDatos" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="NumPrestamo" HeaderText="Numero Prestamo">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="valormovimiento" HeaderText="Valor de movimiento">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="fechamovimiento" DataFormatString="{0:d}" HeaderText="Fecha">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="descripcion" HeaderText="Detalle">
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