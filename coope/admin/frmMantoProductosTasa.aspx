<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin/admin.Master" CodeBehind="frmMantoProductosTasa.aspx.vb" Inherits="coope.frmMantoProductosTasa" %>

<%@ Register Assembly="DevExpress.Web.v16.2, Version=16.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="main-header" class="page-header">
      <span class="titular1 block linea1bottom"> <asp:Label runat="server" ID="lbltitulo" Text ="Tasa de Productos"></asp:Label><br/></span>
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
                            <th>Nombre producto:</th>
                            <td colspan="4">
                                <asp:TextBox ID="txtNombre" runat="server" Enabled ="false"  Width="300px"></asp:TextBox>
                            </td>                     
                        </tr>
                        <tr>
                            <th>Clasificación:</th>
                            <td colspan="4">
                                <asp:DropDownList ID="ddClasificacion" Enabled ="false"  runat="server" Width="300px"></asp:DropDownList>
                            </td>                     
                        </tr>
                        <tr>
                            <th>Duración en días:</th>
                            <td colspan="4">
                                <asp:TextBox ID="txtDDias" Enabled ="false"  runat="server" Width="100px"></asp:TextBox>
                            </td>                     
                        </tr>
                      
                      
                    </tbody>
                </table> 
            </div>
        </div>
    </div>    

    <br />
    La tasa actual es la que aparece un la primera fila de la siguiente lista.

    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" Width ="100%" DataSourceID="SqlDataSource1" KeyFieldName="idtasa" Theme="Moderno">
        <Columns>
              <dx:GridViewCommandColumn ShowNewButtonInHeader="true"   ShowEditButton="true" VisibleIndex="0" />
            <dx:GridViewDataTextColumn FieldName="idtasa" ReadOnly="True" Visible="False" VisibleIndex="1">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Tasa" FieldName="tasa" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn Caption="Fecha Aplicación" FieldName="FechaDesde" VisibleIndex="3">
            </dx:GridViewDataDateColumn>
        </Columns>
        <Styles>
               <SelectedRow Cursor="pointer">       </SelectedRow>
                <Cell>
                    <%--<Border BorderColor="#1D407B" />--%>
                    <BorderRight BorderColor="#1D407B" />
                </Cell>
                <Footer Font-Bold="True" BackColor="#1D407B" ForeColor="White">
                </Footer>

                <Header BackColor="#1D407B" ForeColor="White">
                </Header>
                
                                 <RowHotTrack Cursor="pointer">
                                 </RowHotTrack>
                
                <AlternatingRow Enabled="true" Wrap="Default" BackColor="#E2E2E2"  />
         </Styles>     
    </dx:ASPxGridView>

    <br />
   <a href="MantoProductoLista.aspx" >Regresar </a>
   
    
    <br />


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_A2BDCF_coopepruebaConnectionString %>" 
        SelectCommand="SELECT [idtasa], [tasa], [FechaDesde] FROM [tasasInteres] WHERE ([idproducto] = @idproducto) order by idtasa desc"
          InsertCommand ="Insert into tasasInteres (idproducto,tasa,fechaDesde) values(@idproducto,@tasa,@fechaDesde)"
        >
        <InsertParameters >
             <asp:QueryStringParameter Name="idproducto" QueryStringField="id" Type="Int32" />
             <asp:Parameter Name="tasa" />
             <asp:Parameter Name="FechaDesde" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="idproducto" QueryStringField="id" Type="Int32" />

        </SelectParameters>
          <UpdateParameters>  
            <asp:Parameter Name="tasa" />
            <asp:Parameter Name="FechaDesde" />
            
        </UpdateParameters>
        <DeleteParameters >
            <asp:Parameter Name="idtasa" />

        </DeleteParameters>
    </asp:SqlDataSource>

</asp:Content>
