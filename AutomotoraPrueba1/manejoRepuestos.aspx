<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="manejoRepuestos.aspx.cs" Inherits="AutomotoraPrueba1.manejoRepuestos1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style2
        {
            width: 67px;
        }
        .style4
        {
            width: 441px;
            text-align: right;
        }
        .style5
        {
            width: 385px;
        }
        .style6
        {
            width: 442px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 98%;">
    <tr>
        <td>
            &nbsp;</td>
        <td style="text-align: center">
            <div id="mmRespTaller" 
                style="height: 73px; text-align: right; background-color:#C6C6C6; width: 912px;">
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
                </div></td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <table style="width: 100%;">
                <tr>
                    <td class="style2" style="text-align: right">
                        &nbsp;</td>
                    <td style="text-align: center">
                        <strong>AGREGAR REPUESTO</strong></td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <table style="width: 99%;">
                <tr>
                    <td class="style6" style="text-align: right">
                        <asp:Label ID="Label1" runat="server" Text="ID repuesto:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtIdRepAgregar" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="IdRepValidator" ControlToValidate="txtIdRepAgregar" runat="server" 
                            ErrorMessage="Ingrese ID repuesto" Visible="true" ForeColor="Red" 
                            ValidationGroup="agregarRepuesto">Ingrese ID repuesto</asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style6" style="text-align: right">
                        <asp:Label ID="Label2" runat="server" Text="Nombre repuesto:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNomRepAgregar" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="nomRepValidator" ControlToValidate="txtNomRepAgregar" runat="server" 
                            ErrorMessage="Ingrese nombre repuesto" Visible="true" ForeColor="Red" 
                            ValidationGroup="agregarRepuesto">Ingrese nombre repuesto</asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <table style="width: 100%;">
                <tr>
                    <td class="style4" style="text-align: right">
                        <asp:Label ID="Label3" runat="server" Text="Marca:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMarRepAgregar" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="marRepValidator" ControlToValidate="txtMarRepAgregar" runat="server" 
                            ErrorMessage="Ingrese marca repuesto" Visible="true" ForeColor="Red" 
                            ValidationGroup="agregarRepuesto">Ingrese marca repuesto</asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Label ID="Label4" runat="server" Text="Calidad:"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlCalidad" runat="server">
                            <asp:ListItem>Original</asp:ListItem>
                            <asp:ListItem>Alternativo</asp:ListItem>
                            <asp:ListItem>Genuino</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Label ID="Label5" runat="server" Text="Origen:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtOrRepAgregar" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="orRepValidator" ControlToValidate="txtOrRepAgregar" runat="server" 
                            ErrorMessage="Ingrese origen repuesto" Visible="true" ForeColor="Red" 
                            ValidationGroup="agregarRepuesto" >Ingrese origen repuesto</asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <table style="width:100%;">
                <tr>
                    <td class="style4">
                        <asp:Label ID="Label6" runat="server" Text="Estado:"></asp:Label>
                    </td>
                    <td class="style5" style="text-align: left">
                        <asp:DropDownList ID="ddlEstado" runat="server">
                            <asp:ListItem>Activo</asp:ListItem>
                            <asp:ListItem>Descontinuo</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style4">
                        &nbsp;</td>
                    <td class="style5">
                        <asp:Button ID="btnAgregar" runat="server" onclick="btnAgregar_Click" 
                            Text="Agregar" ValidationGroup="agregarRepuesto" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style4">
                        &nbsp;</td>
                    <td class="style5">
                        <asp:Label ID="lblControl" runat="server" style="text-align: center"></asp:Label>
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
