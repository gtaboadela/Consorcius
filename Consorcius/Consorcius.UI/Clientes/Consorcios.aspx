<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Consorcios.aspx.vb" Inherits="MySite.Consorcios" %>

<!-- #include virtual ="../partials/_top.htm" -->

<!-- #include virtual ="partials/_topMenuClientes.htm" -->
<div id="content-wrap">
<!-- #include virtual ="partials/_sideMenuConsorcios.htm" -->
<div id="main"> 
     <form id="FormClientesConsorcios" runat ="server">
         <h1 id="CLHGHT008" runat="server">Consorcios</h1> <br/> 
     <asp:gridview ID="ConsultaConsorciosGridView" runat="server" AutoGenerateColumns="False" MaxHeight="450px" Width="622px" AllowPaging="True" PageSize="15" OnPageIndexChanging="ConsultaConsorciosGridView_PageIndexChanging" 
                 OnRowEditing="ConsultaConsorciosGridView_RowEditing" OnRowDeleting="ConsultaConsorciosGridView_RowDeleting" OnRowUpdating="ConsultaConsorciosGridView_RowUpdating"
                 OnRowCancelingEdit="ConsultaConsorciosGridView_RowCancelingEdit" 
                 CellPadding="2" ForeColor="#333333" Font-Names="Calibri" Font-Size="Small" BorderColor="#000066" BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="Left">
                 <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                 <Columns>
                     <asp:BoundField DataField="IdConsorcio" HeaderText="ID" ItemStyle-Width="3%" ApplyFormatInEditMode="True" ReadOnly="True"><ControlStyle Width="90%"/>

<ItemStyle Width="3%"></ItemStyle>
  </asp:BoundField>
                     <asp:BoundField DataField="Nombre" HeaderText="Nombre" ItemStyle-Width="26%" ApplyFormatInEditMode="True" ><ControlStyle Width="90%" />

<ItemStyle Width="26%"></ItemStyle>
                     </asp:BoundField>
                     <asp:BoundField DataField="Direccion" HeaderText="Dirección" ItemStyle-Width="20%" ApplyFormatInEditMode="True"><ControlStyle Width="90%" />

<ItemStyle Width="20%"></ItemStyle>
                     </asp:BoundField>
                     <asp:BoundField DataField="Localidad" HeaderText="Localidad" ItemStyle-Width="20%" ApplyFormatInEditMode="True"><ControlStyle Width="90%" />

<ItemStyle Width="20%"></ItemStyle>
                     </asp:BoundField>
                     <asp:BoundField DataField="CodPostal" HeaderText="C.P." ItemStyle-Width="20%" ApplyFormatInEditMode="True"><ControlStyle Width="90%" />

<ItemStyle Width="20%"></ItemStyle>
                     </asp:BoundField>
                     <asp:BoundField DataField="Telefono" HeaderText="Teléfono" ItemStyle-Width="12%" ApplyFormatInEditMode="True"><ControlStyle Width="90%" />

<ItemStyle Width="12%"></ItemStyle>
                     </asp:BoundField>
                     <asp:BoundField DataField="DiaVencimientoExpensa" HeaderText="Día Vencimiento" ItemStyle-Width="12%" ApplyFormatInEditMode="True"><ControlStyle Width="90%" />

<ItemStyle Width="12%"></ItemStyle>
                     </asp:BoundField>
                     <asp:BoundField DataField="Interes" HeaderText="Interes" ItemStyle-Width="16%" ApplyFormatInEditMode="True"><ControlStyle Width="90%" />

<ItemStyle Width="16%"></ItemStyle>
                     </asp:BoundField>
                     <asp:CommandField DeleteText="Borrar" EditText="Editar" CancelText="Cancelar" UpdateText="Ok" HeaderText="Acciones" ShowDeleteButton="True"  ShowEditButton="True"></asp:CommandField>
                     
                                         
                     <asp:TemplateField HeaderText="UF">                                             
                           <ItemTemplate> 
                         <asp:LinkButton ID ="kjkj" runat="server" OnClick="verUnidadesFuncionales" Text="UF"/>
                         </ItemTemplate> 
                     </asp:TemplateField>
                     
                    
                     
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
