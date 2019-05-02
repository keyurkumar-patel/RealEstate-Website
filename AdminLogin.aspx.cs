using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class AdminLogin : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["RealEstate"].ConnectionString);
    }
    
    protected void Btn_Login_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select AdminId,Password from AdminLogin where   (AdminId ='" + Txt_User_Id.Text + "') AND (Password ='" + Txt_Password.Text + "')", cn);
        cn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            Session["AdminLogin"] = Txt_User_Id.Text;
            Response.Redirect("admin/AdminWelcome.aspx");
        }
        else
        {
            Response.Write("<Script>Window.alert('You have Entered Wrong Userid or Password ');</Script>");
            Response.Redirect("~/Default.aspx");
        }
    }
}