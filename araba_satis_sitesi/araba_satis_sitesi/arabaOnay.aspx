<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="arabaOnay.aspx.cs" Inherits="araba_satis_sitesi.arabaOnay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
     <table class="nav-justified" style="width: 87%">
      
        <tr>
            <td style="width: 158px">Araba Modeli</td>
            <td style="width: 625px">
                <asp:TextBox ID="txtModel" runat="server" Width="168px" ReadOnly="True" Text='<%# Eval("arabaModel") %>'></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 158px">Araba Fotoğrafı</td>
            <td style="width: 625px">
                <asp:TextBox ID="txtFotograf" runat="server" Width="168px" ReadOnly="True" Text='<%# Eval("arabaResim") %>'></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 158px">Araba Yakıt Tipi:</td>
            <td style="width: 625px">
                <asp:TextBox ID="txtYakit" runat="server" Width="168px" ReadOnly="True" Text='<%# Eval("arabaYakitTipi") %>'></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 158px; height: 129px">Açıklama Giriniz:</td>
            <td style="width: 625px; height: 129px">
                <asp:TextBox ID="txtAciklama" runat="server" Height="123px" Width="168px" ReadOnly="True" Text='<%# Eval("arabaAciklamasi") %>'></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 158px">Araç Satıcısı</td>
            <td style="width: 625px">
                <asp:TextBox ID="txtSatici" runat="server" Width="168px" ReadOnly="True" Text='<%# Eval("arabaSaticisi") %>'></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 158px">Telefon Numarası:</td>
            <td style="width: 625px">
                <asp:TextBox ID="txtNumara" runat="server" Width="168px" ReadOnly="True" Text='<%# Eval("arabaIletisim") %>'></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 158px; height: 20px">Fiyat:</td>
            <td style="width: 625px; height: 20px">
                <asp:TextBox ID="txtFiyat" runat="server" Width="168px" ReadOnly="True" Text='<%# Eval("arabaFiyati") %>'></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 158px; height: 20px">&nbsp;</td>
            <td style="width: 625px; height: 20px">
                <a> <a href="arabaKabul.aspx?id=<%# Eval("arabaID") %>"><div style="width:105px;height:35px;border-radius:10px;background-color:red;color:white;text-align:center;padding:5px;margin-left:60px;margin-top:10px">Onayla</div></a>  
        &nbsp;<br /> </td></a>
               
            </td>
        </tr>
    </table>
            </ItemTemplate>
        </asp:DataList>
        </form>
</asp:Content>
