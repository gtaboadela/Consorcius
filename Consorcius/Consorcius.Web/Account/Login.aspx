<%@ Page Title="Log in" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Login.aspx.vb" Inherits="Consorcius.Web.Login" Async="true" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>.</h2>

    <div class="row">
        <div class="col-md-8">
            <section id="loginForm">
                <div class="form-horizontal">
                    <h4>Para comenzar, ingrese su usuario y contraseña para acceder a nuestros servicios.</h4>
                    <hr />
                      <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="ctrlUsuario" CssClass="col-md-2 control-label">Usuario</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="ctrlUsuario" CssClass="form-control"/>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="ctrlUsuario"
                                CssClass="text-danger" ErrorMessage="El usuario es requerido." />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="ctrlPassword" CssClass="col-md-2 control-label">Password</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="ctrlPassword" TextMode="Password" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="ctrlPassword" CssClass="text-danger" ErrorMessage="La Password es requerida." />
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <asp:Button runat="server" OnClick="LogIn" Text="Log in" CssClass="btn btn-default" />
                        </div>
                    </div>
                </div>
             
               
            </section>
        </div>

       
    </div>
</asp:Content>
