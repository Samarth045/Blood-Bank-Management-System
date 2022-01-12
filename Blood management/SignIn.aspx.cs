using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;



public partial class SignIn : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Project\BLOOD BANK MANGEMENT\Blood management\App_Data\Database.mdf;Integrated Security=True");


    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            Session["Email"] = TextBox1.Text;
            string uid = TextBox1.Text;
            string pass = TextBox2.Text;
            con.Open();
            string qry = "select * from Registration where Email='" + uid + "' and Password='" + pass + "'";
            SqlCommand cmd = new SqlCommand(qry, con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                if (uid == "admin@gmail.com")
                {
                    Response.Redirect("~/Admin.aspx");
                }
                else
                {
                    Response.Redirect("~/Home.aspx");
                }
            }
            else
            {
                Label1.Text = "UserId & Password Is not correct Try again..!!";

            }

            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}