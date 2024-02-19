using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Net.Mime;

public partial class Description : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-NSPMDBGL\SQLEXPRESS;Initial Catalog=Real-etsate;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {


        //try
        //{
        //    //lblad.Text = Session["ad"].ToString();
        //    price.Text = Session["price"].ToString();
        //    lbldate.Text =Session["date"].ToString(); 
        //    name.Text = Session["name"].ToString();  
        //    email.Text = Session["email"].ToString();  
        //    contact.Text = Session["con"].ToString();
        //    desc.Text = Session["desc"].ToString();


        //    if (con.State == ConnectionState.Closed)
        //    {
        //        con.Open();
        //    }

        //    //SqlCommand cmd = new SqlCommand("Select photo from AdPostTbl where adtitle ='" + lblad.Text + "'", con);
           
        //    SqlDataReader dr = cmd.ExecuteReader();
        //    string photo;
        //    dr.Read();
        //    {
        //        photo = dr["photo"].ToString();
        //        Image2.ImageUrl = photo;
        //    }

           

        //}
        //catch (Exception ex)
        //{
        //    lblad.Text = ex.Message;
        //}
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            
            string result = "Message Sent Successfully..!!";
            string senderID = "Hemu@gmail.com";
            const string senderPassword = "Hemu12";
            try
            {
                SmtpClient smtp = new SmtpClient
                {
                    Host = "smtp.gmail.com", // smtp server address here...
                    Port = 587,
                    EnableSsl = true,
                    DeliveryMethod = SmtpDeliveryMethod.Network,
                    Credentials = new System.Net.NetworkCredential(senderID, senderPassword),
                    Timeout = 30000,
                };
                //MailMessage message = new MailMessage(senderID, email.Text, "I am intrested in this Property ", lblad.Text 
                //+ " My Name is : " + TextBox1.Text+"My name is:"+TextBox2.Text+"My email id is:"+TextBox3.Text+"My message is:"+TextBox4.Text);
                //smtp.Send(message);
            }
            catch (Exception ex)
            {

            }
        }
        catch (Exception ex)
        { 
        
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("SalePage.aspx");
    }
}