using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Admin_PlanEdit : System.Web.UI.Page
{
    SqlConnection cn;

    private void EmptyTextBoxValues(Control parent)
    {
        foreach (Control c in parent.Controls)
        {
            if ((c.Controls.Count > 0))
            {
                EmptyTextBoxValues(c);
            }
            else if ((c is TextBox))
            {
                ((TextBox)(c)).Text = "";
            }
        }
    }

    private void msgBox(string strMsg)
    {
        ClientScript.RegisterStartupScript(GetType(), Guid.NewGuid().ToString(), "<script language=JavaScript>window.alert('" + strMsg + "');</script>");
    }


    protected void Page_PreRender(object sender, EventArgs e)
    {
        ViewState["CheckRefresh"] = Session["CheckRefresh"];
    }

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

        if (!IsPostBack)
        {
            Session["CheckRefresh"] = System.DateTime.Now.ToString();
        }
    }

    protected void bt_Update_Click(object sender, EventArgs e)
    {
        if (Session["CheckRefresh"].ToString() != ViewState["CheckRefresh"].ToString())
        {
            bt_Update.Visible = false;
            return;
        }
        Session["CheckRefresh"] = System.DateTime.Now.ToString();

        string UpdateR = "update [Plan] set PlanName='"
                        + txt_PlanName.Text + "',DPayment='"
                        + txt_DPayment.Text + "',EMI='"
                        + txt_EMI.Text + "',EMINo='"
                        + txt_EMINo.Text + "',Details='"
                        + txt_Details.Text + "' where PlanId='" + DDList_PlanId.SelectedValue + "'";
        SqlCommand cmd = new SqlCommand(UpdateR, cn);
        try
        {
            cn.Open();
            if (cmd.ExecuteNonQuery() > 0)
            {
                lbl_msg.Text = "Update Successfully";
                EmptyTextBoxValues(this);
                bt_Update.Visible = false;
                DDList_PlanId.SelectedIndex = 0;
            }

        }
        catch (Exception ex)
        {

            msgBox(ex.Message);

        }
        finally
        {
            cn.Close();
        }
    }
    protected void DDList_PlanId_SelectedIndexChanged(object sender, EventArgs e)
    {
        lbl_msg.Text = "";
        string sqlString = "SELECT PlanName,DPayment,EMI,EMINo,Details FROM [Plan] where PlanId ='" + DDList_PlanId.SelectedValue + "'";
        SqlCommand cmd = new SqlCommand(sqlString, cn);

        try
        {

            cn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                txt_PlanName.Text = dr["PlanName"].ToString();
                txt_DPayment.Text = dr["DPayment"].ToString();
                txt_EMI.Text = dr["EMI"].ToString();
                txt_EMINo.Text = dr["EMINo"].ToString();
                txt_Details.Text = dr["Details"].ToString();

                bt_Update.Visible = true;

            }
            dr.Close();
        }
        catch (Exception ex)
        {
            msgBox(ex.Message);

        }
        finally
        {
            cn.Close();
        }

    }
}