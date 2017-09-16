<%@ Page Title="Contacto" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.vb" Inherits="Consorcius.Web.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <p>Your contact page.</p>

    <address>
        One Microsoft Way<br />
        Redmond, WA 98052-6399<br />
        <abbr title="Phone">P:</abbr>
        425.555.0100
    </address>

    <address>
        <strong>Soporte:</strong><a href="mailto:soporte@consorciusnet.com">soporte@consorciusnet.com</a><br />
        <strong>Ventas:</strong><a href="mailto:ventas@consorciusnet.com">ventas@consorciusnet.com</a>
    </address>
</asp:Content>
