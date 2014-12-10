<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="buscarPerfiles.aspx.cs" Inherits="AutomotoraPrueba1.buscarPerfiles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style2
        {
            width: 298px;
            text-align: right;
        }
        .style3
        {
            width: 256px;
            text-align: center;
        }
        .style4
        {
            width: 388px;
            text-align: right;
        }
        .style5
        {
            width: 401px;
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
                    
                    style="height: 73px; text-align: right; background-color:#C6C6C6; width: 918px;">
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
                <asp:Button ID="btnCerrarSesion" runat="server"  onclick="btnCerrarSesion_Click" 
                    Text="Cerrar sesion" Width="97px" />
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
                        <td class="style2">
                            &nbsp;</td>
                        <td class="style3">
                            <strong>BUSCAR PERFIL</strong></td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                <table style="width:100%;">
                    <tr>
                        <td class="style4">
                            Username a buscar:</td>
                        <td>
                            <asp:TextBox ID="txtbuscarUsuario" runat="server" style="text-align: center"></asp:TextBox>
                            &nbsp;
                            <asp:Button ID="btnBuscarUsuario" runat="server" Text="Buscar" 
                                onclick="btnBuscarUsuario_Click" ValidationGroup="buscarPerfil" />
                            &nbsp;<asp:RequiredFieldValidator ID="busUsernameValidator" ControlToValidate="txtbuscarUsuario" runat="server" 
                                ErrorMessage="Ingrese username a buscar" Visible="true" ForeColor="Red" ValidationGroup="buscarPerfil">Ingrese username a buscar</asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4">
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="lblControlBusquedaPerfil" runat="server"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4">
                            <asp:Label ID="Label1" runat="server" Text="Username:" ReadOnly="true"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtUserBuscar" runat="server" ReadOnly="true"></asp:TextBox>
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
    <table style="width:100%;">
        <tr>
            <td class="style5">
                            <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
                        </td>
            <td>
                            <asp:TextBox ID="txtPassBuscar" runat="server" ReadOnly="true"></asp:TextBox>
                        </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                            <asp:Label ID="Label3" runat="server" Text="Tipo Permiso:"></asp:Label>
                        </td>
            <td>
                            <asp:TextBox ID="txtTipoBuscar" runat="server" ReadOnly="true"></asp:TextBox>
                        </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td style="text-align: left">
                <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" 
                    onclick="btnLimpiar_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
