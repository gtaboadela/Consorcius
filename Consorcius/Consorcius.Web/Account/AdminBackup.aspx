<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin.Master" CodeBehind="AdminBackup.aspx.vb" Inherits="Consorcius.Web.AdminBackup1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

   <div class="form-horizontal">
       <h2> Últimos Backups </h2>
    
     <div class="padded">
    <asp:gridview runat="server" ID="backupGridView" AutoGenerateColumns="False" AllowPaging="true" PageSize="10" OnPageIndexChanging="backupGridView_PageIndexChanging" style="max-height:400px;width:1000px; margin-left: 6px; margin-right: 35px; overflow:auto"
    CellPadding="2" ForeColor="#333333" Font-Names="Calibri" Font-Size="Small" BorderColor="#000066" BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="Left">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Fecha" HeaderText="Fecha" ItemStyle-Width="15%" ItemStyle-Height="20px" HeaderStyle-Height="20px" >
                <HeaderStyle Height="20px"></HeaderStyle>
                <ItemStyle Height="20px" Width="15%"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" ItemStyle-Width="15%" ItemStyle-Height="20px" HeaderStyle-Height="20px" >
                <HeaderStyle Height="20px"></HeaderStyle>
                <ItemStyle Height="20px" Width="15%"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="Path" HeaderText="Path" ItemStyle-Width="30%" ItemStyle-Height="20px"  HeaderStyle-Height="20px"  >
                <HeaderStyle Height="20px"></HeaderStyle>
                <ItemStyle Height="20px" Width="30%"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" ItemStyle-Width="40%" ItemStyle-Height="20px" HeaderStyle-Height="20px" >
                <HeaderStyle Height="20px"></HeaderStyle>
                <ItemStyle Height="20px" Width="40%"></ItemStyle>
            </asp:BoundField>
            
        </Columns>
        <HeaderStyle BackColor="#577750" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" BorderColor="#000066" BorderStyle="Solid" BorderWidth="1px"/>
        <PagerSettings Mode="NumericFirstLast" />
        <PagerStyle BackColor="#577750" ForeColor="White" HorizontalAlign="Center" BorderColor="#000066" BorderStyle="Solid" BorderWidth="1px"/>
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:gridview>
      <hr/>   <hr/>
</div>
       </div>



         <div class="divider-10"></div>
        <div class="form-horizontal">
      <h3> Nuevo Backup</h3>
            <asp:PlaceHolder runat="server" ID="StatusMessage" Visible="false">
            <p class="text-danger">
                <asp:Literal runat="server" ID="StatusText" />
            </p>
        </asp:PlaceHolder>
            
         <div class="form-group col-xs-4 col-md-4">
            <asp:Label runat="server" AssociatedControlID="txtNombreBackup" CssClass="control-label" >Nombre del Backup</asp:Label>
            <asp:TextBox runat="server" ID="txtNombreBackup" CssClass="form-control"  />
             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtNombreBackup" CssClass="text-danger" ErrorMessage="El nombre es requerido." />
         </div>
         <div class="form-group col-xs-4 col-md-4">
             <asp:Label runat="server" AssociatedControlID="txtPathBackup" CssClass="control-label">Path</asp:Label>
             <asp:TextBox runat="server" ID="txtPathBackup"  CssClass="form-control"  />
             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPathBackup" CssClass="text-danger" ErrorMessage="El Path es requerido." />
     
         </div>
         <div class="form-group col-xs-4 col-md-4">
            <asp:Label runat="server" AssociatedControlID="txtDescripcionBackup" CssClass="control-label">Descripción</asp:Label>
            <asp:TextBox runat="server" ID="txtDescripcionBackup" CssClass="form-control"/>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDescripcionBackup" CssClass="text-danger" ErrorMessage="La Descripcion es requerida." />
        </div>
         <div class="form-group col-xs-11 col-md-11">
             <asp:Button runat="server" OnClick="RealizarBackup" Text="Realizar Backup" CssClass="btn btn-default pull-right" />
         </div>
            </div>
</div>

</asp:Content>
