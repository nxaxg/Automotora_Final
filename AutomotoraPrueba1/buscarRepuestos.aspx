<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="buscarRepuestos.aspx.cs" Inherits="AutomotoraPrueba1.buscarRepuestos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style2
        {
            width: 433px;
            text-align: right;
        }
        .style3
        {
            width: 275px;
        }
        .style4
        {
            width: 408px;
            text-align: center;
        }
        .style6
        {
            width: 434px;
            text-align: right;
        }
        .style7
        {
            width: 435px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width:100%;">
        <tr>
            <td>
                &nbsp;</td>
            <td style="text-align: center">
                <div id="mmRespDist" 
                    
                    style="height: 73px; text-align: right; background-color:#C6C6C6; width: 920px;">
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
                <asp:Button ID="btnCerrarSesion" runat="server" onclick="btnCerrarSesion_Click" 
                    Text="Cerrar sesion" />
                </div></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <table style="width:100%;">
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style4">
                            <strong>BÚSQUEDA DE REPUESTOS</strong></td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                <table style="width:100%;">
                    <tr>
                        <td class="style2">
                            <asp:Label ID="Label1" runat="server" style="text-align: right" Text="ID"></asp:Label>
                        &nbsp;a buscar</td>
                        <td>
                            <asp:TextBox ID="txtIDBusqRepuestos" runat="server" Height="22px"></asp:TextBox>
                        &nbsp;<asp:Button ID="btnBuscarIDRep" runat="server" onclick="btnBuscarIDRep_Click" 
                                Text="Búsqueda" ValidationGroup="buscarRepuesto" />
                        &nbsp;<asp:RequiredFieldValidator ID="busRepValidaot" ControlToValidate="txtIDBusqRepuestos" runat="server" 
                                ErrorMessage="Ingrese ID a buscar" ForeColor="Red" Visible="true" ValidationGroup="buscarRepuesto">Ingrese ID a buscar</asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                <table style="width:100%;">
                    <tr>
                        <td class="style7">
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="lblControl" runat="server" style="text-align: center"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style7">
                            Nombre repuesto</td>
                        <td>
                            <asp:TextBox ID="txtResNomRep" runat="server" ReadOnly="true"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style7">
                            Marca</td>
                        <td>
                            <asp:TextBox ID="txtResMarRep" runat="server" ReadOnly="true"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                <table style="width:100%;">
                    <tr>
                        <td class="style6">
                            Calidad</td>
                        <td>
                            <asp:TextBox ID="txtResCalRep" runat="server" ReadOnly="true"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style6">
                            Origen</td>
                        <td>
                            <asp:TextBox ID="txtResOrRep" runat="server" ReadOnly="true"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style6">
                            Estado</td>
                        <td>
                            <asp:TextBox ID="txtResEstRep" runat="server" ReadOnly="true"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="text-align: center">
                <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" 
                    onclick="btnLimpiar_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
