<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AltaUnidadFuncional.aspx.vb" Inherits="MySite.AltaUnidadFuncional" %>

<!-- #include virtual ="../partials/_top.htm" -->

<!-- #include virtual ="partials/_topMenuClientes.htm" -->
<div id="content-wrap">
<!-- #include virtual ="partials/_sideMenuConsorcios.htm" -->
<div id="main" style="height:450px;"> 
     <h1 id="CLHGHT008" runat="server">Alta de nueva unidad funcional | "<% Response.Write(Session("nombreConsorcio"))%>"</h1>
     <form id="FormAltaUnidadFuncional" runat ="server">

          <div style="width=300px; height:400px; float:left;"> 
          <p class="align-left">
          <label>Nombre</label><br/><input name="Nombre"  type="text" size="30" /><br/><br/>
          <label>Descripcion</label><br/><input name="Descripcion"  type="text" size="30" /><br/><br/>
          <label>Coeficiente de Prorrateo</label><br/><input name="CoeficienteProrrateo"  type="text" size="30" /><br/><br/>
          <label>Metros Cuadrados</label><br/><input name="MetrosCuadrados"  type="text" size="30" /><br/><br/>
          </p>
       <p class="align-right"> <input id="CLHXXXXX" class="button" runat="server" type="submit" value="Enviar" onserverclick=OnSubmitAltaUnidadFuncional/></p>
   </div> 

    </form>
     <br/>  <br/>  <br/>  
    </div>
  
   
    </div>
   
    <!-- #include virtual ="../partials/_footer.htm" -->
</div>

</body>
</html>

