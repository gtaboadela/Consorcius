<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AltaConsorcios.aspx.vb" Inherits="MySite.AltaConsorcios" %>

<!-- #include virtual ="../partials/_top.htm" -->

<!-- #include virtual ="partials/_topMenuClientes.htm" -->
<div id="content-wrap">
<!-- #include virtual ="partials/_sideMenuConsorcios.htm" -->
<div id="main"> 
     <h1 id="CLHGHT008" runat="server">Alta de nuevo consorcio</h1>
     <form id="FormAltaConsorcios" runat ="server">

          <div style="width=300px; height:400px; float:left;"> 
          <p class="align-left">
          <label>Nombre</label><br/><input name="Nombre"  type="text" size="30" /><br/><br/>
          <label>Direccion</label><br/><input name="Direccion"  type="text" size="30" /><br/><br/>
          <label>Localidad</label><br/><input name="Localidad"  type="text" size="30" /><br/><br/>
          <label>Codigo Postal</label><br/><input name="CodPostal"  type="text" size="30" /><br/><br/>
          <label>Telefono</label><br/><input name="Telefono"  type="text" size="30" /><br/><br/>
          <label>Dia de Vencimiento de las Expensas</label><br/><input name="DiaVencimiento"  type="text" size="30" /><br/><br/>
          <label>Interes</label><br/><input name="Interes"  type="text" size="30" />
       </p>
       <p class="align-right"> <input id="CLHXXXXX" class="button" runat="server" type="submit" value="Enviar" onserverclick=OnSubmitAltaConsorcio/></p>
   </div> 

    </form>
     <br/>  <br/>  <br/>  
    </div>
  
   
    </div>
   
    <!-- #include virtual ="../partials/_footer.htm" -->
</div>

</body>
</html>

