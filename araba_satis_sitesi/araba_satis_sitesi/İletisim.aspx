<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="İletisim.aspx.cs" Inherits="araba_satis_sitesi.İletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="modal-sm" style="width: 256px">Problem Mesajınız:</td>
            <td>
                <asp:TextBox ID="txtMesaj" runat="server" Height="101px" TextMode="MultiLine" Width="242px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 256px">Mail Adresiniz:</td>
            <td>
                <asp:TextBox ID="txtMail" runat="server" Width="242px" style="border-radius:5px;margin-bottom:5px; height:30px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 256px">İisminiz:</td>
            <td>
                <asp:TextBox ID="txtİsim" runat="server" Width="242px" style="border-radius:5px;margin-bottom:5px; height:30px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 256px">&nbsp;</td>
            <td>
                <asp:Button ID="btnGonder" runat="server" Height="45px" OnClick="btnGonder_Click" Text="Gönder" Width="242px" style="border-radius:5px;margin-bottom:5px; height:30px" />
            </td>
        </tr>
    </table>
</form>
</asp:Content>
