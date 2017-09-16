<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ResidentesHome.aspx.vb" Inherits="MySite.ResidentesHome" %>

<!-- #include virtual ="../partials/_top.htm" -->
<!-- #include virtual ="partials/_topMenuResidentes.htm" -->
<div id="content-wrap">
<!-- #include virtual ="partials/_sideMenuResidentes.htm" -->
    <div id="main"> 
        <h1>Home de Residentes - Bienvenido Usuario <%= Session("NombreUsuario").ToString%> </h1>
      <blockquote>        <p>Consultar estado de cuenta</p>      </blockquote>
      <blockquote>        <p>Consultar Expensas</p>      </blockquote>
      <blockquote>        <p>Reservar areas comunes</p>      </blockquote>
     
       <br/>  
       <br/>  <br/>  
    </div>
  </div>

    <!-- #include virtual ="../partials/_footer.htm" -->
</div>

</body>
</html>