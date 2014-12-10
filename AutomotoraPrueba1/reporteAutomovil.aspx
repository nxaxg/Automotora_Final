<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="reporteAutomovil.aspx.cs" Inherits="AutomotoraPrueba1.reporteAutomovil" %>
<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style2
        {
            width: 4px;
        }
        .style3
        {
            width: 953px;
        }
        .style4
        {
            width: 60px;
        }
        .style5
        {
            width: 953px;
            text-align: center;
        }
        .style6
        {
            text-align: right;
            width: 452px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 99%;">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <div id="mmRespDist" 
                    
                    style="height: 87px; text-align: right; background-color:#C6C6C6; width: 920px;">
                    <asp:Menu ID="MainMenu" runat="server" Orientation="Horizontal" Font-Size="X-Large" BackColor="#4b6c9e" ForeColor="White">
                        <Items>
                            <asp:MenuItem Text="HOME" NavigateUrl="~/RespuestaDistribuidora.aspx" Value="Home.aspx"></asp:MenuItem>
                        </Items>
                        
                        <Items>
                            <asp:MenuItem Text="REPORTES" NavigateUrl="~/manejoReportes.aspx" Value="manejoReportes.aspx"></asp:MenuItem>
                        </Items>
                    </asp:Menu>
                            <asp:Label ID="lblBienvenido" runat="server" style="text-align: center"></asp:Label>
                            <asp:Button ID="btnCerrarSesion" runat="server" onclick="Button1_Click" 
                                Text="Cerrar sesion" Width="87px" />
                </div></td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style5">
                <strong>GENERAR REPORTE DE AUTOMOVILES</strong></td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td class="style6">
                Marca automóvil a buscar:</td>
            <td>
                <asp:TextBox ID="txtVinReporte" runat="server"></asp:TextBox>
                &nbsp;<asp:Button ID="btnGenerarReporte" runat="server" Text="Generar reporte" 
                    Width="112px" onclick="Button1_Click1" ValidationGroup="reportemarca" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td>
                &nbsp;</td>
            <td style="text-align: center">
                <asp:Label ID="lblControl" runat="server" style="text-align: center"></asp:Label>
                <asp:RequiredFieldValidator ID="MarcaValidator" ControlToValidate="txtVinReporte" ForeColor="Red" Visible="true" runat="server" 
                    ErrorMessage="Ingrese marca a buscar" ValidationGroup="reportemarca">Ingrese marca a buscar</asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
                    AutoDataBind="true" 
                    EnableParameterPrompt="False" ToolPanelView="None" 
                    oninit="CrystalReportViewer1_Init" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
