using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;


public partial class BloodRequest : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Project\BLOOD BANK MANGEMENT\Blood management\App_Data\Database.mdf;Integrated Security=True");

    SqlCommand cmd;

    string filename;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click1(object sender, EventArgs e)
    {

        con.Open();

        


        cmd = new SqlCommand("insert into BloodRequest values(@Name, @Email, @Mobile, @bg, @address)", con);

        cmd.Parameters.AddWithValue("@Name", txtName.Text);
        cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
        cmd.Parameters.AddWithValue("@Mobile", txtMobile.Text);

        cmd.Parameters.AddWithValue("@bg", ddBg.SelectedValue);

        

        cmd.Parameters.AddWithValue("@address", txtAddress.Text);


        cmd.ExecuteNonQuery();
        con.Close();

        Response.Redirect("~/Home.aspx");

    }
}