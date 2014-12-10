<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="manejoDePerfiles.aspx.cs" Inherits="AutomotoraPrueba1.manejoDePerfiles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style3
        {
            width: 98px;
        }
        .style6
        {
            width: 361px;
            text-align: left;
        }
        .style7
        {
            width: 254px;
            text-align: right;
        }
        .style9
        {
            width: 640px;
        }
        .style10
        {
            width: 1400px;
        }
        .style11
        {
            width: 160px;
        }
        .style13
        {
            width: 222px;
        }
        .style14
        {
            width: 498px;
            text-align: center;
        }
        .style15
        {
            width: 369px;
        }
        .style17
        {
            width: 47px;
        }
        .style18
        {
            width: 252px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 97%;">
        <tr>
            <td class="style17">
                &nbsp;</td>
            <td style="text-align: center" class="style10">
                <div id="mmRespTaller" 
                style="height: 73px; text-align: right; background-color:#C6C6C6; width: 910px;">
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
                <asp:Label ID="txtBienvenido" runat="server"></asp:Label>
                <asp:Button ID="btnCerrarSesion" runat="server" onclick="btnCerrarSesion_Click" 
                    Text="Cerrar sesion" />
                            &nbsp;</div></td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
                &nbsp;</td>
            <td class="style10" style="text-align: center">
                <strong>&nbsp;&nbsp; AGREGAR PERFIL</strong></td>
            <td class="style3">
                &nbsp;</td>
        </tr>
    </table>
    <table style="width: 98%;">
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style9">
                <table style="width:100%;">
                    <tr>
                        <td class="style7">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            Usuario: </td>
                        <td class="style15">
                            <asp:TextBox ID="txtAddUsername" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="usernameValidator" ControlToValidate="txtAddUsername" runat="server" 
                                ErrorMessage="Ingrese username de perfil" ForeColor="red" Visible="true" ValidationGroup="agregarPerfil">Ingrese username de perfil</asp:RequiredFieldValidator>
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
            <td class="style11">
                &nbsp;</td>
            <td class="style9">
                <table style="width:100%;">
                    <tr>
                        <td class="style18" style="text-align: right">
                            Password:</td>
                        <td class="style6">
                            <asp:TextBox ID="txtAddPassword" runat="server" TextMode="Password" 
                    style="text-align: left; margin-left: 0px;"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="passValidator"  ControlToValidate="txtAddPassword" runat="server" 
                                ErrorMessage="Ingrese contraseña de perfil" Visible="true" ForeColor="Red" ValidationGroup="agregarPerfil">Ingrese contraseña de perfil</asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style18">
                            Tipo usuario:</td>
                        <td class="style6" style="text-align: left">
                            <asp:DropDownList ID="ddlTipoUsuario" runat="server" style="margin-left: 0px">
                                <asp:ListItem Value="1">Distribuidora</asp:ListItem>
                                <asp:ListItem Value="2">Taller</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style18">
                            &nbsp;</td>
                        <td class="style6">
                            <asp:Button ID="btnAgregar" runat="server" Text="Agregar" 
                                onclick="btnAgregar_Click" ValidationGroup="agregarPerfil" />
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <table style="width: 98%;">
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style14">
                            <asp:Label ID="lblRespuestaAgregar" runat="server"></asp:Label>
                        </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
