using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Admin_DropByComp : System.Web.UI.Page
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
                    lblUserid.Text = Session["UserId"].ToString();
                    lblName.Text = Session["Name"].ToString();
                    lblCity.Text = Session["City"].ToString();
                    lblPlan.Text = Session["Plan"].ToString();
                    lblpAmt.Text = Session["Totalpaid"].ToString();
                    lblTDays.Text = Session["totaldays"].ToString();


                    Session["update"] = Server.UrlEncode(System.DateTime.Now.ToString());
                }
            }
        }
        catch { }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.Text == "Select %")
        {
            lblTAmt.Text = "";
        }
        else
        {
            float Introfyr = float.Parse(lblpAmt.Text) * (float.Parse(DropDownList1.SelectedItem.Text) / 100);
            float Introfday = Introfyr / 365;
            float totalintr = Introfday * float.Parse(lblTDays.Text);
            lblTAmt.Text = (float.Parse(lblpAmt.Text) + totalintr).ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["update"].ToString() == ViewState["update"].ToString())
        {
            try
            {
                SqlCommand close = new SqlCommand("UPDATE UserInfo SET  Status = @status WHERE (UserId = @id)", cn);
                cn.Open();
                close.Parameters.AddWithValue("@id", lblUserid.Text);
                close.Parameters.AddWithValue("@status", "Loan Closed");
                close.ExecuteNonQuery();
                cn.Close();

                SqlCommand refund = new SqlCommand("INSERT INTO Refund (UserId, RecievedAmt, RefundAmt, Reason, Date) VALUES ('" + lblUserid.Text + "','" + float.Parse(lblpAmt.Text) + "','" + float.Parse(lblTAmt.Text) + "',@p1,'" + System.DateTime.Today + "')", cn);
                cn.Open();
                refund.Parameters.AddWithValue("@p1", "Droped By Company");
                refund.ExecuteNonQuery();
                cn.Close();


                SqlCommand deleteremain = new SqlCommand("DELETE FROM RemainEMI WHERE (UserId = '" + lblUserid.Text + "')", cn);
                cn.Open();
                deleteremain.ExecuteNonQuery();
                cn.Close();



                Label1.Text = "User Removed Successfully";
                Session["ctrl"] = PrintArea;/// print area is a panel

                ClientScript.RegisterStartupScript(this.GetType(), "onclick", "<script language=javascript>window.open('Print.aspx','PrintMe','height=400px,width=500px,scrollbars=1');</script>");

            }



            catch
            {
                Response.Write("<Script>window.alert('Please try after some time ');</Script>");
                goto end;
            }



            finally
            {

            }
            Session["update"] = Server.UrlEncode(System.DateTime.Now.ToString());
        }
    end: ;



    }
    void Page_PreRender(object obj, EventArgs e)
    {
        ViewState["update"] = Session["update"];
    }
}