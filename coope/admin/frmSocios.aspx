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
                                <asp:DropDownList ID="ddSexo" runat="server" Width="100px" >
                                    <asp:ListItem Value="M">Masculino</asp:ListItem>
                                    <asp:ListItem Value="F">Femenino</asp:ListItem>
                                </asp:DropDownList>
                            </td>            
                        </tr>
                        <tr>
                            <td colspan="5">
                                &nbsp;<asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="btn" OnClick="btnGuardar_Click"></asp:Button>
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
