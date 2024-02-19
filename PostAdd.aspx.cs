using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Reflection.Emit;
using System.IO;
using System.Security.Policy;

public partial class _Default : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-NSPMDBGL\SQLEXPRESS;Initial Catalog=Real-etsate;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {


    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-NSPMDBGL\SQLEXPRESS;Initial Catalog=Real-etsate;Integrated Security=True");
        /*SqlCommand cmd = new SqlCommand("INSERT INTO AdPostTbl VALUES('" + dstation.Text + "','" + txtad.Text + "','" + FileUpload1.FileName + "','" + dbed.Text + "','" + dbath.Text + "','" + dbrok.Text + "','" + txtsqmt.Text + "','" + txtdesc.Text + "','" + txtprice.Text + "','" + txtconnum.Text + "','" + txtemail.Text + "','" + txtphon.Text + "')", con);
        //SqlCommand cmd2 = new SqlCommand("INSERT INTO [dbo].[AdPostTbl]([id],[station],[adtitle],[photo],[bed],[bath],[broker],[sqmt],[descrip],[price],[connum],[email],[phone],[date])VALUES('" + dstation.Text + "','" + txtad.Text + "','" + dbed.Text + "','" + dbath.Text + "','" + dbrok.Text + "','" + txtsqmt.Text + "','" + txtdesc.Text + "','" + txtprice.Text + "','" + txtconnum.Text + "','" + txtemail.Text + "','" + txtphon.Text + "')", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('user successfully registered')</script>");
        Response.Redirect("SalePage.aspx");*/
        string fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName);
        if (fileExtension == ".png" || fileExtension == ".jpg")
        {
            string imge = Path.GetFileName(FileUpload1.FileName);
            string filepath = "~/Images/" + imge;
            FileUpload1.SaveAs(Server.MapPath(filepath));
            //FileUpload1.SaveAs(Server.MapPath("~/images/" + FileUpload1.FileName));
            string sql = "insert into AdPostTbl values('" + dstation.Text + "','" + txtad.Text + "','" + filepath + "','" + dbed.Text + "','" + dbath.Text + "','" + dbrok.Text + "','" + txtsqmt.Text + "','" + txtdesc.Text + "','" + txtprice.Text + "','" + txtconnum.Text + "','" + txtemail.Text + "','" + txtphon.Text + "')";
            //.Parameters.AddWithValue("@photo", filepath);
            SqlDataAdapter da = new SqlDataAdapter(sql, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Response.Write("inserted");
            Response.Redirect("Salepage.aspx");
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string folderPath = Server.MapPath("~/images/");

        //Check whether Directory (Folder) exists.
        if (!Directory.Exists(folderPath))
        {
            //If Directory (Folder) does not exists Create it.
            Directory.CreateDirectory(folderPath);
        }

        //Save the File to the Directory (Folder).
        FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));

        //Display the Picture in Image control.
        //Image1.ImageUrl = "~/Images/" + Path.GetFileName(FileUpload1.FileName);
    }
}
