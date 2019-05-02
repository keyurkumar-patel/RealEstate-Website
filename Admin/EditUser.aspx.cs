using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;


public partial class Admin_EditUser : System.Web.UI.Page
{
    SqlConnection cn;
    Class1 c = new Class1();
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
    protected void drpuid_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (drpuid.SelectedItem.Text == "Select User Id")
        {
            txtAddress.Text = "";
            txtcontact.Text = "";
            txtname.Text = "";
            txtpassword.Text = "";
            txtrateofint.Text = "";
        }
        else
        {

            SqlCommand cmd = new SqlCommand("SELECT Name, Address, City, State, Contact, Password, RateOfInterest FROM UserInfo WHERE (UserId = @p1)", cn);
            cn.Open();
            cmd.Parameters.AddWithValue("@p1", drpuid.SelectedItem.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                txtname.Text = dr["Name"].ToString();
                txtAddress.Text = dr["Address"].ToString();
                drpstate.SelectedItem.Text = dr["State"].ToString();
                drpcity.SelectedItem.Text = dr["City"].ToString();
                txtcontact.Text = dr["Contact"].ToString();
                txtpassword.Text = dr["Password"].ToString();
                txtrateofint.Text = dr["RateOfInterest"].ToString();
                dr.Close();
            }
            else { dr.Close(); }
        }
    }
    void Page_PreRender(object obj, EventArgs e)
    {
        ViewState["update"] = Session["update"];
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        if (Session["update"].ToString() == ViewState["update"].ToString())
        {
            try
            {
                c.execute("UPDATE UserInfo SET Name ='" + txtname.Text + "', Address ='" + txtAddress.Text + "', City ='" + drpcity.SelectedItem.Text + "', State ='" + drpstate.SelectedItem.Text + "', Contact ='" + txtcontact.Text + "', Password ='" + txtpassword.Text + "', RateOfInterest ='" + txtrateofint.Text + "' where Userid='" + drpuid.SelectedItem.Value + "'");
            }
            catch (Exception ex)
            {
                Page.RegisterClientScriptBlock("", "<script>alert('" + ex.Message + "')</script>");
            }
            Session["update"] = Server.UrlEncode(System.DateTime.Now.ToString());
        }
    }
}