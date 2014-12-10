<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="agregarAuto.aspx.cs" Inherits="AutomotoraPrueba1.enviarStock" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style3
        {
            width: 292px;
            text-align: center;
        }
        .style5
        {
            width: 330px;
            text-align: right;
        }
        .style6
        {
            width: 423px;
            text-align: right;
        }
        .style7
        {
            width: 449px;
        }
        .style8
        {
            width: 424px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width:98%;">
        <tr>
            <td>
                &nbsp;</td>
            <td style="text-align: left">
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
                            <asp:Label ID="lblBienvenido" runat="server"></asp:Label>
                            &nbsp;<asp:Button ID="btnCerrarSesion" runat="server" Text="CerrarSesion" 
                                Width="84px" />
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
                        <td class="style5">
                            &nbsp;</td>
                        <td class="style3">
                            <strong>AGREGAR AUTOMOVIL</strong></td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                <table style="width:100%;">
                    <tr>
                        <td class="style8">
                            <asp:Label ID="Label1" runat="server" style="text-align: right" Text="VIN"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtVin" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="vinAutoValidator" ControlToValidate="txtVin" runat="server" 
                                ErrorMessage="Ingrese VIN de automóvil" ForeColor="Red" Visible="true" ValidationGroup="agregarAuto">Ingrese VIN de automóvil</asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style8">
                            <asp:Label ID="Label2" runat="server" Text="Marca"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlMarca" runat="server">
                                <asp:ListItem>Audi</asp:ListItem>
                                <asp:ListItem>Chevrolet</asp:ListItem>
                                <asp:ListItem>Toyota</asp:ListItem>
                                <asp:ListItem>Mitsubichi</asp:ListItem>
                                <asp:ListItem>Kia</asp:ListItem>
                                <asp:ListItem>Subaru</asp:ListItem>
                                <asp:ListItem>Mercedes Benz</asp:ListItem>
                                <asp:ListItem>Volkswagen</asp:ListItem>
                                <asp:ListItem>BMW</asp:ListItem>
                                <asp:ListItem>Nissan</asp:ListItem>
                                <asp:ListItem>Skoda</asp:ListItem>
                            </asp:DropDownList>
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
            <td>
                <table style="width:100%;">
                    <tr>
                        <td class="style6">
                            <asp:Label ID="Label3" runat="server" Text="Modelo"></asp:Label>
                        </td>
                        <td style="text-align: left" class="style7">
                            <asp:TextBox ID="txtModelo" runat="server" style="margin-left: 0px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="modAutoValidator" ControlToValidate="txtModelo" runat="server" 
                                ErrorMessage="Ingrese modelo de automóvil" ForeColor="Red" ValidationGroup="agregarAuto" Visible="true">Ingrese modelo de automóvil</asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style6">
                            <asp:Label ID="Label4" runat="server" Text="Año"></asp:Label>
                        </td>
                        <td class="style7">
                            <asp:TextBox ID="txtAño" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ValidationExpression="[0-9]*" 
                                ID="CustomValidator2" runat="server" 
                                ErrorMessage="Ingresar año en números" ForeColor="Red" 
                                Visible="true" ControlToValidate="txtAño" 
                                ValidationGroup="agregarAuto">Ingresar año en números</asp:RegularExpressionValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style6">
                            &nbsp;</td>
                        <td style="text-align: left" class="style7">
                            <asp:Button ID="btnAgregarAuto" runat="server" onclick="btnAgregarAuto_Click" 
                                Text="Agregar" ValidationGroup="agregarAuto" Width="102px" 
                                style="text-align: center" />
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
    <table style="width: 99%;">
        <tr>
            <td>
                &nbsp;</td>
            <td style="text-align: center">
                            <asp:Label ID="lblControl" runat="server" style="text-align: center"></asp:Label>
                        </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
