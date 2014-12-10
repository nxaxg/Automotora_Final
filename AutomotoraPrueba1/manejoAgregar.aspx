<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="manejoAgregar.aspx.cs" Inherits="AutomotoraPrueba1.manejoRepuestos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
    .style3
    {
            width: 921px;
            text-align: center;
        }
        .style6
        {
            width: 104px;
        }
        .style7
        {
            width: 412px;
        }
        .style8
        {
            width: 1px;
        }
        .style9
        {
            width: 1px;
            height: 88px;
        }
        .style10
        {
            width: 921px;
            text-align: center;
            height: 88px;
        }
        .style11
        {
            height: 88px;
        }
        .style12
        {
            width: 141px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 98%;">
    <tr>
        <td class="style9">
            </td>
        <td class="style10" style="text-align: center">
            <div id="mmRespTaller" 
                
                style="height: 84px; text-align: right; background-color:#C6C6C6; width: 901px;">
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
                            &nbsp;<asp:Label ID="lblBienvenido" runat="server"></asp:Label>
            <asp:Label ID="lblNombreUsuario" runat="server"></asp:Label>
                    <asp:Button ID="btnCerrarSesion" runat="server" 
                        onclick="btnCerrarSesion_Click1" style="text-align: right" Text="Cerrar sesion" 
                        Width="86px" />
                </div></td>
        <td class="style11">
            </td>
    </tr>
    <tr>
        <td class="style8">
            &nbsp;</td>
        <td class="style3">
            <table style="width: 100%;">
                <tr>
                    <td class="style12">
                        &nbsp;</td>
                    <td class="style7">
&nbsp;&nbsp;<strong>SELECCIONE OBJETO A AGREGAR</strong></td>
                    <td class="style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style12">
                        &nbsp;</td>
                    <td class="style7">
                        &nbsp;</td>
                    <td class="style6">
                        &nbsp;</td>
                </tr>
            </table>
            <table style="width:100%;">
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="btnDirigirAAuto" runat="server" 
                            onclick="btnDirigirAStock_Click" Text="Automovil" />
                        <asp:Button ID="btnDirigirAgregarRepuestos" runat="server" 
                            onclick="btnDirigirAgregarRepuestos_Click" Text="Repuestos" />
                        <asp:Button ID="btnDirigirAgregarPerfiles" runat="server" 
                            onclick="btnDirigirAgregarPerfiles_Click" Text="Perfiles" 
                            style="text-align: justify" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
