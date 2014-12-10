<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="stockPorTaller.aspx.cs" Inherits="AutomotoraPrueba1.stockPorTaller" %>
<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<style type="text/css">
        .style6
    {
        width: 561px;
    }
    .style7
    {
        width: 1221px;
    }
    .style8
    {
        width: 679px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table>
    <tr>
    <td class="style8">
    </td>
    <td class="style7">
        <div id="mmRespDist" 
                    style="height: 87px; text-align: right; background-color:#C6C6C6; width: 910px;">
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
    <td class="style6">
    </td>
    </tr>
    <tr>
    <td class="style8">
    </td>
    <td class="style7">
    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
    AutoDataBind="True" GroupTreeImagesFolderUrl="" Height="1202px" 
    oninit="CrystalReportViewer1_Init" 
    ToolbarImagesFolderUrl="" ToolPanelWidth="200px" Width="1104px" 
        EnableParameterPrompt="False" ToolPanelView="None" 
    EnableDatabaseLogonPrompt="False" />
<CR:CrystalReportSource ID="OrigenReporte" runat="server">
    <Report FileName="ReporteRepuestos.rpt">
    </Report>
</CR:CrystalReportSource>
    </td>
    <td class="style6">
    </td>
    </tr>
    </table>
</asp:Content>
