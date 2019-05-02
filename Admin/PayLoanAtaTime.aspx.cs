using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Admin_PayLoanAtaTime : System.Web.UI.Page
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
                    lblPaidamt.Text = Session["PaidAmt"].ToString();
                    lblRemainamt.Text = Session["remainAmt"].ToString();
                    lbluserid.Text = Session["UserId"].ToString();
                    lblname.Text = Session["Name"].ToString();
                    lblplan.Text = Session["Plan"].ToString();
                    lblcity.Text = Session["City"].ToString();
                    lblTAmt.Text = Session["remainAmt"].ToString();

                    Session["update"] = Server.UrlEncode(System.DateTime.Now.ToString());
                }

            }
        }
        catch { }
    }
    void Page_PreRender(object obj, EventArgs e)
    {
        ViewState["update"] = Session["update"];
    }
    protected void btnPay_Click(object sender, EventArgs e)
    {
        if (Session["update"].ToString() == ViewState["update"].ToString())
        {

            try
            {

                SqlCommand cmdpay = new SqlCommand("UPDATE UserInfo SET  Status = @status WHERE (UserId = @id)", cn);
                cn.Open();
                cmdpay.Parameters.AddWithValue("@id", lbluserid.Text);
                cmdpay.Parameters.AddWithValue("@status", "Loan Closed");
                cmdpay.ExecuteNonQuery();
                cn.Close();



                SqlCommand refund = new SqlCommand("INSERT INTO Refund (UserId, RecievedAmt, RefundAmt, Reason, Date) VALUES ('" + lbluserid.Text + "','" + float.Parse(lblPaidamt.Text) + "','" + float.Parse(lblTAmt.Text) + "',@p1,'" + System.DateTime.Today + "')", cn);
                cn.Open();
                refund.Parameters.AddWithValue("@p1", "Droped By user");
                refund.ExecuteNonQuery();
                cn.Close();




                SqlCommand deleteremain = new SqlCommand("DELETE FROM RemainEMI WHERE (UserId = '" + lbluserid.Text + "')", cn);
                cn.Open();
                deleteremain.ExecuteNonQuery();
                cn.Close();

                Label1.Text = "Loan Closed Successfully";

                Session["ctrl"] = PrintArea;/// print area is a panel

                ClientScript.RegisterStartupScript(this.GetType(), "onclick", "<script language=javascript>window.open('Print.aspx','PrintMe','height=400px,width=500px,scrollbars=1');</script>");

            }
            catch
            {
                Response.Write("<Script>window.alert('Please try after some time ');</Script>");
                goto end;
            }
            finally { }
            Session["update"] = Server.UrlEncode(System.DateTime.Now.ToString());
        }
    end: ;
    }
}