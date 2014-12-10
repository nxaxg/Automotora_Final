<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="RespuestaDistribuidora.aspx.cs" Inherits="AutomotoraPrueba1.Respuesta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style9
        {
            width: 199px;
        }
        .style10
        {
            width: 500px;
        }
        .style11
        {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width:98%;">
        <tr>
            <td>
                <div id="mmRespDist" 
                    
                    style="height: 73px; text-align: right; background-color:#C6C6C6; width: 922px;">
                    <asp:Menu ID="MainMenu" runat="server" Orientation="Horizontal" Font-Size="X-Large" BackColor="#4b6c9e" ForeColor="White">
                        <Items>
                            <asp:MenuItem Text="HOME" NavigateUrl="~/RespuestaDistribuidora.aspx" Value="Home.aspx"></asp:MenuItem>
                        </Items>
                        
                        <Items>
                            <asp:MenuItem Text="REPORTES" NavigateUrl="~/manejoReportes.aspx" Value="manejoReportes.aspx"></asp:MenuItem>
                        </Items>
                    </asp:Menu>
                            <asp:Label ID="lblBienvenido" runat="server" style="text-align: center"></asp:Label>
                            <asp:Label ID="lblNombreUsuario" runat="server"></asp:Label>
                            <asp:Button ID="btnCerrarSesion" runat="server" onclick="Button1_Click" 
                                Text="Cerrar sesion" Width="87px" />
                </div>
                <table style="width:100%;">
                    <tr>
                        <td class="style9">
                            &nbsp;</td>
                        <td class="style10">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style9">
                            &nbsp;</td>
                        <td class="style10">
                            <strong><span class="style11">Bienvenido a la página prinicipal de Distribuidora.</span></strong><br />
                            Como perfil de distribuidor usted podrá generar 
                            <asp:HyperLink ID="HL1" NavigateUrl="~/stockPorTaller.aspx" runat="server">reportes de repuestos </asp:HyperLink>y 
                            <asp:HyperLink ID="HL2" NavigateUrl="~/reporteAutomovil.aspx" runat="server">reportes de automóviles </asp:HyperLink>pertenecientes al stock de<strong> Pereira hermanos ltda.</strong></td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style9">
                            &nbsp;</td>
                        <td class="style10">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        
    </table>
</asp:Content>