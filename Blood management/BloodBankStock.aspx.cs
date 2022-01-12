using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class BloodBankStock : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Project\BLOOD BANK MANGEMENT\Blood management\App_Data\Database.mdf;Integrated Security=True");

    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        con.Open();
        cmd = new SqlCommand("select * from BloodStock", con);
        SqlDataAdapter sqlDa = new SqlDataAdapter(cmd);

        sqlDa.Fill(dt);

        if(dt.Rows.Count > 0)
        {
            Label1.Text = dt.Rows[0]["Ap"].ToString();
            Label2.Text = dt.Rows[0]["An"].ToString();
            Label3.Text = dt.Rows[0]["Bp"].ToString();
            Label4.Text = dt.Rows[0]["Bn"].ToString();
            Label5.Text = dt.Rows[0]["Op"].ToString();
            Label6.Text = dt.Rows[0]["On"].ToString();
            Label7.Text = dt.Rows[0]["ABp"].ToString();
            Label8.Text = dt.Rows[0]["ABn"].ToString();
        }
    }
}