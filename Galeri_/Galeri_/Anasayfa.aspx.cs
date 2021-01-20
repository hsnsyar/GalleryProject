using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Galeri_
{
    public partial class Anasayfa : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string connString = ConfigurationManager.ConnectionStrings["Galeri"].ConnectionString;
                SqlConnection conn = new SqlConnection(connString);
                SqlCommand comm = new SqlCommand("SELECT ID,Model_Adi, Marka_Adi, Yil, Vites, Plaka FROM TBL_GALERI ", conn);
                SqlDataReader reader;
                try
                {
                    conn.Open();
                    reader = comm.ExecuteReader();
                    Repeater1.DataSource = reader;
                    Repeater1.DataBind();
                    reader.Close();
                }
                catch
                {

                    Response.Write("bir hata oluştu");
                }
                finally
                {
                    conn.Close();
                }
            }


        }
        protected void BtnKayit_Click(object sender, EventArgs e)
        {
            Response.Redirect("YeniKayit.aspx");
        }


        protected void Repeater1_ItemCommand1(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Duzenle")
            {
                var id = e.CommandArgument;
                Response.Redirect("Düzenle.aspx?id=" + id);
            }
            if (e.CommandName == "Delete")
            {
                var dd = e.CommandArgument;
                Response.Redirect("Sil.aspx?id=" + dd);
            }
        }

    }
}