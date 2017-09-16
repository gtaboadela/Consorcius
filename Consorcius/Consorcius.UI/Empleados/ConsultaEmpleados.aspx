<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ConsultaEmpleados.aspx.vb" Inherits="MySite.EmpleadosConsulta" EnableEventValidation="False" %>
<!-- #include virtual ="../partials/_top.htm" -->
<!-- #include virtual ="partials/_topMenuEmpleados.htm" -->
<div id="content-wrap">
<!-- #include virtual ="partials/_sideMenuABMEmpleados.htm" -->
    <div id="main"> 
         <h1>Consulta de empleados</h1>

         <form id="FormLoginClientes" runat ="server">
             <asp:gridview ID="ConsultaGridView" runat="server" AutoGenerateColumns="False" MaxHeight="450px" Width="600px" 
                 OnRowEditing="ConsultaGridView_RowEditing" OnRowDeleting="ConsultaGridView_RowDeleting" OnRowUpdating="ConsultaGridView_RowUpdating"
                 OnRowCancelingEdit="ConsultaGridView_RowCancelingEdit"
                 CellPadding="2" ForeColor="#333333" Font-Names="Calibri" Font-Size="Small" BorderColor="#000066" BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="Left">
                 <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                 <Columns>
                     <asp:BoundField DataField="nombre" HeaderText="Nombre" ItemStyle-Width="15%" ApplyFormatInEditMode="True" ><ControlStyle Width="75px" />

<ItemStyle Width="15%"></ItemStyle>
                     </asp:BoundField>
                     <asp:BoundField DataField="apellido" HeaderText="Apellido" ItemStyle-Width="15%" ApplyFormatInEditMode="True"><ControlStyle Width="75px" />

<ItemStyle Width="15%"></ItemStyle>
                     </asp:BoundField>
                     <asp:BoundField DataField="usuario" HeaderText="Usuario" ItemStyle-Width="15%" ApplyFormatInEditMode="True"><ControlStyle Width="75px" />

<ItemStyle Width="15%"></ItemStyle>
                     </asp:BoundField>
                     <asp:BoundField DataField="cuit" HeaderText="CUIL" ItemStyle-Width="15%" ApplyFormatInEditMode="True"><ControlStyle Width="75px" />

<ItemStyle Width="15%"></ItemStyle>
                     </asp:BoundField>
                     <asp:BoundField DataField="email" HeaderText="Email" ItemStyle-Width="40%" ApplyFormatInEditMode="True"><ControlStyle Width="200px" />

<ItemStyle Width="40%"></ItemStyle>
                     </asp:BoundField>
                     <asp:CommandField DeleteText="Borrar" EditText="Editar" CancelText="Cancelar" UpdateText="Ok" HeaderText="Acciones" ShowDeleteButton="True"  ShowEditButton="True"></asp:CommandField>
                 </Columns>
                 <EditRowStyle BackColor="#999999"  Font-Names="Calibri" Font-Size="X-Small" Wrap="False" />
                 <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                 <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                 <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                 <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
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
