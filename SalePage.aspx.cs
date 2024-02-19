using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class SalePage : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-NSPMDBGL\SQLEXPRESS;Initial Catalog=Real-etsate;Integrated Security=True");
    SqlDataAdapter da;
    DataSet dt;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
        //    ImageData();
        //}
        //if (!IsPostBack)
        //{
        //    // Get the image filename from the query string
        //    string imageName = Request.QueryString["Images"];

        //    if (!string.IsNullOrEmpty(imageName))
        //    {
        //        // Create a list with image information for GridView
        //        List<ImageInfo> imageList = new List<ImageInfo>
        //            {
        //                new ImageInfo
        //                {
        //                    ImageName = imageName,
        //                    photo = "~/images/" + imageName
        //                }
        //            };

        //        // Bind the list to the GridView

        //        GridView1.DataBind();
        //    }
        //}
    }

    //public class ImageInfo
    //{
    //    public string ImageName { get; set; }
    //    public string photo { get; set; }
    //}
    protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-NSPMDBGL\SQLEXPRESS;Initial Catalog=Real-etsate;Integrated Security=True");
        string sql = "select * from AdPostTbl ";
        SqlDataAdapter da = new SqlDataAdapter(sql, con);
        DataSet dt = new DataSet();
        da.Fill(dt);
        //string imgPath = "/images/";
        //Image1.ImageUrl = imgPath + Image1.ImageUrl;
        GridView1.DataSource = dt;
        GridView1.DataBind();
        //GridView1.EditIndex = e.NewEditIndex;
    }
    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        

       
    }


    //protected void Button2_Click1(object sender, EventArgs e)
    //{
    //    try
    //    {
        
    //        DataTable dt1 = new DataTable();
    //        DataTable dt2 = new DataTable();
    //        DataTable dt3 = new DataTable();
    //        DataTable dt4 = new DataTable();
    //        DataTable dt5 = new DataTable();
    //        DataTable dt6 = new DataTable();
    //        DataTable dt7 = new DataTable();
    //        DataTable dt8 = new DataTable();
    //        DataTable dt9 = new DataTable();
    //        DataTable dt10 = new DataTable();
    //        DataTable dt11 = new DataTable();
    //        DataTable dt12 = new DataTable();
    //        DataTable dt13 = new DataTable();
    //        DataTable dt14 = new DataTable();
           
            


    //        if (CheckBox1.Checked == true)
    //        {
    //            SqlCommand cmd2 = new SqlCommand("Select photo,adtitle,price, from AdPostTbl where station = '" + CheckBox1.Text + "'", con);
    //            SqlDataAdapter da = new SqlDataAdapter(cmd2);
                
    //            da.Fill(dt1);
               
    //        }
    //        if (CheckBox2.Checked == true)
    //        {
    //            SqlCommand cmd2 = new SqlCommand("Select photo,adtitle,price, from AdPostTbl where station = '" + CheckBox2.Text + "'", con);
    //            SqlDataAdapter da = new SqlDataAdapter(cmd2);
                 
    //            da.Fill(dt2);
                
    //        }
            
    //        if (CheckBox3.Checked == true)
    //        {
    //            SqlCommand cmd2 = new SqlCommand("Select photo,adtitle,price, from AdPostTbl where station = '" + CheckBox3.Text + "'", con);
    //            SqlDataAdapter da = new SqlDataAdapter(cmd2);

    //            da.Fill(dt3);
              
    //        }

    //        if (CheckBox4.Checked == true)
    //        {
    //            SqlCommand cmd2 = new SqlCommand("Select photo,adtitle,price, from AdPostTbl where station = '" + CheckBox4.Text + "'", con);
    //            SqlDataAdapter da = new SqlDataAdapter(cmd2);

    //            da.Fill(dt4);
               
    //        }


    //        if (CheckBox5.Checked == true)
    //        {
    //            SqlCommand cmd2 = new SqlCommand("Select photo,adtitle,price, from AdPostTbl where station = '" + CheckBox5.Text + "'", con);
    //            SqlDataAdapter da = new SqlDataAdapter(cmd2);

    //            da.Fill(dt5);
                
    //        }

    //        if (CheckBox6.Checked == true)
    //        {
    //            SqlCommand cmd2 = new SqlCommand("Select photo,adtitle,price, from AdPostTbl where station = '" + CheckBox6.Text + "'", con);
    //            SqlDataAdapter da = new SqlDataAdapter(cmd2);

    //            da.Fill(dt6);
                
    //        }

    //        if (CheckBox7.Checked == true)
    //        {
    //            SqlCommand cmd2 = new SqlCommand("Select photo,adtitle,price, from AdPostTbl where station = '" + CheckBox7.Text + "'", con);
    //            SqlDataAdapter da = new SqlDataAdapter(cmd2);

    //            da.Fill(dt7);
                
    //        }

    //        if (CheckBox8.Checked == true)
    //        {
    //            SqlCommand cmd2 = new SqlCommand("Select photo,adtitle,price, from AdPostTbl where station = '" + CheckBox8.Text + "'", con);
    //            SqlDataAdapter da = new SqlDataAdapter(cmd2);

    //            da.Fill(dt8);
                
    //        }

    //        if (CheckBox9.Checked == true)
    //        {
    //            SqlCommand cmd2 = new SqlCommand("Select photo,adtitle,price, from AdPostTbl where station = '" + CheckBox9.Text + "'", con);
    //            SqlDataAdapter da = new SqlDataAdapter(cmd2);

    //            da.Fill(dt9);
                
    //        }

    //        if (CheckBox10.Checked == true)
    //        {
    //            SqlCommand cmd2 = new SqlCommand("Select photo,adtitle,price, from AdPostTbl where station = '" + CheckBox10.Text + "'", con);
    //            SqlDataAdapter da = new SqlDataAdapter(cmd2);

    //            da.Fill(dt10);
               
    //        }

    //        if (CheckBox11.Checked == true)
    //        {
    //            SqlCommand cmd2 = new SqlCommand("Select photo,adtitle,price, from AdPostTbl where station = '" + CheckBox11.Text + "'", con);
    //            SqlDataAdapter da = new SqlDataAdapter(cmd2);

    //            da.Fill(dt11);
                
    //        }

    //        if (CheckBox12.Checked == true)
    //        {
    //            SqlCommand cmd2 = new SqlCommand("Select photo,adtitle,price, from AdPostTbl where station = '" + CheckBox12.Text + "'", con);
    //            SqlDataAdapter da = new SqlDataAdapter(cmd2);

    //            da.Fill(dt12);
               
    //        }

    //        if (CheckBox13.Checked == true)
    //        {
    //            SqlCommand cmd2 = new SqlCommand("Select photo,adtitle,price, from AdPostTbl where station = '" + CheckBox13.Text + "'", con);
    //            SqlDataAdapter da = new SqlDataAdapter(cmd2);

    //            da.Fill(dt13);
              
    //        }

    //        if (CheckBox14.Checked == true)
    //        {
    //            SqlCommand cmd2 = new SqlCommand("Select photo,adtitle,price, from AdPostTbl where station = '" + CheckBox14.Text + "'", con);
    //            SqlDataAdapter da = new SqlDataAdapter(cmd2);

    //            da.Fill(dt14);
               
    //        }


    //        dt1.Merge(dt1);
    //        dt1.Merge(dt2);
    //        dt1.Merge(dt3);
    //        dt1.Merge(dt4);
    //        dt1.Merge(dt5);
    //        dt1.Merge(dt6);
    //        dt1.Merge(dt7);
    //        dt1.Merge(dt8);
    //        dt1.Merge(dt9);
    //        dt1.Merge(dt10);
    //        dt1.Merge(dt11);
    //        dt1.Merge(dt12);
    //        dt1.Merge(dt13);
    //        dt1.Merge(dt14);
    //        GridView2.DataSource = dt1;
    //        GridView2.DataBind();
    //        //GridView2.All
             
    //        GridView1.Visible = true;
            
    //    }
    //    catch (Exception ex)
    //    {
    //        Response.Write("<script>alert('" + ex.Message + "');</script>");
    //    }
    //}

    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView2_PreRender(object sender, EventArgs e)
    {
       
    }
}