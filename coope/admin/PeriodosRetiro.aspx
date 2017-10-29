<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin/admin.Master" CodeBehind="PeriodosRetiro.aspx.vb" Inherits="coope.PeriodosRetiro" %>
<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <div id="main-header" class="page-header">
      <span class="titular1 block linea1bottom"> <asp:Label runat="server" ID="lbltitulo" Text ="Periodos Retiro"></asp:Label><br/></span>
    </div>  

    
    <div id="main-content">       
        </div>
           <div class="row-fluid">
               <div class="span12 widget">
                    <div class="widget-header">
                        <span class="title"></span>
					</div>

                   	<div class="widget-content form-container">
                       </div> 

 <dx:ASPxGridView ID="ASPxGridView1" runat="server"  AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="IdPeriodoRetiro" Theme="Moderno">
     <SettingsDataSecurity AllowDelete="true"  AllowEdit="true" AllowInsert="true"  />
    
    
        

     
     <Columns>
         <dx:GridViewCommandColumn ShowEditButton ="true"  ></dx:GridViewCommandColumn>
         <dx:GridViewDataTextColumn FieldName="IdPeriodoRetiro" ReadOnly="True" VisibleIndex="0">
             <EditFormSettings Visible="False" />
         </dx:GridViewDataTextColumn>
         <dx:GridViewDataTextColumn FieldName="nombreproducto" VisibleIndex="1">
         </dx:GridViewDataTextColumn>
         <dx:GridViewDataDateColumn FieldName="FechaDesde" VisibleIndex="2">
         </dx:GridViewDataDateColumn>
         <dx:GridViewDataDateColumn FieldName="FechaHasta" VisibleIndex="3">
         </dx:GridViewDataDateColumn>
     </Columns>
                    </dx:ASPxGridView>
                                     <asp:SqlDataSource ID="SqlDataSource1" runat="server"  DeleteCommand="delete from PeriodosRetiro where IdPeriodoRetiro = @idperiodoRetiro 
" SelectCommand="select IdPeriodoRetiro , nombreproducto , FechaDesde , FechaHasta  from PeriodosRetiro  as a inner join productos as b on a.idproducto = b.idproducto " UpdateCommand="update PeriodosRetiro set FechaDesde = @fechaDesde , FechaHasta = @fechaHasta where IdPeriodoRetiro = @idPeriodoRetiro">
                                         <DeleteParameters>
                                             <asp:Parameter Name="idperiodoRetiro" />
                                         </DeleteParameters>
                                         <UpdateParameters>
                                             <asp:Parameter Name="fechaDesde" />
                                             <asp:Parameter Name="fechaHasta" />
                                             <asp:Parameter Name="idPeriodoRetiro" />
                                         </UpdateParameters>
                    </asp:SqlDataSource> 


                </div> 
            </div>
    

</asp:Content>
