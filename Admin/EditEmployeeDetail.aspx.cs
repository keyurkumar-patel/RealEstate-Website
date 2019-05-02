using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Admin_EditEmployeeDetail : System.Web.UI.Page
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
    protected void drpEmpId_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlCommand cmdupdate = new SqlCommand("SELECT EmpName, EmpAddress, EmpCity, EmpState, EmpContact, EmpEmailId, EmpPassword, EmpType FROM  EmpInfo WHERE (EmpId = '" + drpEmpId.SelectedItem.Text + "')", cn);
        cn.Open();
        SqlDataReader dr = cmdupdate.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            txtName.Text = dr["EmpName"].ToString();
            txtAddress.Text = dr["EmpAddress"].ToString();
            txtcontact.Text = dr["EmpContact"].ToString();
            txtEmailId.Text = dr["EmpEmailId"].ToString();
            txtPassword.Text = dr["EmpPassword"].ToString();
            drpState.SelectedItem.Text = dr["EmpState"].ToString();
            drpcity.SelectedItem.Text = dr["EmpCity"].ToString();
            Label1.Text = dr["EmpType"].ToString();
            dr.Close();
            cn.Close();

        }
        else
        {
            dr.Close();
            cn.Close();
            Response.Write("<Script>window.alert('Please verify that You have selected Employee Id is Right or not...??');</Script>");
        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        if (Session["update"].ToString() == ViewState["update"].ToString())
        {
            try
            {
                SqlCommand cmdupdate = new SqlCommand("UPDATE EmpInfo SET EmpName ='" + txtName.Text + "', EmpAddress ='" + txtAddress.Text + "', EmpCity ='" + drpcity.SelectedItem.Text + "', EmpState ='" + drpState.SelectedItem.Text + "', EmpContact ='" + txtcontact.Text + "', EmpEmailId ='" + txtEmailId.Text + "', EmpPassword ='" + txtPassword.Text + "', EmpType ='" + drptype.SelectedItem.Text + "' WHERE (EmpId ='" + drpEmpId.SelectedItem.Text + "')", cn);
                cn.Open();
                cmdupdate.ExecuteNonQuery();
                cn.Close();
                clear();
                Response.Write("<Script>window.alert('Update Successfully');</Script>");
            }
            catch { }
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
        txtName.Text = "";
        txtPassword.Text = "";
    }
}