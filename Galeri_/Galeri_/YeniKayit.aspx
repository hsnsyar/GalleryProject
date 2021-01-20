<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="YeniKayit.aspx.cs" Inherits="Galeri_.YeniKayit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Yeni Kayıt</title>
    <style type="text/css">
        
        .auto-style1 {
            width: 285px;
            height: 240px;
        }
        .mdl-ekle{
            color:lightseagreen;
        }
        
        .auto-style2 {
            text-align: right;
        }
        
    </style>
</head>
<body>

    <form id="form1" runat="server">
        <div class="arkares">
            <table class="auto-style1">
                <tr>
                    <th class="mdl-ekle">MODEL EKLE</th>
                </tr>
                <tr>
                    <td class="auto-style2">Modelin Adı:<asp:TextBox ID="TxtModelAd" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style2">Marka Adı:<asp:TextBox ID="TxtMarkaAd" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style2">Yıl:<asp:TextBox ID="TxtYil" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style2">Vites:<asp:TextBox ID="TxtVites" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style2">Plaka:<asp:TextBox ID="TxtPlaka" runat="server"></asp:TextBox></td>
                </tr>
            </table>

            <asp:Button ID="BtnKaydet" BackColor="lightseagreen" runat="server" OnClientClick="YeniKayit" OnClick="BtnKaydet_Click" Text="Kaydet" Height="36px" Width="118px" ForeColor="#CC00FF" />

        </div>
    </form>
</body>
</html>
