using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Admin_CreateUser : System.Web.UI.Page
{
    SqlConnection cn;

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
                    txtuid.Text = getUserId();
                }
            }
        }
        catch { }
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        SqlCommand cmduserc = new SqlCommand("INSERT INTO UserInfo (Name, Address, City, State, Contact, UserId, Password, PlanId, RateOfInterest, RegisteredDate) VALUES (@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9,@p10)", cn);
        cn.Open();
        cmduserc.Parameters.AddWithValue("@p1", txtname.Text);
        cmduserc.Parameters.AddWithValue("@p2", txtadress.Text);
        cmduserc.Parameters.AddWithValue("@p3", drpcity.SelectedItem.Text);
        cmduserc.Parameters.AddWithValue("@p4", drpstate.SelectedItem.Text);
        cmduserc.Parameters.AddWithValue("@p5", txtcontact.Text);
        cmduserc.Parameters.AddWithValue("@p6", txtuid.Text);
        cmduserc.Parameters.AddWithValue("@p7", txtpassword.Text);
        cmduserc.Parameters.AddWithValue("@p8", drpplanid.SelectedItem.Value);
        cmduserc.Parameters.AddWithValue("@p9", txtrateofInt.Text);
        cmduserc.Parameters.AddWithValue("@p10", System.DateTime.Today);
        cmduserc.ExecuteNonQuery();
        cn.Close();
        clear();
        Response.Write("<script>window.alert('User Create Successfully');</script>");
    }
    public void clear()
    {
        txtname.Text = "";
        txtadress.Text = "";
        txtcontact.Text = "";
        txtpassword.Text = "";
        txtrateofInt.Text = "";
        txtuid.Text = "";
    }
    public string getUserId()
    {
        Random rnd = new Random();
        string NumberPool = "abcdefghijklmn1234567890";

        string rndstr = "";
        for (int i = 0; i < 6; i++)
        {
            rndstr = rndstr + NumberPool[(int)(rnd.NextDouble() * NumberPool.Length)].ToString();

        }
        return rndstr;
    }

}