<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sil.aspx.cs" Inherits="Galeri_.Sil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>SİL</title>
    <style type="text/css">
        .mdl-sil{
            color:#f31111;
            font-size: 30px;
        }
        .auto-style1 {
            text-align: left;
        }
        .auto-style2 {
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <table class="auto-style1">
                <tr>
                    <th class="mdl-ekle">MODEL SİL</th>
                </tr>
                <tr>
                    <td class="auto-style2">Modelin Adı:<asp:TextBox ID="TxtSModelAd" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style2">Marka Adı:<asp:TextBox ID="TxtSMarkaAd" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style2">Yıl:<asp:TextBox ID="TxtSPlaka" runat="server"></asp:TextBox></td>
                </tr>
           </table>
        <asp:Button ID="BtnVazgec" runat="server"  BackColor="#66ff99" Text="Vazgeç" Height="34px" Width="88px" OnClick="BtnVazgec_Click" />
        <asp:Button ID="BtnSil"  runat="server" Text="Sil" Width="88px"  Height="34px" OnClick="BtnSil_Click"  />
        <asp:HiddenField ID="HiddenField1" runat="server" />
    </form>
</body>
</html>
