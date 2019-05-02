using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;


public partial class ManagerLogin : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["RealEstate"].ConnectionString);
    }
    protected void Btn_Login_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select EmpId,EmpPassword,EmpType from EmpInfo where   (EmpId ='" + Txt_User_Id.Text + "') AND (EmpPassword ='" + Txt_Password.Text + "')", cn);
        cn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            if (dr["EmpType"].ToString() == "Manager")
            {
                Session["ManagerLogin"] = Txt_User_Id.Text;
                Response.Redirect("Manager/ManagerProfile.aspx");
            }
            else { Response.Write("<Script>Window.alert('Please Contact Administrator');</Script>"); }
        }
        else
        {
            Response.Write("<Script>Window.alert('You have Entered Wrong Userid or Password ');</Script>");
            Response.Redirect("~/Default.aspx");
        }
    }
}