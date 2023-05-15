<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="girisYap.aspx.cs" Inherits="araba_satis_sitesi.girisYap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form1" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="modal-sm" style="width: 118px">Mail Adresiniz:</td>
            <td>
                <asp:TextBox ID="txtMail" runat="server" TextMode="Email"  style="border-radius:5px;margin-bottom:5px; height:30px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 118px">Şİfreniz:</td>
            <td>
                <asp:TextBox ID="txtParola" runat="server" TextMode="Password"  style="border-radius:5px;margin-bottom:5px; height:30px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 118px">&nbsp;</td>
            <td>
                <asp:Button ID="btnKayit" runat="server" OnClick="btnKayit_Click" Text="Giriş Yap" Width="127px"  style="border-radius:5px;margin-bottom:5px; height:30px"/>
            </td>
        </tr>
    </table>
</form>
</asp:Content>
