<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="UnidadesFuncionales.aspx.vb" Inherits="MySite.UnidadesFuncionales" %>

<!-- #include virtual ="../partials/_top.htm" -->

<!-- #include virtual ="partials/_topMenuClientes.htm" -->
<div id="content-wrap">
<!-- #include virtual ="partials/_sideMenuUnidadesFuncionales.htm" -->
<div id="main"> 
  
     <form id="FormUnidadesFuncionales" runat ="server">
     <h1 id="CLHGHT013" runat="server">Unidades Funcionales</h1>
     <h3><asp:dropdownlist runat="server" id="ddlConsorcios" AutoPostBack="True" OnSelectedIndexChanged="ddlConsorcios_SelectedIndexChanged"></asp:dropdownlist></h3> 
     <asp:gridview ID="ConsultaUnidadesFuncionalesGridView" runat="server" AutoGenerateColumns="False" MaxHeight="450px" Width="622px" AllowPaging="True" PageSize="15" OnPageIndexChanging="ConsultaUnidadesFuncionalesGridView_PageIndexChanging" 
                 OnRowEditing="ConsultaUnidadesFuncionalesGridView_RowEditing" OnRowDeleting="ConsultaUnidadesFuncionalesGridView_RowDeleting" OnRowUpdating="ConsultaUnidadesFuncionalesGridView_RowUpdating"
                 OnRowCancelingEdit="ConsultaUnidadesFuncionalesGridView_RowCancelingEdit"
                 CellPadding="2" ForeColor="#333333" Font-Names="Calibri" Font-Size="Small" BorderColor="#000066" BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="Left">
                 <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                 <Columns>
                     <asp:BoundField DataField="IdUnidadFuncional" HeaderText="ID" ItemStyle-Width="6%" ApplyFormatInEditMode="True" ReadOnly="True"><ControlStyle Width="90%"/><ItemStyle Width="6%"></ItemStyle></asp:BoundField>
                     <asp:BoundField DataField="Nombre" HeaderText="Nombre" ItemStyle-Width="8%" ApplyFormatInEditMode="True" ><ControlStyle Width="90%" /><ItemStyle Width="8%"></ItemStyle></asp:BoundField>
                     <asp:BoundField DataField="Descripcion" HeaderText="Descripción" ItemStyle-Width="30%" ApplyFormatInEditMode="True"><ControlStyle Width="90%" /><ItemStyle Width="30%"></ItemStyle></asp:BoundField>
                     <asp:BoundField DataField="MetrosCuadrados" HeaderText="M2" ItemStyle-Width="8%" ApplyFormatInEditMode="True"><ControlStyle Width="90%" /><ItemStyle Width="8%"></ItemStyle></asp:BoundField>
                     <asp:BoundField DataField="CoeficienteProrrateo" HeaderText="C.P." ItemStyle-Width="8%" ApplyFormatInEditMode="True"><ControlStyle Width="90%" /><ItemStyle Width="8%"></ItemStyle></asp:BoundField>
                     <asp:BoundField DataField="IdPropietario" HeaderText="Propietario" ItemStyle-Width="20%" ApplyFormatInEditMode="True"  ReadOnly="True" ><ControlStyle Width="90%"/><ItemStyle Width="20%"></ItemStyle></asp:BoundField>
                     <asp:BoundField DataField="IdInquilino" HeaderText="Inquilino" ItemStyle-Width="20%" ApplyFormatInEditMode="True"  ReadOnly="True" ><ControlStyle Width="90%"/><ItemStyle Width="20%"></ItemStyle></asp:BoundField>
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

