using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Galeri_
{
    public partial class YeniKayit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnKaydet_Click(object sender, EventArgs e)
        {
            SqlConnection bag;
            SqlCommand com;
            string baglanStr = ConfigurationManager.ConnectionStrings["Galeri"].ConnectionString;
            bag = new SqlConnection(baglanStr);
            com = new SqlCommand("insert into TBL_GALERI (Model_Adi,Marka_Adi,Yil,Vites,Plaka) values (@model,@marka,@yil,@vites,@plaka)", bag);
            com.Parameters.AddWithValue("@model",TxtModelAd.Text);
            com.Parameters.AddWithValue("@marka",TxtMarkaAd.Text);
            com.Parameters.AddWithValue("@yil",TxtYil.Text);
            com.Parameters.AddWithValue("@vites",TxtVites.Text);
            com.Parameters.AddWithValue("@plaka",TxtPlaka.Text);
            bag.Open();
            int a = com.ExecuteNonQuery();
            if (a>0)
            {
                Response.Redirect("Anasayfa.aspx");
            }
            else
            {
                Response.Write("<script> alert('Eklenemedi')</script>");
            }
            
            bag.Close();
        }
    }
}