<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AltaEgreso.aspx.vb" Inherits="MySite.AltaEgreso" %>

<!-- #include virtual ="../partials/_top.htm" -->

<!-- #include virtual ="partials/_topMenuClientes.htm" -->
<div id="content-wrap">
<!-- #include virtual ="partials/_sideMenuMovimientos.htm" -->
<div id="main"> 
     <h1 id="CLHGHT008" runat="server">Alta de nuevo egreso</h1>
     <form id="FormAltaEgreso" runat ="server">

          <div style="width=300px; height:400px; float:left;"> 
          <p class="align-left">

         <label>Categoria</label><br/><select name="egresoCategoria">
                                            <option value="1">Prestaciones</option>
                                            <option value="2">Obras y mantenimiento</option>
                                            <option value="3">Gastos Administrativos</option>
                                            <option value="4">Gastos Varios</option>
                                    </select><br/><br/>
          <label>Descripción</label><br/><input name="egresoDescripcion"  type="text" size="30" /><br/><br/>
          <label>Categoria</label><br/><select name="egresoRecurrencia">
                                            <option value="1">No recurrente</option>
                                            <option value="2">Mensual</option>
                                            <option value="3">Bimestral</option>
                                            <option value="4">Trimestral</option>
                                            <option value="5">Semestral</option>
                                            <option value="6">Anual</option>
                                    </select><br/><br/>
          <label>Monto</label><br/><input name="egresoMonto"  type="text" size="30" /><br/><br/>
          <label>Fecha</label><br/><input name="egresoFecha"  type="text" size="30" /><br/><br/>
          <label>Prorrateo</label><br/><asp:dropdownlist runat="server" name ="egresoProrrateo" id ="ddlProrrateo" AutoPostBack="True" OnSelectedIndexChanged="ddlProrrateo_SelectedIndexChanged">
                                       <asp:ListItem Selected="True" Value="1">Proporcional</asp:ListItem>
                                       <asp:ListItem Value="2">Comun</asp:ListItem>
                                       <asp:ListItem Value="3">Particular</asp:ListItem>
                                       </asp:dropdownlist><br/><br/>
                             
              
          <label>Unidad Funcional</label><br/><asp:dropdownlist runat="server" name ="egresoUnidadFuncional" id ="ddlUnidadesFuncionales" enabled ="false"></asp:dropdownlist><br/><br/>
          <label>Comprobante</label><input name="egresoComprobante"  type="checkbox"/><br/><br/>
        
   
          
       </p>
       <p class="align-right"> <input id="CLHXXXXX" class="button" runat="server" type="submit" value="Enviar" onserverclick=OnSubmitAltaEgreso/></p>
   </div> 

    </form>
     <br/>  <br/>  <br/>  
    </div>
  
   
    </div>
   
    <!-- #include virtual ="../partials/_footer.htm" -->
</div>

</body>
</html>
