<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="Consorcius.Web._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <div class="jumbotron">
        <h2>Lo Querés Simple. Hacelo Simple.</h2>
      <p class="text-justify"><strong>Consorcius.net</strong> es una plataforma para Administradores de Consorcios desarrollada con las últimas tecnologías, lo que permite que la interación con el sistema sea muy sencilla</p>
      <p class="text-justify">Con sólo contactarse con nosotros ya puede empezar a utilizar el sistema personalizado con la información de sus consorcios.</p>
       <blockquote>
        <p>Sin necesidad de instalación ni hardware dedicado</p>
      </blockquote>
      <blockquote>
        <p>Sistema intuitivo, muy fácil de usar</p>
      </blockquote>
      <blockquote>
        <p>Bajo costo de servicio mensual, pagás de acuerdo a lo que usás.</p>
      </blockquote>
      <blockquote>
        <p>Sistema 100% Online</p>
      </blockquote>
      
     
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2 class ="centered">Básico</h2>
                <p class ="text-center" > Pensado para los consorcios pequeños!</p>
                <img class ="centered" src="/Content/images/basico.gif" width="167" height="130" />
                <p class ="text-center">
                 <a class="btn btn-default" href="/Contact.aspx">Mas Info &raquo;</a>
                </p>
        </div>
        <div class="col-md-4">
            <h2 class ="centered">Básico+</h2> 
            <p class ="text-center" > Nuestra propuesta mas versátil, para todos y todas.</p>
            <img class ="centered" src="/Content/images/basicoplus.gif" width="167" height="130" />
            <p class ="text-center">
                <a class="btn btn-default" href="/Contact.aspx">Mas Info &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2 class ="centered">Premium</h2>
            <p class ="text-center" > Acceso sin limites, para consorcistas ambiciosos.</p>
            <img class ="centered" src="/Content/images/premium.gif" width="167" height="130" />
            <p class ="text-center">
                <a class="btn btn-default" href="/Contact.aspx">Mas Info &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
