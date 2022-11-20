using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vertiefungsprojekt_M151
{
    public partial class regions : System.Web.UI.Page
    {
        string conStr = ConfigurationManager.ConnectionStrings["NorthwindDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ClickAdd(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "SPAdd";
            cmd.Parameters.Add("@RegDesc", SqlDbType.VarChar, 50);
            cmd.Parameters["@RegDesc"].Value = InputField.Text;
            cmd.CommandType = CommandType.StoredProcedure;
            using (SqlConnection con = new SqlConnection(conStr))
            {
                cmd.Connection = con;

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }

            DBGridView.DataBind();

        }

        protected void ClickDelete(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "SPDelete";
            cmd.Parameters.Add("@RegDesc", SqlDbType.VarChar, 50);
            cmd.Parameters["@RegDesc"].Value = InputField.Text;
            cmd.CommandType = CommandType.StoredProcedure;
            using (SqlConnection con = new SqlConnection(conStr))
            {
                cmd.Connection = con;

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }

            DBGridView.DataBind();
        }

        protected void ClickInvert(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "SPSelect";
            cmd.Parameters.Add("@RegDesc", SqlDbType.VarChar, 50);
            cmd.Parameters["@RegDesc"].Value = InputField.Text;
            cmd.CommandType = CommandType.StoredProcedure;
            int id;
            using (SqlConnection con = new SqlConnection(conStr))
            {
                cmd.Connection = con;

                con.Open();
                id = (int)cmd.ExecuteScalar();

                string inverted = new string(InputField.Text.Select(c => char.IsLetter(c) ? (char.IsUpper(c) ? char.ToLower(c) : char.ToUpper(c)) : c).ToArray());

                cmd.CommandText = "SPUpdate";
                cmd.Parameters.Add("@RegID", SqlDbType.Int);
                cmd.Parameters["@RegID"].Value = id;
                cmd.Parameters["@RegDesc"].Value = inverted;
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.ExecuteNonQuery();

                con.Close();
            }



            DBGridView.DataBind();

        }
    }
}