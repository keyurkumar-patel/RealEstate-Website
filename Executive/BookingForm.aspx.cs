using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class Executive_BookingForm : System.Web.UI.Page
{
    SqlConnection cn;
    //string source = "server=(local)\\sqlexpress;Integrated Security=SSPI;database=RealEstate;";
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



    private void BindDDList(DropDownList abc)
    {

        if (abc is DropDownList)
        {
            abc.Items.Clear();
            abc.Items.Insert(0, "--Select--");
            abc.AppendDataBoundItems = true;
            abc.DataBind();
        }
    }

    protected void Page_PreRender(object sender, EventArgs e)
    {
        ViewState["CheckRefresh"] = Session["CheckRefresh"];
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["ExecutiveLogin"] == null)
            {
                Response.Redirect("~/Default.aspx");
            }
            else
            {
                cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["RealEstate"].ConnectionString);
                if (!IsPostBack)
                {
                    lblBookingCode.Text = GetBookingCode();
                    BindDDList(DDList_State);
                    BindDDList(DDList_PlanID);
                }
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

        if (Session["CheckRefresh"].ToString() != ViewState["CheckRefresh"].ToString())
        {
            bt_Submit.Visible = false;
            return;
        }
        Session["CheckRefresh"] = System.DateTime.Now.ToString();

        try
        {

            string insert = "insert into Booking(BookingId,CustName,CustAddress,CustCity,CustState,"
                        + "CustContact,CustEmailId,PlanID,CustResiNo,CustOffNo,CustBDate,CustMADate,CustRstatus,CustNation,CustPan,CustProfe,CustDesign,CoName,CoAdd,CoResiNo,CoOffNo,CoBDate,CoMADate,CoRstatus,CoNation,CoPan,CoProfe,CoDesign) values('"
                        + lblBookingCode.Text + "','"
                        + txt_CustomerName.Text + " " + txt_MName.Text + " " + txt_LName.Text + "','"
                        + txt_Address.Text + "','"
                        + DDList_City.SelectedValue + "','"
                        + DDList_State.SelectedItem.Text + "','"
                        + txt_Contact.Text + "','"
                        + txt_Email.Text + "','"
                        + DDList_PlanID.SelectedValue + "','"
                        + txt_ResiNo.Text + "','"
                        + txt_OffNo.Text + "','"
                        + txt_BDate.Text + "','"
                        + txt_MDate.Text + "','"
                        + rbRstatus.SelectedValue + "','"
                        + rbNation.SelectedValue + "','"
                        + txt_Pan.Text + "','"
                        + txt_Profe.Text + "','"
                        + txt_Design.Text + "','"
                        + txt_CoFName.Text + " " + txt_CoMName.Text + " " + txt_CoLName.Text + "','"
                        + txt_CoAdd.Text + "','"
                        + txt_CoResiNo.Text + "','"
                        + txt_CoOffNo.Text + "','"
                        + txt_CoBDate.Text + "','"
                        + txt_CoMDate.Text + "','"
                        + rbCoRstatus.SelectedValue + "','"
                        + rbCoNation.SelectedValue + "','"
                        + txt_CoPan.Text + "','"
                        + txt_CoProfe.Text + "','"
                        + txt_CoDesign.Text + "')";
            SqlCommand cmd = new SqlCommand(insert, cn);
            cn.Open();
            if (cmd.ExecuteNonQuery() > 0)
            {
                lbl_msg.Text = "Submitted Succesfully";
                EmptyTextBoxValues(this);
                DDList_State.SelectedIndex = 0;
                DDList_PlanID.SelectedIndex = 0;
                bt_Submit.Visible = false;

            }
            else
            {
                lbl_msg.Text = "Sorry !!! failed to Submit";

            }
        }
        catch (Exception ex)
        {
            lbl_msg.Text = ex.Message;
        }
        finally
        {
            cn.Close();

        }




    }
    protected void DDList_State_SelectedIndexChanged(object sender, EventArgs e)
    {

    }


    public string GetBookingCode()
    {
        Random rnd = new Random();
        string NumberPool = "abcdefg1234567890hijklmn";

        string rndstr = "";
        for (int i = 0; i < 6; i++)
        {
            rndstr = rndstr + NumberPool[(int)(rnd.NextDouble() * NumberPool.Length)].ToString();

        }
        return rndstr;
    }
}