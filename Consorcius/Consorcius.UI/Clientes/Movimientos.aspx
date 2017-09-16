<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Movimientos.aspx.vb" Inherits="MySite.Movimientos" %>

<!-- #include virtual ="../partials/_top.htm" -->

<!-- #include virtual ="partials/_topMenuClientes.htm" -->
<div id="content-wrap">
<!-- #include virtual ="partials/_sideMenuMovimientos.htm" -->
<div id="main"> 
    
     <form id="FormMovimientos" runat ="server">
     <h1 id="CLHGHT013" runat="server">Movimientos</h1>
     <h3> <asp:dropdownlist runat="server" id="ddlConsorcios" AutoPostBack="True" OnSelectedIndexChanged="ddlConsorcios_SelectedIndexChanged"></asp:dropdownlist> </h3> 
         
            <asp:gridview ID="ConsultaEgresosGridView" runat="server" AutoGenerateColumns="False" MaxHeight="450px" Width="622px" AllowPaging="True" PageSize="15" OnPageIndexChanging="ConsultaEgresosGridView_PageIndexChanging" 
                 OnRowEditing="ConsultaEgresosGridView_RowEditing" OnRowDeleting="ConsultaEgresosGridView_RowDeleting" OnRowUpdating="ConsultaEgresosGridView_RowUpdating"
                 OnRowCancelingEdit="ConsultaEgresosGridView_RowCancelingEdit"
                 CellPadding="2" ForeColor="#333333" Font-Names="Calibri" Font-Size="Small" BorderColor="#000066" BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="Left">
                 <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                 <Columns>
                     <asp:BoundField DataField="Id" HeaderText="ID" ApplyFormatInEditMode="True" ReadOnly="True"><ControlStyle Width="90%"/><ItemStyle Width="6%"></ItemStyle></asp:BoundField>
                     <asp:BoundField DataField="Categoria" HeaderText="Categoria" ApplyFormatInEditMode="True" ><ControlStyle Width="90%" /><ItemStyle Width="10%"></ItemStyle></asp:BoundField>
                     <asp:BoundField DataField="Fecha" HeaderText="Fecha" ItemStyle-Width="10%" ApplyFormatInEditMode="True" DataFormatString="{0:MM/dd/yy}"><ControlStyle Width="90%" /><ItemStyle Width="10%"></ItemStyle></asp:BoundField>
                     <asp:BoundField DataField="Descripcion" HeaderText="Descripción"  ApplyFormatInEditMode="True"><ControlStyle Width="90%" /><ItemStyle Width="30%"></ItemStyle></asp:BoundField>
                     <asp:BoundField DataField="Recurrencia" HeaderText="Recurrencia"  ApplyFormatInEditMode="True"><ControlStyle Width="90%" /><ItemStyle Width="8%"></ItemStyle></asp:BoundField>
                     <asp:BoundField DataField="Monto" HeaderText="Monto"  ApplyFormatInEditMode="True"  ReadOnly="True" ><ControlStyle Width="90%"/><ItemStyle Width="10%"></ItemStyle></asp:BoundField>
                     <asp:BoundField DataField="Prorrateo" HeaderText="Prorrateo"  ApplyFormatInEditMode="True"  ReadOnly="True" ><ControlStyle Width="90%"/><ItemStyle Width="12%"></ItemStyle></asp:BoundField>
                     <asp:BoundField DataField="IdUsuario" HeaderText="Usuario" ApplyFormatInEditMode="True"  ReadOnly="True" ><ControlStyle Width="90%"/><ItemStyle Width="12%"></ItemStyle></asp:BoundField>
                     <asp:BoundField DataField="UnidadFuncional" HeaderText="UF"  ApplyFormatInEditMode="True"  ReadOnly="True" ><ControlStyle Width="90%"/><ItemStyle Width="8%"></ItemStyle></asp:BoundField>
                     
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


