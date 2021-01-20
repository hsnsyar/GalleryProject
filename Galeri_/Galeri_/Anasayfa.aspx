<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="Galeri_.Anasayfa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>SAYARS GALLERY</title>

    <style type="text/css">
        .stil1 {
            font-size: large;
            font-family: Arial;
            color: aqua;
        }

        #paragraf {
            color: red;
            font-family: Arial;
        }

        .auto-style1 {
            font-size: 60px;
            font-family: "YACgEQNAr7w 0", _fb_, auto;
            color: black;
            width: 822px;
            margin-right: auto;
            line-height: 0.82;
            letter-spacing: -0.01em;
        }

        .auto-style3 {
            width: 1263px;
            height: 181px;
        }

        .auto-style6 {
            width: 201px;
            height: 37px;
        }

        .top {
            margin-left: auto;
            margin-right: auto;
        }

        .yazi-hak {
            font-family: 'Segoe UI';
        }

        .style-hak {
            background-color: lavenderblush;
        }
    </style>

</head>
<body>

    <form id="form1" runat="server">
        <div>
            <table class="top">
                <tr>
                    <td class="logo-ımg">
                        <asp:Image runat="server" ImageUrl="~/Image/sayarsgallery.PNG" Height="194px" Width="327px" />
                    </td>
                    <td rowspan="2" class="auto-style1">SAYARS GALLERY
                       
                    </td>
                </tr>
            </table>
            <br />
            <table border="1">
                <tr>

                    <td rowspan="2" class="style-hak">
                        <p id="paragraf">
                            <b>Hakkımızda</b>
                        </p>
                        <br />
                        <b class="yazi-hak">Türkiye`nin otomobil dikeyinde lider online pazar yeri olan SayarS GallerY, 2021 yılında kurulmuştur.<br />
                            İnternetten araç almayı ve satmayı çok daha güvenilir, çok daha kolay ve konforlu kılmak üzere tüm sistemini mükemmelleştirme misyonuyla çalışan SayarS GallerY ekibi,
                        her ay yeni fonksiyonlarla kullanıcılarının deneyimini iyileştirmeyi amaçlıyor.<br />
                            Araç ilanı vermek isteyen veya araç almak isteyenler iOS ve Android cihazlar için hazırlanan SayarS GallerY mobil uygulaması ile her an, her yerden işlemlerini yapabiliyorlar.
                        </b>
                    </td>
                    <td>
                        <asp:Image runat="server" ImageUrl="~/Image/mustang.png" />
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <br />
            <br />
            <asp:Button ID="BtnKayit" runat="server" OnClick="BtnKayit_Click" OnClientClick="Anasayfa" Style="height: 26px" Text="Yeni Kayıt" />
            <br />

        </div>

        <table border="1" class="auto-style3">
            <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand1">
                <HeaderTemplate>
                    <tr>
                        <td><b>Model Adı</b></td>
                        <td><b>Marka Adı</b></td>
                        <td><b>Yıl</b></td>
                        <td><b>Vites</b></td>
                        <td><b>Plaka</b></td>
                        <td><b>Düzenle</b></td>
                        <td><b>Sil</b></td>
                    </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <td><%# Eval("Model_Adi") %></td>
                    <td><%# Eval("Marka_Adi") %></td>
                    <td><%# Eval("Yil") %></td>
                    <td><%# Eval("Vites") %></td>
                    <td><%# Eval("Plaka") %></td>
                    <td>
                        <asp:Button ID="BtnDüzenle" CommandName="Duzenle" CommandArgument='<%# Eval("ID") %>' runat="server" Text="Düzenle" />
                        </td>
                        <td>
                        <asp:Button ID="BtnSil" Width="68" runat="server" CommandName="Delete" CommandArgument='<%# Eval("ID") %>' Text="Sil" /></td>
                </ItemTemplate>

                <AlternatingItemTemplate>
                    <tr>
                        <td><%# Eval("Model_Adi") %></td>
                        <td><%# Eval("Marka_Adi") %></td>
                        <td><%# Eval("Yil") %></td>
                        <td><%# Eval("Vites") %></td>
                        <td><%# Eval("Plaka") %></td>
                        <td>
                            <asp:Button ID="BtnDüzenle" runat="server" Text="Düzenle" CommandName="Duzenle" CommandArgument='<%# Eval("ID") %>' />
                            </td>
                        <td>
                            <asp:Button ID="BtnSil" runat="server" Width="68" CommandName="Delete" CommandArgument='<%# Eval("ID") %>' Text="Sil" /></td>
                    </tr>
                </AlternatingItemTemplate>
            </asp:Repeater>

        </table>


    </form>
</body>
</html>
