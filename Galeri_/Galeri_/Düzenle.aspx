<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Düzenle.aspx.cs" Inherits="Galeri_.Düzenle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>DÜZENLE</title>
    <style type="text/css">
        .auto-style1 {
            text-align: justify;
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
        <div class="auto-style1">
            <asp:HiddenField ID="HiddenField1" runat="server" />
            <table class="auto-style1">
                <tr>
                    <th class="mdl-ekle">MODEL DÜZENLE</th>
                </tr>
                <tr>
                    <td class="auto-style2">Modelin Adı:<asp:TextBox ID="TxtDModelAd" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style2">Marka Adı:<asp:TextBox ID="TxtDMarkaAd" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style2">Yıl:<asp:TextBox ID="TxtDYil" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style2">Vites:<asp:TextBox ID="TxtDVites" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style2">Plaka:<asp:TextBox ID="TxtDPlaka" runat="server"></asp:TextBox></td>
                </tr>
            </table>
            <asp:Button ID="BtnDuzKaydet" BackColor="lightseagreen" ForeColor="#660066" runat="server" Text="Güncelle" OnClientClick="Düzenle" OnClick="BtnDuzKaydet_Click" />
        </div>
    </form>
</body>
</html>
