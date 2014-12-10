<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="RespuestaTaller.aspx.cs" Inherits="AutomotoraPrueba1.RespuestaTaller" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style4
        {
            width: 233px;
        }
        .style5
        {
            width: 438px;
        }
        .style6
        {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width:98%;">
        <tr>
            <td>
                <div id="mmRespTaller" style="height: 73px; text-align: right; background-color:#C6C6C6; width: 922px;">
                    <asp:Menu ID="MainMenu" runat="server" Orientation="Horizontal" Font-Size="X-Large" BackColor="#4b6c9e" ForeColor="White">
                        <Items>
                            <asp:MenuItem Text="HOME" NavigateUrl="~/RespuestaTaller.aspx" Value="Home.aspx"></asp:MenuItem>
                            <asp:MenuItem Text="AGREGAR" NavigateUrl="~/manejoAgregar.aspx" Value="manejoAgregar.aspx"></asp:MenuItem>
                        </Items>
                        
                        <Items>
                            <asp:MenuItem Text="BUSCAR" NavigateUrl="~/Buscar.aspx" Value="manejoBuscar.aspx"></asp:MenuItem>
                            <asp:MenuItem Text="REPORTES" NavigateUrl="~/manejoReportes.aspx" Value="manejoReportes.aspx"></asp:MenuItem>
                            </Items>
                    </asp:Menu>
                            <asp:Label ID="lblBienvenido" runat="server" style="text-align: center"></asp:Label>
                            <asp:Label ID="lblNombreUsuario" runat="server"></asp:Label>
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                Text="Cerrar sesion" Width="87px" />
                </div>
            </td>
        </tr>
        
    </table>
    <table style="width:100%;">
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                <strong><span class="style6">Bienvenido a la página principal de Taller.</span></strong><br />
                Como perfil de taller usted podrá 
                <asp:HyperLink ID="HL3" NavigateUrl="~/manejoAgregar.aspx" runat="server">agregar </asp:HyperLink> y 
                <asp:HyperLink ID="HL4" NavigateUrl="~/Buscar.aspx" runat="server">buscar </asp:HyperLink> repuestos, automóviles y 
                perfiles pertenecientes a <strong>Pereira hermanos ltda.</strong></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
