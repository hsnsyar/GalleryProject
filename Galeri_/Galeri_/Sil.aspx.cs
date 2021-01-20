using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Galeri_
{
    public partial class Sil : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                HiddenField1.Value = Request.QueryString["id"];
                DeleteLoad();
            }

        }
        private void DeleteLoad()
        {
            string conString1 = ConfigurationManager.ConnectionStrings["Galeri"].ConnectionString;
            SqlConnection con = new SqlConnection(conString1);
            SqlCommand cmd = new SqlCommand("SELECT ID,Model_Adi, Marka_Adi, Plaka FROM TBL_GALERI where ID=@id", con);
            cmd.Parameters.AddWithValue("@id", HiddenField1.Value);
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            if (rdr.Read())
            {
                TxtSModelAd.Text = rdr["Model_Adi"].ToString();
                TxtSMarkaAd.Text = rdr["Marka_Adi"].ToString();
                TxtSPlaka.Text = rdr["Plaka"].ToString();
                HiddenField1.Value = rdr["ID"].ToString();
            }
            rdr.Close();
            con.Close();

        }

        
        //protected void CommandButton_Click(object sender, CommandEventArgs e)
        //{
        //    if (e.CommandName == "Sil")
        //    {
        //        string conString2 = ConfigurationManager.ConnectionStrings["Galeri"].ConnectionString;
        //        SqlConnection con = new SqlConnection(conString2);
        //        SqlCommand cmd = new SqlCommand("Delete from TBL_GALERI where ID=@ıd ", con);
        //        cmd.Parameters.AddWithValue("@ıd", Label1.Text);
        //        SqlDataAdapter da = new SqlDataAdapter(cmd);
        //        SqlDataReader dr = cmd.ExecuteReader();
        //        if (dr.Read())
        //        {
        //            Label1.Text = dr["Model_Adi", "Marka_Adi", "Plaka".ToString()];
        //        }
        //        dr.Close();
        //        con.Close();
        //    }

        //}

        protected void BtnVazgec_Click(object sender, EventArgs e)
        {
            Response.Redirect("Anasayfa.aspx");
        }

        protected void BtnSil_Click(object sender, EventArgs e)
        {
            string conString = ConfigurationManager.ConnectionStrings["Galeri"].ConnectionString;
            SqlConnection conn = new SqlConnection(conString);
            SqlCommand comm = new SqlCommand("Delete from TBL_GALERI where ID=@ıd  ", conn);
            comm.Parameters.AddWithValue("@ıd", HiddenField1.Value);
            conn.Open();
            comm.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("Anasayfa.aspx");
        }
    }
}