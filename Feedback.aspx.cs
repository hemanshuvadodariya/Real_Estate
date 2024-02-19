using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Reflection.Emit;

public partial class Feedback : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-NSPMDBGL\SQLEXPRESS;Initial Catalog=Real-etsate;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void button2_Click(object sender, EventArgs e)
    {
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[FeedbackTbl]([name],[email],[subject],[message]) VALUES('"+ txtname.Text+ "','"+ txtemail.Text+ "','"+ txtsubject.Text+ "','"+ txtmessage.Text+ "')", con);
            con.Open();

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Thankyou for Providing Feedback');</script>");
            Response.Redirect("SalePage.aspx");
    }
}