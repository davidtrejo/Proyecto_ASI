<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin/admin.Master" CodeBehind="MantoProductoLista.aspx.vb" Inherits="coope.MantoProductoLista" %>
<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    <div id="main-header" class="page-header">
      <span class="titular1 block linea1bottom"> <asp:Label runat="server" ID="lbltitulo" Text ="Lista de Productos"></asp:Label><br/></span>
    </div>  

   
    <dx:ASPxGridView ID="ASPxGridView1" Width="100%" runat="server" Theme ="Moderno"  AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="idproducto">
        <SettingsPager PageSize="20">
        </SettingsPager>
        <SettingsSearchPanel Visible="True" />
        <SettingsText ContextMenuShowSearchPanel="Buscar..." />
        <Columns>
             <dx:GridViewCommandColumn ShowNewButtonInHeader="true" ShowDeleteButton ="true"  ShowEditButton="true" VisibleIndex="0" />
            <dx:GridViewDataTextColumn FieldName="idproducto" ReadOnly="True" Visible="false">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="nombreproducto"  Caption ="Nombre Producto"  Width ="40%" VisibleIndex="1">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="DuracionenDias" Caption ="Duración en Días" VisibleIndex="3" Width ="20%" >
            </dx:GridViewDataTextColumn>
             <dx:GridViewDataComboBoxColumn Caption="Tipo Producto" FieldName="idtipoproducto" VisibleIndex="2">
                 <PropertiesComboBox DataSourceID="SqlDSTipoProductos" TextField="nombretipoproducto" ValueField="idtipoproducto">
                     <Columns>
                         <dx:ListBoxColumn Caption="Id" FieldName="idtipoproducto" Visible="False">
                         </dx:ListBoxColumn>
                         <dx:ListBoxColumn Caption="Tipo Producto" FieldName="nombretipoproducto">
                         </dx:ListBoxColumn>
                     </Columns>
                 </PropertiesComboBox>
             </dx:GridViewDataComboBoxColumn>
<%--         
             <dx:GridViewDataHyperLinkColumn Caption="Tasas" UnboundType="String" VisibleIndex="4">
                 <PropertiesHyperLinkEdit NavigateUrlFormatString="~/admin/frmMantoProductosTasa.aspx?id={0}" Text="Ver Tasa" TextFormatString="">
                 </PropertiesHyperLinkEdit>
             </dx:GridViewDataHyperLinkColumn>--%>
         
              <dx:GridViewDataTextColumn VisibleIndex="4" Caption="Ver Tasa" >
                                    <DataItemTemplate>
                                <a id="clickElement" target="_blank" href="frmMantoProductosTasa.aspx?id=<%#Eval("idproducto").ToString()%>">Ver Tasa</a>
                                </DataItemTemplate>
                                </dx:GridViewDataTextColumn>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_A2BDCF_coopepruebaConnectionString %>"
        SelectCommand="select a.* from productos as a  "
        DeleteCommand="delete from Productos where IdProducto = @idProducto"
         UpdateCommand =" Update productos set  nombreproducto =@nombreproducto ,DuracionenDias = @DuracionenDias where idproducto=@idproducto"
         InsertCommand =" Insert into productos (nombreProducto,idtipoproducto,DuracionenDias) values(@nombreproducto,@idtipoproducto,@DuracionenDias)  "
        >
        <DeleteParameters>  <asp:Parameter Name="idproducto" /> </DeleteParameters>
        <UpdateParameters>  
            <asp:Parameter Name="idproducto" />
            <asp:Parameter Name="nombreproducto" />
             <asp:Parameter Name="DuracionenDias" />
             <asp:Parameter Name="idtipoproducto" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
    <asp:SqlDataSource ID="SqlDSTipoProductos" runat="server" ConnectionString="<%$ ConnectionStrings:DB_A2BDCF_coopepruebaConnectionString %>" SelectCommand="SELECT [idtipoproducto], [nombretipoproducto] FROM [tipoproductos]"></asp:SqlDataSource>
    
</asp:Content>
