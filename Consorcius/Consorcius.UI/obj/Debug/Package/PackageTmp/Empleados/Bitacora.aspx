<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Bitacora.aspx.vb" Inherits="MySite.EmpleadosBitacora" %>

<!-- #include virtual ="../partials/_top.htm" -->
<!-- #include virtual ="partials/_topMenuEmpleados.htm" -->

<form id="FormEmpleadosbitacora" runat ="server">
<div id="content-wrap">
<div id="sidebar">
        <h1>Operaciones Disponibles</h1>
      <ul class="sidemenu">
      <li><a id="A1" href="#" runat="server" onServerClick="borrarBitacora">Borrar Bitacora</a></li>
      <li><a>Filtrar por fecha </a>
      <br/> <br/>
           <asp:Calendar ID="bitacoraCalendario" runat="server" Align="Center" OnSelectionChanged="cambioSeleccionDia" OnDayRender="dayRender" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="99px" Width="142px">
           <DayHeaderStyle BackColor="#99CCCC" Font-Size="XX-Small" ForeColor="#336666" Height="1px" />
           <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
           <OtherMonthDayStyle ForeColor="#999999" />
           <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
           <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
           <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="XX-Small" ForeColor="#CCCCFF" Height="25px" />
           <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
           <WeekendDayStyle BackColor="#CCCCFF" />
         </asp:Calendar> <br/>
         <a>Desde: <asp:label id="bitacoraFechaDesde" runat="server" text=""></asp:label></a>
         <br/>
         <a>Hasta: <asp:label id="bitacoraFechaHasta" runat="server" text=""></asp:label></a>
         <br />
          <p class="align-right">               <input id="bitacoraLimpiarFechas" class="button" type="submit" value="Limpiar" runat="server" onserverclick=LimpiarFechas/>              <input id="bitacoraAplicarFiltro" class="button" type="submit" value="Aplicar" runat="server" onserverclick=AplicarFiltro/>          </p>    </li>    </ul>     </div>
    <div id="main"> 
         <h1>Bitacora</h1>
            
             <asp:gridview runat="server" ID="bitacoraGridView" AutoGenerateColumns="False" AllowPaging="true" PageSize="12" OnPageIndexChanging="bitacoraGridView_PageIndexChanging" style="max-height:400px;width:600px; margin-left: 6px; margin-right: 35px; overflow:auto"
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

<ItemStyle Height="20px" Width="65%"></ItemStyle>
                      </asp:BoundField>
                 </Columns>

                 <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                 <PagerSettings Mode="NumericFirstLast" />
                 <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                 <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                
                 

             </asp:gridview>
          </form>
        

      <br/>  <br/>  <br/>  
    </div>
  </div>

    <!-- #include virtual ="../partials/_footer.htm" -->
</div>

</body>
</html>

