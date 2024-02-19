using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Real-etsateConnectionString"].ConnectionString);
        con.Open();
        string user1 = "SELECT [userid],[pass] FROM [dbo].[LoginTbl]";
        SqlDataAdapter da = new SqlDataAdapter(user1, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count != 0)
        {
            Response.Redirect("SalePage.aspx");
        }
        else
        {
            Response.Write("<script>alert('login fail')</script>");
        }
        con.Close();
    }
}