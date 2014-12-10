<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="manejoReportes.aspx.cs" Inherits="AutomotoraPrueba1.manejoReportes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style3
        {
            width: 915px;
        }
        .style4
        {
            width: 6px;
        }
        .style5
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width:98%;">
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style3">
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
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style3">
                <table style="width: 100%; margin-top: 10px;">
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style5">
                            <strong>SELECCIONE REPORTE A GENERAR</strong></td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td style="text-align: center">
                            <asp:Button ID="btnDirigirRepRepuestos" runat="server" 
                                onclick="btnDirigirRepRepuestos_Click" Text="Reporte de repuestos" />
&nbsp;<asp:Button ID="btnDirigirReporteAutos" runat="server" onclick="btnDirigirReporteAutos_Click" 
                                Text="Reporte de automoviles" />
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
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
