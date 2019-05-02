using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Admin_PlanCreate : System.Web.UI.Page
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
    protected void bt_Submit_Click(object sender, EventArgs e)
    {
        //SqlConnection conn = new SqlConnection(source);

        if (Session["CheckRefresh"].ToString() != ViewState["CheckRefresh"].ToString())
        {
            bt_Submit.Visible = false;
            return;
        }
        Session["CheckRefresh"] = System.DateTime.Now.ToString();

        try
        {



            SqlCommand cmd = new SqlCommand("INSERT INTO [Plan](PlanId, PlanName, DPayment, EMI, EMINo, Details) values('" + txt_PlanId.Text + "','" + txt_PlanName.Text + "','" + txt_DPayment.Text + "','" + txt_EMI.Text + "','" + txt_EMINo.Text + "','" + txt_Details.Text + "')", cn);
            cn.Open();

            if (cmd.ExecuteNonQuery() > 0)
            {
                lbl_msg.Text = "Submitted Succesfully";
                EmptyTextBoxValues(this);

            }
            else
            {
                lbl_msg.Text = "Sorry !!! failed to submit";

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
}