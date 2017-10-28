<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin/admin.Master" CodeBehind="frmSocios.aspx.vb" Inherits="coope.frmSocios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="main-header" class="page-header">
      <span class="titular1 block linea1bottom">Información del socio <asp:Label runat="server" ID="lbltitulo" Text =""></asp:Label>
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
                            <th>Primer nombre :</th>
                            <td>
                                <asp:TextBox ID="txtPrimerNombre" runat="server" Width="300px"></asp:TextBox>
                            </td>
                            <th>Segundo nombre :</th>
                            <td>
                                <asp:TextBox ID="txtSegundoNombre" runat="server" Width="300px"></asp:TextBox>
                            </td> 
                        </tr>
                        <tr>
                            <th>Primer apellido :</th>
                            <td>
                                <asp:TextBox ID="txtPrimerApe" runat="server" Width="300px"></asp:TextBox>
                            </td>
                            <th>Segundo apellido :</th>
                            <td>
                                <asp:TextBox ID="txtSegundoApe" runat="server" Width="300px"></asp:TextBox>
                            </td> 
                        </tr>
                        <tr>
                            <th>Número de DUI:</th>
                            <td>
                                <asp:TextBox ID="txtDUI" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <th>NIT:</th>
                            <td>
                                <asp:TextBox ID="txtNit" runat="server" Width="100px"></asp:TextBox>
                            </td>                            
                        </tr>
                         <tr>
                            <th>Dirección:</th>
                            <td colspan="4">
                                <asp:TextBox ID="txtDireccion" runat="server" Width="600px" Height="59px" TextMode="MultiLine"></asp:TextBox>
                            </td>                             
                        </tr>
                        <tr>
                            <th>F.Nacimiento:</th>
                            <td>
                                <asp:TextBox ID="txtFNacimiento" runat="server" Width="100px" ></asp:TextBox>
                            </td>
                            <th>Telefono:</th>
                            <td>
                                <asp:TextBox ID="txtTelefono" runat="server" Width="100px" ></asp:TextBox>
                            </td>            
                        </tr>
                        <tr>
                            <th>Email:</th>
                            <td>
                                <asp:TextBox ID="txtEnail" runat="server" Width="100px" ></asp:TextBox>
                            </td>
                            <th>Sexo:</th>
                            <td>
                                <asp:DropDownList ID="ddSexo" runat="server" Width="100px" ></asp:DropDownList>
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
                <asp:BoundField DataField="nombreCompleto" HeaderText="SOCIO">
                <ItemStyle HorizontalAlign="Center" Width="400px" />
                </asp:BoundField>
                
                <asp:CommandField HeaderText="Ver productos"  ShowSelectButton="True" >
                <ItemStyle HorizontalAlign="Center" Width="200px" />
                </asp:CommandField>
                <asp:CommandField HeaderText="Dar baja"  ShowSelectButton="True" >
                
                <ItemStyle HorizontalAlign="Center" Width="200px" />
                </asp:CommandField>
                
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
