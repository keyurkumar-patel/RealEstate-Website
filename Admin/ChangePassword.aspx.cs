using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Admin_ChangePassword : System.Web.UI.Page
{
    SqlConnection cn;
    TextBox t1 = new TextBox();
    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
            if (Session["AdminLogin"] == null)
            { Response.Redirect("~/Default.aspx"); }
            else
            {
                cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["RealEstate"].ConnectionString);
                if (!IsPostBack)
                {

                    Session["update"] = Server.UrlEncode(System.DateTime.Now.ToString());
                }
            }
        }
        catch { }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Session["update"].ToString() == ViewState["update"].ToString())
        {

            SqlCommand cmdsel = new SqlCommand("SELECT AdminId, Password FROM AdminLogin WHERE (AdminId ='" + Session["AdminLogin"].ToString() + "') AND (Password ='" + txtCurrent.Text + "')", cn);
            cn.Open();
            SqlDataReader dr = cmdsel.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Close();
                SqlCommand cmdupdate = new SqlCommand("UPDATE AdminLogin SET Password ='" + txtnew.Text + "' WHERE (AdminId ='" + Session["AdminLogin"].ToString() + "')", cn);
                cmdupdate.ExecuteNonQuery();
                cn.Close();
                Response.Write("<Script>window.alert('Password Changed Successfully');</Script>");
            }
            else
            {
                dr.Close();
                cn.Close();
                Response.Write("<Script>window.alert('You have entered Wrong Id Or Password... Unable to Change Password');</Script>");
            }
            Session["update"] = Server.UrlEncode(System.DateTime.Now.ToString());
        }

    }
    void Page_PreRender(object obj, EventArgs e)
    {
        ViewState["update"] = Session["update"];
    }
}