<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Presentacion.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style3
        {
            width: 367px;
        }
        .style4
        {
            height: 21px;
            width: 446px;
        }
        .style5
        {
            width: 446px;
            text-align: right;
        }
        .style6
        {
            width: 445px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 98%;">
        <tr>
            <td class="style4">
                </td>
            <td class="style1" style="text-align: left">
                <strong>LOGIN</strong></td>
            <td class="style1">
                </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td style="text-align: center">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="userValidator" runat="server" 
                    ControlToValidate="txtUsername" ErrorMessage="Ingrese usuario valido" 
                    ValidationGroup="login" Visible="true" ForeColor="Red">Ingrese nombre de usuario</asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <table style="width: 98%;">
        <tr>
            <td class="style6">
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator  ID="passValidator" Visible="true" runat="server" 
                    ControlToValidate="txtPassword" ErrorMessage="Contraseña no valida" 
                    ValidationGroup="login" ForeColor="Red">Ingrese su contraseña</asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Iniciar sesión" ValidationGroup="login" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style3">
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
