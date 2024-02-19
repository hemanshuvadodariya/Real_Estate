using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;


public partial class Register : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-NSPMDBGL\SQLEXPRESS;Initial Catalog=Real-etsate;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-NSPMDBGL\\SQLEXPRESS;Initial Catalog=Real-etsate;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[LoginTbl]([userid],[email],[mob],[pass])VALUES('" + txtuser.Text + "','" + txtemail.Text + "','" + txtmob.Text + "','" + txtpass.Text + "')", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('user successfully registered')</script>");
        Response.Redirect("userlogin.aspx");
    }
}
