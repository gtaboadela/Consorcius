﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="LoginResidentes.aspx.vb" Inherits="MySite.LoginResidentes" EnableViewStateMac ="False"%>

<!-- #include virtual ="partials/_top.htm" -->
<!-- #include virtual ="partials/_topMenuInst.htm" -->
  <div id="content-wrap">
 <!-- #include virtual ="partials/_sideMenuLogin.htm" -->
    <div id="main"> 
      <h1>Ingreso de Residentes</h1>
        <br />
      <p>Para comenzar, ingrese su usuario y contraseña para acceder a nuestros servicios</p>
        <br />
      <h3>Login</h3>
      <form id="FormLoginResidentes" runat ="server">
       <!-- #include virtual ="partials/_loginForm.htm" -->
    </div>
  </div>
  <!-- #include virtual ="partials/_footer.htm" -->
</div>
</body>
</html>