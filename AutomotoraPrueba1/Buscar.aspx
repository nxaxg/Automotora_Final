<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Buscar.aspx.cs" Inherits="AutomotoraPrueba1.Buscar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style2
        {
            width: 291px;
        }
        .style3
        {
            width: 305px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width:99%;">
        <tr>
            <td>
                &nbsp;</td>
            <td style="text-align: center">
                <div id="mmRespDist" 
                    style="height: 73px; text-align: right; background-color:#C6C6C6; width: 912px;">
                    <asp:Menu ID="MainMenu1" runat="server" Orientation="Horizontal" Font-Size="X-Large" BackColor="#4b6c9e" ForeColor="White">
                        <Items>
                            <asp:MenuItem Text="HOME" NavigateUrl="~/RespuestaTaller.aspx" Value="Home.aspx"></asp:MenuItem>
                            <asp:MenuItem Text="AGREGAR" NavigateUrl="~/manejoAgregar.aspx" Value="manejoAgregar.aspx"></asp:MenuItem>
                        </Items>
                        <Items>
                            <asp:MenuItem Text="BUSCAR" NavigateUrl="~/Buscar.aspx" Value="manejoBuscar.aspx"></asp:MenuItem>
                            <asp:MenuItem Text="REPORTES" NavigateUrl="~/manejoReportes.aspx" Value="manejoReportes.aspx"></asp:MenuItem>
                            </Items>
                    </asp:Menu>
                            <asp:Label ID="lblBienvenido" runat="server"></asp:Label>
                        <asp:Label ID="lblNombreUsuario" runat="server"></asp:Label>
                <asp:Button ID="btnCerrarSesion" runat="server" onclick="btnCerrarSesion_Click" 
                    Text="Cerrar Sesion" />
                </div></td>
            <td>
                &nbsp;</td>
        </tr>
                <table style="width:99%;">
                    <tr>
                        <td class="style2">
                            &nbsp;</td>
                        <td class="style3">
                            <strong>SELECCIONE OBJETO A BUSCAR</strong></td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style2">
                            &nbsp;</td>
                        <td class="style3">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                <table style="width:99%;">
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td style="text-align: center">
                            <asp:Button ID="btnBuscarAuto" runat="server" onclick="btnBuscarAuto_Click" 
                                Text="Automovil" Width="88px" />
                            &nbsp;<asp:Button ID="btnBuscarRepuestos" runat="server" 
                                onclick="btnBuscarRepuestos_Click" Text="Repuestos" />
                            &nbsp;<asp:Button ID="btnBuscarPerfiles" runat="server" 
                                onclick="btnBuscarPerfiles_Click" Text="Perfiles" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
    </table>
</asp:Content>
