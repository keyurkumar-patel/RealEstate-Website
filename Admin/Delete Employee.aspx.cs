using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;

public partial class Admin_Delete_Employee : System.Web.UI.Page
{
    SqlConnection cn;
    static DataTable dt = new DataTable();
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
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        try
        {
            SqlCommand del = new SqlCommand("delete from EmpInfo where EmpId='" + DropDownList1.SelectedItem.Text + "'", cn);
            cn.Open();
            del.ExecuteNonQuery();
            cn.Close();
            Response.Write("<Script>window.alert('Employee Removed successfully...');</Script>");
            Class1.BindDDList(DropDownList1);

        }
        catch { Response.Write("<Script>window.alert('Unable to Remove Employee ...');</Script>"); }
    }
}