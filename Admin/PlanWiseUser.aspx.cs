using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;

public partial class Admin_PlanWiseUser : System.Web.UI.Page
{
    SqlConnection cn;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["AdminLogin"] == null)
            { Response.Redirect("~/Default.aspx"); }
            else
            {
                cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["RealEstate"].ConnectionString);

            }
        }
        catch { }
        // lbluserno.Text = GridView1.Rows.Count.ToString();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView1.DataBind();

        lbluserno.Text = GridView1.Rows.Count.ToString();
    }
}