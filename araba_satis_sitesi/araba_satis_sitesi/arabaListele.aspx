<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="arabaListele.aspx.cs" Inherits="araba_satis_sitesi.arabaListele" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table class="nav-justified">
                    <tr >
                        <td>
                                 
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("markaAdi") %>'></asp:Label>
                             &nbsp;-&nbsp;
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("arabaModel") %>'></asp:Label>
                      
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Image ID="Image1" runat="server" Height="142px" ImageUrl='<%# Eval("arabaResim") %>' Width="227px" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("arabaYakitTipi") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 20px">
                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("arabaAciklamasi") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("arabaSaticisi") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 20px">
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("arabaIletisim") %>'></asp:Label>
                           </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("arabaFiyati") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </form>
</asp:Content>
