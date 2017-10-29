<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin/admin.Master" CodeBehind="MantoSocios.aspx.vb" Inherits="coope.MantoSocios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style type="text/css">
        .auto-style2 {
        display: inline;
        zoom: 1;
        font-size: 12px;
        line-height: 18px;
        text-align: center;
        vertical-align: middle;
        cursor: pointer;
        color: #333333;
        text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);
        -webkit-border-radius: 4px;
        -moz-border-radius: 4px;
        border-radius: 4px;
        -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, .2), 0 1px 2px rgba(0, 0, 0, .05);
        -moz-box-shadow: inset 0 1px 0 rgba(255, 255, 255, .2), 0 1px 2px rgba(0, 0, 0, .05);
        box-shadow: inset 0 1px 0 rgba(255, 255, 255, .2), 0 1px 2px rgba(0, 0, 0, .05);
        border: 0 none #c5c5c5;
        margin-left: .3em;
        padding: 4px 12px;
        background-color: #f5f5f5;
        background-image: url('linear-gradient(to%20bottom,%20#ffffff, #e6e6e6)');
        background-repeat: repeat-x;
    }
    </style>
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="main-header" class="page-header">
      <span class="titular1 block linea1bottom">Mantenimiento de socios <asp:Label runat="server" ID="lbltitulo" Text =""></asp:Label>
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
                            <th>Nombre socio:</th>
                            <td>
                                <asp:TextBox ID="txtNombre" runat="server" Width="300px"></asp:TextBox>
                            </td>
                           
                            <td>
                                &nbsp;<asp:Button ID="btnBuscar" runat="server" Text="Buscar" CssClass="btn" OnClick="btnBuscar_Click"></asp:Button>
                                &nbsp;<asp:Button ID="btnAgregar" runat="server" Text="Agregar socio" CssClass="auto-style2"  PostBackUrl="~/admin/frmSocios.aspx"  Width="110px"></asp:Button>
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
        <asp:GridView Width ="100%" ID="dgvDatos" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" AllowPaging="True" PageSize="6">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                 <asp:BoundField DataField="idpersona" HeaderText="SOCIO">
                <ItemStyle HorizontalAlign="Center" Width="400px" />         
                </asp:BoundField>
                <asp:BoundField DataField="nombreCompleto" HeaderText="SOCIO">
                <ItemStyle HorizontalAlign="Center" Width="400px" />         
                </asp:BoundField>  
                <asp:TemplateField HeaderText = "Ver productos" >
                    <ItemTemplate>
                        <asp:HyperLink runat="server" NavigateUrl='<%# Eval("idpersona", "frmSocioProductos.aspx?id={0}") %>' Text="Seleccionar" />
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