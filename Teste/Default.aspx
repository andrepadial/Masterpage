<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="Teste._Default" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <table>
        <tr>
            <td>Data</td>
            <td></td><td></td>
            <td>Horário</td>
            <td></td><td></td>
            <td>Apto</td>
            <td></td><td></td>
            <td>Tipo Alteração</td>
        </tr>
        <tr>
            <td>
                <input type="date" runat="server" id="dataAgendamento" />
            </td>
            <td></td><td></td>
            <td>
                <asp:DropDownList ID="ddlHorarios" runat="server">
                    <asp:ListItem Text="08:00 às 09:30" Value="1"></asp:ListItem>
                    <asp:ListItem Text="09:30 às 11:00" Value="2"></asp:ListItem>
                    <asp:ListItem Text="11:00 às 12:30" Value="3"></asp:ListItem>
                    <asp:ListItem Text="13:00 às 14:30" Value="4"></asp:ListItem>
                    <asp:ListItem Text="14:30 às 16:00" Value="5"></asp:ListItem>
                    <asp:ListItem Text="16:00 às 17:30" Value="6"></asp:ListItem>
                    <asp:ListItem Text="17:30 às 19:00" Value="7"></asp:ListItem>
                    <asp:ListItem Text="19:00 às 20:30" Value="8"></asp:ListItem>
                    <asp:ListItem Text="20:30 às 22:00" Value="9"></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td></td><td></td>
            <td>
                <input type="text" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"  id="txtApto" runat="server" maxlength="4" style="width:40px"/>
            </td>
            <td></td><td></td>
            <td>
                <asp:RadioButtonList ID="ddlTipoOperacao" RepeatDirection="Horizontal" Height="50px" runat="server">
                                    <asp:ListItem Value="1" Selected="True">Inclusão</asp:ListItem>
                                    <asp:ListItem Value="2">Alteração</asp:ListItem>
                                    <asp:ListItem Value="3">Desistência</asp:ListItem>
                                </asp:RadioButtonList>
            </td>
        </tr>
    </table>

    

</asp:Content>
