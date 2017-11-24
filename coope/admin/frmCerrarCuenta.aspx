<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin/admin.Master" CodeBehind="frmCerrarCuenta.aspx.vb" Inherits="coope.frmCerrarCuenta" %>
<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../js/jquery-1.8.3.min.js"></script>
    <script src="../js/jquery.maskedinput.js"></script>
    <script type="text/javascript">
        $(function () {
            $.mask.definitions['~'] = "[+-]";
            $("#date").mask("99/99/9999", { completed: function () { alert("completed!"); } });
            $("#phone").mask("(999) 999-9999");
            $("#phoneExt").mask("(999) 999-9999? x99999");
            $("#iphone").mask("+33 999 999 999");
            $("#tin").mask("99-9999999");
            $("#ssn").mask("999-99-9999");
            $("#product").mask("a*-999-a999", { placeholder: " " });
            $("#eyescript").mask("~9.99 ~9.99 999");
            $("#po").mask("PO: aaa-999-***");
            $("#pct").mask("99%");
            $("#txtMonto").mask("$99.99");
            $("input").blur(function () {
                $("#info").html("Unmasked value: " + $(this).mask());
            }).dblclick(function () {
                $(this).unmask();
            });
        });
</script>
    <style type="text/css">
        .auto-style1 {
            width: 249px;
        }
        .auto-style2 {
            width: 229px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="main-header" class="page-header">
        <span class="titular1 block linea1bottom">
            <asp:Label runat="server" ID="lbltitulo" Text="Cierre de cuentas"></asp:Label><br />
        </span>
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
                            <th>Motivo de cierre:</th>
                            <td colspan="4">
                                <asp:TextBox ID="txtMotivo" textmode="MultiLine" runat="server" Height="58px" Width="326px"></asp:TextBox>
                            </td>
                        </tr> 
                        <tr>
                            <th>Fecha de cierre:</th>
                            <td colspan="3">
                                <dx:ASPxDateEdit ID="dtFechaCierre" runat="server" Width="193px">
                                </dx:ASPxDateEdit>
                            </td>
                        </tr>
                        <tr>
                            <th>Destino:</th>
                            <td class="auto-style2">
                                <asp:DropDownList ID="cmbDestino" runat="server" AutoPostBack="True" Height="36px" Width="193px"></asp:DropDownList>
                            </td>
                            <td class="auto-style1">
                                <asp:TextBox ID="txtMonto" textmode="Number" runat="server" Width="133px" Height="30px" ></asp:TextBox>
                            </td>
                            <td>         
                                <asp:Button ID="btnAgregar" runat="server" Text="Agregar" CssClass="btn" />
                            </td>
                        </tr> 
                    </tbody> 
                </table> 
                <asp:Label ForeColor ="Red" ID="lblErrror" runat="server" Text=""></asp:Label>
            </div>
        </div> 
    </div> 

    <div class="widget-content form-container">
        <asp:GridView Width ="100%" ID="dgvDatos" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
        <br>
        </br>
        <br>
        </br>
        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="btn" />
    </div>
</asp:Content>