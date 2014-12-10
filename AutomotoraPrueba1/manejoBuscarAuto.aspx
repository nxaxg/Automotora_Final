<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="manejoBuscarAuto.aspx.cs" Inherits="AutomotoraPrueba1.manejoBuscarAuto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style2
        {
            width: 76px;
            text-align: right;
        }
        .style3
        {
            width: 447px;
            text-align: right;
        }
        .style5
        {
            width: 447px;
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
                    
                    style="height: 73px; text-align: right; background-color:#C6C6C6; width: 915px;">
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
                <asp:Button ID="btnCerrarSesion" runat="server" style="text-align: center" 
                    Text="Cerrar sesion" Width="86px" OnClick="btnBuscarAuto_Click" />
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
                        <td style="text-align: center">
                            <strong>BUSCAR AUTOMOVIL</strong></td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                <table style="width:100%;">
                    <tr>
                        <td class="style3">
                            VIN A BUSCAR</td>
                        <td>
                            <asp:TextBox ID="txtVinABuscar" runat="server"></asp:TextBox>
                            &nbsp;
                            <asp:Button ID="btnBuscarAuto" runat="server" onclick="btnBuscarAuto_Click" 
                                Text="Buscar" ValidationGroup="buscarAuto" />
                        &nbsp;<asp:RequiredFieldValidator ID="busAutoValidator" ControlToValidate="txtVinABuscar" runat="server" 
                                ErrorMessage="Ingrese VIN a buscar" ForeColor="Red" Visible="true" ValidationGroup="buscarAuto">Ingrese VIN a buscar</asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="lblControl" runat="server"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">
                            MARCA</td>
                        <td>
                            <asp:TextBox ID="txtMarcaRes" runat="server" style="margin-left: 0px" ReadOnly="true"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                <table style="width:100%;">
                    <tr>
                        <td class="style3">
                            MODELO</td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txtModeloRes" runat="server" ReadOnly="true"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">
                            AÑO</td>
                        <td>
                            <asp:TextBox ID="txtAñoRes" runat="server" ReadOnly="true"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style5">
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="btnLimpiar" runat="server" onclick="btnLimpiar_Click" 
                                style="text-align: center" Text="Limpiar" />
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
