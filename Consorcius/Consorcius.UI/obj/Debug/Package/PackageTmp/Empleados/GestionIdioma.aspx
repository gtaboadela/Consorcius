<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="GestionIdioma.aspx.vb" Inherits="MySite.EmpleadosIdioma" %>

<!-- #include virtual ="../partials/_top.htm" -->
<!-- #include virtual ="partials/_topMenuEmpleados.htm" -->
<div id="content-wrap">
<!-- #include virtual ="partials/_sideMenuEmpleados.htm" -->
<form id="FormEmpleadosIdioma" runat ="server">
<div id="main"> 
         <h1>Administracion de Idiomas</h1>
         <h3>Etiquetas disponibles:</h3>
    <div style ="height:200px; width:617px;">
         <asp:gridview runat="server" ID="idiomaGridView" AutoGenerateColumns="False" Width="600px" max-width="600px" AllowPaging="True" ShowFooter = "True"  PageSize="15" OnPageIndexChanging="idiomaGridView_PageIndexChanging" style="margin-left: 6px; margin-right: 35px"
          OnRowEditing="idiomaGridView_RowEditing" OnRowDeleting="idiomaGridView_RowDeleting" OnRowUpdating="idiomaGridView_RowUpdating" OnRowCancelingEdit="idiomaGridView_RowCancelingEdit"
           CellPadding="2" ForeColor="#333333" Font-Names="Calibri" Font-Size="Small" BorderColor="#000066" BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="Left">
          <AlternatingRowStyle BackColor="White" ForeColor="#284775"  />
          <Columns>
              <asp:TemplateField HeaderText="Id Etiqueta" ItemStyle-Width = "12%" >
                  
                  <EditItemTemplate>
                      <asp:TextBox ID="txtIdEtiqueta" width="12%" runat="server" Text='<%# Bind("IdEtiqueta") %>'></asp:TextBox>
                  </EditItemTemplate>
                  <FooterTemplate>
                      <asp:TextBox ID="txtIdEtiqueta" width="100%" runat="server"></asp:TextBox>
                  </FooterTemplate>
                  <ItemTemplate>
                      <asp:Label ID="lblIdEtiqueta" width="12%" runat="server" Text='<%# Bind("IdEtiqueta") %>'></asp:Label>
                  </ItemTemplate>

               </asp:TemplateField>

              <asp:TemplateField HeaderText="Idioma"  ItemStyle-Width = "8%">
                  
                  <EditItemTemplate>
                      <asp:TextBox ID="txtIdioma" width="8%" runat="server" Text='<%# Bind("Idioma") %>'></asp:TextBox>
                  </EditItemTemplate>
                  <FooterTemplate>
                      <asp:TextBox ID="txtIdioma" width="100%" runat="server" ></asp:TextBox>
                  </FooterTemplate>
                  <ItemTemplate>
                      <asp:Label ID="lblIdioma" width="8%" runat="server" Text='<%# Bind("Idioma") %>'></asp:Label>
                  </ItemTemplate>
                 
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Texto" ItemStyle-Width = "25%" >
                  
                  <EditItemTemplate>
                      <asp:TextBox ID="txtTexto" runat="server" Text='<%# Bind("Texto") %>' ></asp:TextBox>
                  </EditItemTemplate>
                  <FooterTemplate>
                      <asp:TextBox ID="txtTexto" runat="server" ></asp:TextBox>
                  </FooterTemplate>
                  <ItemTemplate>
                      <asp:Label ID="lblTexto" runat="server" Text='<%# Bind("Texto") %>'></asp:Label>
                  </ItemTemplate>
               
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Descripcion" ItemStyle-Width = "35%" >
                     <EditItemTemplate>
                      <asp:TextBox ID="txtDescripcion" runat="server" Text='<%# Bind("Descripcion") %>'></asp:TextBox>
                  </EditItemTemplate>
                  <FooterTemplate>
                      <asp:TextBox ID="txtDescripcion" runat="server" ></asp:TextBox>
                  </FooterTemplate>
                  <ItemTemplate>
                      <asp:Label ID="lblDescripcion" runat="server" Text='<%# Bind("Descripcion") %>' ></asp:Label>
                  </ItemTemplate>
                              </asp:TemplateField>
              <asp:TemplateField HeaderText="Acciones" ShowHeader="False" >
                  
                  <EditItemTemplate>
                      <asp:LinkButton ID="lnkUpdate" runat="server" CausesValidation="True" CommandName="Update" Text="Ok"></asp:LinkButton>
                      &nbsp;<asp:LinkButton ID="lnkCancel" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar"></asp:LinkButton>
                  </EditItemTemplate>
                   <ItemTemplate>
                      <asp:LinkButton ID="lnkEditar" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar"></asp:LinkButton>
                      &nbsp;<asp:LinkButton ID="lnkBorrar" runat="server" CausesValidation="False" CommandName="Delete" Text="Borrar"></asp:LinkButton>
                  </ItemTemplate>
                  <FooterTemplate>
                  <asp:LinkButton ID="lnkAgregar" runat="server" Text="Agregar" OnClick = "agregarEtiqueta" />
                   </FooterTemplate>
                 </asp:TemplateField>
          </Columns>
           <EditRowStyle BackColor="#999999"  Font-Names="Calibri" Font-Size="X-Small" Wrap="False" />
           <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
           <PagerSettings Mode="NumericFirstLast" />
           <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
           <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
           
          </asp:gridview>
        </div>
         
     </form>
      <br/>  
      <br/>  <br/>  
    </div>
  </div>

    <!-- #include virtual ="../partials/_footer.htm" -->
</div>

</body>
</html>

