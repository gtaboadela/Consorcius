<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin.Master" CodeBehind="AdminIntegridad.aspx.vb" Inherits="Consorcius.Web.AdminIntegridad" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <div class="divider-10"></div>
      <div class="form-horizontal">
      <h3>Integridad</h3>
        <asp:PlaceHolder runat="server" ID="StatusMessage" Visible="false">
            <p class="text-danger">
                <asp:Literal runat="server" ID="StatusText" />
            </p>
        </asp:PlaceHolder>
                  
         <div class="form-group col-md-4 ">
             <p> 
                 <strong> Cantidad de Registros DVH Verificados: </strong>
                 <asp:Label runat="server" ID="lblDVH"  Text="" CssClass="control-label" />

             </p>
                  
                <p> 
                 <strong> Cantidad de Registros DVV Verificados: </strong>
                 <asp:Label runat="server" ID="lblDVV"  Text="" CssClass="control-label" />

             </p>
                  
                 <p> 
                 <strong> Tiempo de Ejecucion: </strong>
                 <asp:Label runat="server" ID="lblEjecucion"  Text="" CssClass="control-label" />

             </p>
                  
            
     
         </div>

      </div>

</asp:Content>
