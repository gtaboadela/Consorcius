<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin.Master" CodeBehind="AdminBitacora.aspx.vb" Inherits="Consorcius.Web.AdminBitacora" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div class="padded">
    <asp:gridview runat="server" ID="bitacoraGridView" AutoGenerateColumns="False" AllowPaging="true" PageSize="15" OnPageIndexChanging="bitacoraGridView_PageIndexChanging" style="max-height:400px;width:1000px; margin-left: 6px; margin-right: 35px; overflow:auto"
    CellPadding="2" ForeColor="#333333" Font-Names="Calibri" Font-Size="Small" BorderColor="#000066" BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="Left">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Fecha" HeaderText="Fecha" ItemStyle-Width="15%" ItemStyle-Height="20px" HeaderStyle-Height="20px" >
                <HeaderStyle Height="20px"></HeaderStyle>
                <ItemStyle Height="20px" Width="15%"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="IdActividadTipo" HeaderText="Tipo" ItemStyle-Width="5%" ItemStyle-Height="20px" HeaderStyle-Height="20px" >
                <HeaderStyle Height="20px"></HeaderStyle>
                <ItemStyle Height="20px" Width="5%"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="IdActividadTipoDescripcion" HeaderText="Descripcion" ItemStyle-Width="15%" ItemStyle-Height="20px"  HeaderStyle-Height="20px"  >
                <HeaderStyle Height="20px"></HeaderStyle>
                <ItemStyle Height="20px" Width="15%"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="Descripcion" HeaderText="Detalle" ItemStyle-Width="65%" ItemStyle-Height="20px" HeaderStyle-Height="20px" >
                <HeaderStyle Height="20px"></HeaderStyle>
                <ItemStyle Height="20px" Width="55%"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="Usuario" HeaderText="Detalle" ItemStyle-Width="65%" ItemStyle-Height="20px" HeaderStyle-Height="20px" >
                <HeaderStyle Height="20px"></HeaderStyle>
                <ItemStyle Height="20px" Width="10%"></ItemStyle>
            </asp:BoundField>
        </Columns>
        <HeaderStyle BackColor="#577750" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" BorderColor="#000066" BorderStyle="Solid" BorderWidth="1px"/>
        <PagerSettings Mode="NumericFirstLast" />
        <PagerStyle BackColor="#577750" ForeColor="White" HorizontalAlign="Center" BorderColor="#000066" BorderStyle="Solid" BorderWidth="1px"/>
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:gridview>
</div>
  
<div class="padded" style ="float: right">
    <asp:Button runat="server" OnClick="LimpiarBitacora" Text="Limpiar" CssClass="btn btn-default" />
</div>
    
</asp:Content>
