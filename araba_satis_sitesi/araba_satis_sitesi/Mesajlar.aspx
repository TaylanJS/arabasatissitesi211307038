<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="araba_satis_sitesi.Mesajlar"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <table class="nav-justified">
            <tr>
                <td>MESAJLAR</td>
            </tr>
            <tr>
                <td style="height: 20px">
                    <asp:DataList ID="DataList1" runat="server" enableEventValidation="false" >
                        <ItemTemplate>
                            <table class="nav-justified">
                                <tr>
                                    <td>Gönderen Kişi:
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("isim") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Gönderen Kişinin Mail Adresi:
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("mail") %>'></asp:Label>
                                        <br />
                                        Mesaj</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="57px" ReadOnly="True" Text='<%# Eval("mesaj") %>' TextMode="MultiLine" Width="231px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      <a href="mesajSil.aspx?id=<%# Eval("iletisimID") %>"><div style="width:105px;height:35px;border-radius:10px;background-color:red;color:white;text-align:center;padding:5px;margin-left:100px">Sil</div></a>  
                                        &nbsp;<br /> </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</asp:Content>
