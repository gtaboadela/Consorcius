<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin.Master" CodeBehind="AdminRestore.aspx.vb" Inherits="Consorcius.Web.AdminRestore" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

   <div class="form-horizontal">
       <h2 id="ADM-RST-TIT-001"> Últimos Backups </h2>
    
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
      <h3 id="ADM-RST-TIT-002">Restore</h3>
        <asp:PlaceHolder runat="server" ID="StatusMessage" Visible="false">
            <p class="text-danger">
                <asp:Literal runat="server" ID="StatusText" />
            </p>
        </asp:PlaceHolder>
                  
         <div class="form-group col-xs-4 col-md-4 ">
            <asp:Label runat="server" AssociatedControlID="txtNombrerestore" CssClass="control-label" >Nombre del Backup a restaurar</asp:Label>
            <asp:TextBox runat="server" ID="txtNombreRestore" CssClass="form-control"  />
             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtNombreRestore" CssClass="text-danger" ErrorMessage="El nombre es requerido." />
         </div>
         <div class="form-group col-xs-4 col-md-4">
             <asp:Label runat="server" AssociatedControlID="txtPathRestore" CssClass="control-label">Path</asp:Label>
             <asp:TextBox runat="server" ID="txtPathRestore"  CssClass="form-control"  />
             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPathRestore" CssClass="text-danger" ErrorMessage="El Path es requerido." />
     
         </div>
         <div class="form-group col-xs-4 col-md-4-bottom">
           <asp:Button runat="server" OnClick="RealizarRestore" Text="Restaurar" CssClass="btn btn-default" />
        </div>
      </div>

</asp:Content>
