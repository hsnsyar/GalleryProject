using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Galeri_
{
    public partial class Düzenle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                HiddenField1.Value = Request.QueryString["id"];
                LoadEmploye();

            }

        }

        private void LoadEmploye()
        {
            string conString1 = ConfigurationManager.ConnectionStrings["Galeri"].ConnectionString;
            SqlConnection con = new SqlConnection(conString1);
            SqlCommand cmd = new SqlCommand("SELECT ID,Model_Adi, Marka_Adi, Yil, Vites, Plaka FROM TBL_GALERI where ID=@id", con);
            cmd.Parameters.AddWithValue("@id", HiddenField1.Value);
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            if (rdr.Read())
            {
                TxtDModelAd.Text = rdr["Model_Adi"].ToString();
                TxtDMarkaAd.Text = rdr["Marka_Adi"].ToString();
                TxtDYil.Text = rdr["Yil"].ToString();
                TxtDVites.Text = rdr["Vites"].ToString();
                TxtDPlaka.Text = rdr["Plaka"].ToString();
                HiddenField1.Value = rdr["ID"].ToString();
            }
            rdr.Close();
            con.Close();
        }


        protected void BtnDuzKaydet_Click(object sender, EventArgs e)
        {
            string conString = ConfigurationManager.ConnectionStrings["Galeri"].ConnectionString;
            SqlConnection conn = new SqlConnection(conString);
            SqlCommand comm = new SqlCommand("Update TBL_GALERI set Model_Adi=@model, Marka_Adi=@marka, Yil=@yil, Vites=@vites, Plaka=@plaka where ID=@ıd ", conn);
            comm.Parameters.AddWithValue("@model", TxtDModelAd.Text);
            comm.Parameters.AddWithValue("@marka", TxtDMarkaAd.Text);
            comm.Parameters.AddWithValue("@yil", TxtDYil.Text);
            comm.Parameters.AddWithValue("vites", TxtDVites.Text);
            comm.Parameters.AddWithValue("@plaka", TxtDPlaka.Text);
            comm.Parameters.AddWithValue("@ıd", HiddenField1.Value);
            conn.Open();
            comm.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("Anasayfa.aspx");
        }
    }
}