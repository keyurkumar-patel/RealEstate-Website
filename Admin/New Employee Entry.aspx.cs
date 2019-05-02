using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Admin_New_Employee_Entry : System.Web.UI.Page
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
            try
            {

                SqlCommand cmdsub = new SqlCommand("INSERT INTO EmpInfo (EmpName, EmpAddress, EmpCity, EmpState, EmpContact, EmpEmailId, EmpId, EmpPassword, EmpType, EmpJoinDate) VALUES (@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9,@p10)", cn);
                cn.Open();
                cmdsub.Parameters.AddWithValue("@p1", txtName.Text);
                cmdsub.Parameters.AddWithValue("@p2", txtAddress.Text);
                cmdsub.Parameters.AddWithValue("@p3", drpcity.SelectedItem.Text);
                cmdsub.Parameters.AddWithValue("@p4", drpState.SelectedItem.Text);
                cmdsub.Parameters.AddWithValue("@p5", txtcontact.Text);
                cmdsub.Parameters.AddWithValue("@p6", txtEmailId.Text);
                cmdsub.Parameters.AddWithValue("@p7", txtEmpId.Text);
                cmdsub.Parameters.AddWithValue("@p8", txtpassword.Text);
                cmdsub.Parameters.AddWithValue("@p9", drpType.SelectedItem.Text);
                cmdsub.Parameters.AddWithValue("@p10", System.DateTime.Today);
                cmdsub.ExecuteNonQuery();
                cn.Close();
                clear();
                Response.Write("<Script>window.alert('New Employee Registered successfully...');</Script>");
            }
            catch { Response.Write("<Script>window.alert('Unable to  Register New Employee,Please Try Later...');</Script>"); }
            Session["update"] = Server.UrlEncode(System.DateTime.Now.ToString());
        }
    }
    void Page_PreRender(object obj, EventArgs e)
    {
        ViewState["update"] = Session["update"];
    }
    public void clear()
    {
        txtAddress.Text = "";
        txtcontact.Text = "";
        txtEmailId.Text = "";
        txtEmpId.Text = "";
        txtName.Text = "";
        txtpassword.Text = "";

    }
}