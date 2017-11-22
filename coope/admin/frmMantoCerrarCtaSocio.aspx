<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin/admin.Master" CodeBehind="frmMantoCerrarCtaSocio.aspx.vb" Inherits="coope.frmMantoCerrarCtaSocio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style type="text/css">
        .auto-style1 {
            height: 61px;
        }
    </style>
    
    </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="main-header" class="page-header">
      <span class="titular1 block linea1bottom">Cerrar cuentas socios <asp:Label runat="server" ID="lbltitulo" Text =""></asp:Label>
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
                            <td class="auto-style1">Nombre socio:</td>
                            <td class="auto-style1">
                                <asp:TextBox ID="txtNombre" runat="server" Width="300px"></asp:TextBox>
                            </td>
                           
                            <td colspan ="3" class="auto-style1">
                                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" CssClass="btn" OnClick="btnBuscar_Click"></asp:Button>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="5"> 
                                <asp:Label ForeColor ="Red" ID="lblErrror" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                    </tbody>
                </table> 
            </div>
        </div>
    </div>

    <div class="widget-content form-container">
        <asp:GridView Width ="100%" ID="dgvDatos" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" AllowPaging="True" PageSize="6">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField Visible ="false"  DataField="idpersona" HeaderText="SOCIO">
                <ItemStyle HorizontalAlign="Center" Width="400px" />         
                </asp:BoundField>
                <asp:BoundField DataField="nombreCompleto" HeaderText="SOCIO">
                <ItemStyle HorizontalAlign="Center" Width="400px" />         
                </asp:BoundField>  
                <asp:TemplateField HeaderText = "Cerrar cuentas"   >
                    <ItemStyle HorizontalAlign="Center" Width="400px" /> 
                    <ItemTemplate>                       
                        <asp:HyperLink runat="server" NavigateUrl='<%# Eval("idpersona", "frmCerrarCuenta.aspx?id={0}") %>' Text="Cerrar cuenta" />
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
