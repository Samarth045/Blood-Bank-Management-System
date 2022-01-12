using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class AdminBloodStockUpdate : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Project\BLOOD BANK MANGEMENT\Blood management\App_Data\Database.mdf;Integrated Security=True");

    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

        DataTable dt = new DataTable();
        con.Open();

        SqlCommand sqlcmd = new SqlCommand("SELECT * FROM BloodStock", con);

        SqlDataAdapter sqlDa = new SqlDataAdapter(sqlcmd);
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

        con.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {


        con.Open();
        if(DropDownList1.SelectedIndex.Equals(1))
        {
            cmd = new SqlCommand("UPDATE BloodStock SET Ap = '" + Textbox1.Text.Trim() + " ' ", con);
            cmd.ExecuteNonQuery();
        }

        else if (DropDownList1.SelectedIndex.Equals(2))
        {
            cmd = new SqlCommand("UPDATE BloodStock SET An = '" + Textbox1.Text.Trim() + " ' ", con);
            cmd.ExecuteNonQuery();
        }

        else if(DropDownList1.SelectedIndex.Equals(3))
        {
            cmd = new SqlCommand("UPDATE BloodStock SET Bp = '" + Textbox1.Text.Trim() + " ' ", con);
            cmd.ExecuteNonQuery();
        }

        else if(DropDownList1.SelectedIndex.Equals(4))
        {
            cmd = new SqlCommand("UPDATE BloodStock SET Bn = '" + Textbox1.Text.Trim() + " ' ", con);
            cmd.ExecuteNonQuery();
        }

        else if(DropDownList1.SelectedIndex.Equals(5))
        {
            cmd = new SqlCommand("UPDATE BloodStock SET Op = '" + Textbox1.Text.Trim() + " ' ", con);
            cmd.ExecuteNonQuery();
        }

        else if(DropDownList1.SelectedIndex.Equals(6))
        {
            cmd = new SqlCommand("UPDATE BloodStock SET On = '" + Textbox1.Text.Trim() + " ' ", con);
            cmd.ExecuteNonQuery();
        }

        else if(DropDownList1.SelectedIndex.Equals(7))
        {
            cmd = new SqlCommand("UPDATE BloodStock SET ABp = '" + Textbox1.Text.Trim() + " ' ", con);
            cmd.ExecuteNonQuery();
        }

        else if(DropDownList1.SelectedIndex.Equals(8))
        {
            cmd = new SqlCommand("UPDATE BloodStock SET ABn = '" + Textbox1.Text.Trim() + " ' ", con);
            cmd.ExecuteNonQuery();
        }
        con.Close();

        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert('Request Added Successfully....!!!!');window.location='AdminBloodStockUpdate.aspx'", true);
    }
}