<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ConsultaClientes.aspx.vb" Inherits="MySite.EmpleadosConsultaClientes" %>

<!-- #include virtual ="../partials/_top.htm" -->
<!-- #include virtual ="partials/_topMenuEmpleados.htm" -->
<div id="content-wrap">
<!-- #include virtual ="partials/_sideMenuABMEmpleados.htm" -->
    <div id="main"> 
         <h1>Consulta de Clientes</h1>

         <form id="FormConsultaClientes" runat ="server">
             <asp:gridview ID="ConsultaClientesGridView" runat="server" AutoGenerateColumns="False" MaxHeight="450px" Width="610px" AllowPaging="true" PageSize="15" OnPageIndexChanging="ConsultaClientesGridView_PageIndexChanging" 
                 OnRowEditing="ConsultaClientesGridView_RowEditing" OnRowDeleting="ConsultaClientesGridView_RowDeleting" OnRowUpdating="ConsultaClientesGridView_RowUpdating"
                 OnRowCancelingEdit="ConsultaClientesGridView_RowCancelingEdit"
                 CellPadding="2" ForeColor="#333333" Font-Names="Calibri" Font-Size="Small" BorderColor="#000066" BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="Left">
                 <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                 <Columns>
                     <asp:BoundField DataField="IDCliente" HeaderText="ID" ItemStyle-Width="3%" ApplyFormatInEditMode="True" ReadOnly="True"><ControlStyle Width="90%"/></asp:BoundField>
                     <asp:BoundField DataField="Nombre" HeaderText="Razón social" ItemStyle-Width="26%" ApplyFormatInEditMode="True" ><ControlStyle Width="90%" /></asp:BoundField>
                     <asp:BoundField DataField="FechaAlta" HeaderText="Alta" ItemStyle-Width="10%" ApplyFormatInEditMode="True" DataFormatString="{0:MM/dd/yy}"><ControlStyle Width="90%" /> </asp:BoundField>
                     <asp:BoundField DataField="Direccion" HeaderText="Dirección" ItemStyle-Width="20%" ApplyFormatInEditMode="True"><ControlStyle Width="90%" /></asp:BoundField>
                     <asp:BoundField DataField="Telefono" HeaderText="Teléfono" ItemStyle-Width="12%" ApplyFormatInEditMode="True"><ControlStyle Width="90%" /></asp:BoundField>
                     <asp:BoundField DataField="Cuit" HeaderText="Cuit" ItemStyle-Width="16%" ApplyFormatInEditMode="True"><ControlStyle Width="90%" /></asp:BoundField>
                     <asp:BoundField DataField="UsuarioAdministrador" HeaderText="Administrador" ItemStyle-Width="13%" ApplyFormatInEditMode="True" ReadOnly="True"></asp:BoundField>
                     <asp:CommandField DeleteText="Borrar" EditText="Editar" CancelText="Cancelar" UpdateText="Ok" HeaderText="Acciones" ShowDeleteButton="True"  ShowEditButton="True"></asp:CommandField>
                 </Columns>
                 <EditRowStyle BackColor="#999999"  Font-Names="Calibri" Font-Size="X-Small" Wrap="False" />
                 <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                 <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" Height ="15px" />
                 <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                 <RowStyle BackColor="#F7F6F3" ForeColor="#333333"/>
                 <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" Font-Size="Small" />
                 <SortedAscendingCellStyle BackColor="#E9E7E2" />
                 <SortedAscendingHeaderStyle BackColor="#506C8C" />
                 <SortedDescendingCellStyle BackColor="#FFFDF8" />
                 <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
             </asp:gridview>
         </form>

      <br/>  <br/>  <br/>  
    </div>
  </div>

    <!-- #include virtual ="../partials/_footer.htm" -->
</div>

</body>
</html>

