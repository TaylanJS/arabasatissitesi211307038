<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="arabaEkle.aspx.cs" Inherits="araba_satis_sitesi.arabaEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <table class="nav-justified" style="width: 87%">
        <tr>
            <td style="height: 20px; width: 95px">Araba Markası Seçiniz:</td>
            <td style="width: 625px; height: 20px">
                <asp:DropDownList ID="combobox" runat="server" Width="178px"  style="border-radius:5px;margin-bottom:5px; height:30px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 95px">Araba Modelini Yazınız:</td>
            <td style="width: 625px">
                <asp:TextBox ID="txtModel" runat="server" Width="178px"  style="border-radius:5px;margin-bottom:5px; height:30px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 95px">Araba Fotoğraf Linki:</td>
            <td style="width: 625px">
                <asp:TextBox ID="txtFotograf" runat="server" Width="178px"  style="border-radius:5px;margin-bottom:5px; height:30px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 95px">Araba Yakıt Tipi:</td>
            <td style="width: 625px">
                <asp:TextBox ID="txtYakit" runat="server" Width="178px"  style="border-radius:5px;margin-bottom:5px; height:30px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 95px; height: 129px">Açıklama Giriniz:</td>
            <td style="width: 625px; height: 129px">
                <asp:TextBox ID="txtAciklama" runat="server" Height="123px" Width="178px"  style="border-radius:5px;margin-bottom:5px; "></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 95px">Araç Satıcısı</td>
            <td style="width: 625px">
                <asp:TextBox ID="txtSatici" runat="server" Width="178px"  style="border-radius:5px;margin-bottom:5px; height:30px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 95px">Telefon Numarası:</td>
            <td style="width: 625px">
                <asp:TextBox ID="txtNumara" runat="server" Width="178px"  style="border-radius:5px;margin-bottom:5px; height:30px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 95px; height: 20px">Fiyat:</td>
            <td style="width: 625px; height: 20px">
                <asp:TextBox ID="txtFiyat" runat="server" Width="178px"  style="border-radius:5px;margin-bottom:5px; height:30px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 95px; height: 20px">&nbsp;</td>
            <td style="width: 625px; height: 20px">
                <asp:Button ID="btnIlanYolla" runat="server" Height="39px" OnClick="btnIlanYolla_Click" Text="İlana Gönder" Width="178px"  style="border-radius:5px;margin-bottom:5px; height:30px"/>
            </td>
        </tr>
    </table>
</form>
</asp:Content>
