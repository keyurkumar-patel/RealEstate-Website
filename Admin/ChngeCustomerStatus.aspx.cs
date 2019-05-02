using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;

public partial class Admin_ChngeCustomerStatus : System.Web.UI.Page
{
    SqlConnection cn;
    static DateTime cur;
    static DateTime reg;
    TimeSpan diff;
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

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.Value == "---- SELECT ----")
        {
            lblCity.Text = "";
            lblDPayment.Text = "";
            lblEMI.Text = "";
            lblname.Text = "";
            lblPlan.Text = "";
            lblRemainEmi.Text = "";
            lblStatus.Text = "";
        }
        else
        {
            SqlCommand cmd = new SqlCommand("SELECT UserInfo.Name, UserInfo.City, UserInfo.Status, [Plan].PlanName, [Plan].DPayment, [Plan].EMI FROM UserInfo INNER JOIN [Plan] ON UserInfo.PlanId = [Plan].PlanId WHERE (UserInfo.UserId = '" + DropDownList1.SelectedItem.Value + "')", cn);
            cn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                lblname.Text = dr["Name"].ToString();
                lblCity.Text = dr["City"].ToString();
                lblStatus.Text = dr["Status"].ToString();
                lblPlan.Text = dr["PlanName"].ToString();
                lblDPayment.Text = dr["DPayment"].ToString();
                lblEMI.Text = dr["EMI"].ToString();
                dr.Close();
                cn.Close();
            }
            else { dr.Close(); cn.Close(); }


            SqlCommand cmd1 = new SqlCommand("SELECT COUNT(EMI) AS Expr1 FROM RemainEMI WHERE (UserId = @p1)", cn);
            cn.Open();
            cmd1.Parameters.AddWithValue("@p1", DropDownList1.SelectedItem.Value);
            SqlDataReader dr1 = cmd1.ExecuteReader();
            if (dr1.HasRows)
            {
                dr1.Read();
                lblRemainEmi.Text = dr1["Expr1"].ToString();
                dr1.Close();
                cn.Close();
            }
            else { dr1.Close(); cn.Close(); }
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedItem.Text == "")
        { Response.Write("<Script>Window.alert('Please select Status...');</Script>"); }
        else if (RadioButtonList1.SelectedItem.Text == "Drop By Company")
        {
            SqlCommand cmdsum = new SqlCommand("SELECT SUM(PaidEMI.TotalAmt) AS Expr1, UserInfo.RegisteredDate FROM PaidEMI INNER JOIN UserInfo ON PaidEMI.UserId = UserInfo.UserId WHERE  (PaidEMI.UserId = '" + DropDownList1.SelectedItem.Value + "') GROUP BY UserInfo.RegisteredDate", cn);
            cn.Open();
            SqlDataReader drsum = cmdsum.ExecuteReader();
            if (drsum.HasRows)
            {
                drsum.Read();
                Session["Totalpaid"] = drsum["Expr1"].ToString();
                cur = System.DateTime.Today;
                reg = Convert.ToDateTime(drsum["RegisteredDate"].ToString());
                diff = cur - reg;
                double totaldays = diff.TotalDays;
                Session["totaldays"] = totaldays;
                drsum.Close();
                cn.Close();
                Session["UserId"] = DropDownList1.SelectedItem.Value;
                Session["Name"] = lblname.Text;
                Session["Plan"] = lblPlan.Text;
                Session["City"] = lblCity.Text;
                Response.Redirect("DropByComp.aspx");
            }
            else { drsum.Close(); cn.Close(); }


            //SqlCommand close = new SqlCommand("UPDATE UserInfo SET  Status = @status WHERE        (UserId = @id)", cn);
            //cn.Open();
            //close.Parameters.AddWithValue("@id", DropDownList1.SelectedItem.Text);
            //close.Parameters.AddWithValue("@status", "Loan Closed");
            //close.ExecuteNonQuery();
            //cn.Close();
        }
        else if (RadioButtonList1.SelectedItem.Text == "Drop by Customer")
        {

            SqlCommand gettotal = new SqlCommand("SELECT SUM(EMIAmt) AS Sum FROM PaidEMI WHERE (UserId = '" + DropDownList1.SelectedItem.Value + "')", cn);
            cn.Open();
            SqlDataReader drtotal = gettotal.ExecuteReader();
            if (drtotal.HasRows)
            {
                drtotal.Read();
                Session["totalamt"] = drtotal["Sum"].ToString();
                drtotal.Close();
                cn.Close();
                Session["UserId"] = DropDownList1.SelectedItem.Value;
                Session["Name"] = lblname.Text;
                Session["Plan"] = lblPlan.Text;
                Session["City"] = lblCity.Text;
                Response.Redirect("DropByUser.aspx");
            }

            else { drtotal.Close(); cn.Close(); }




            //SqlCommand drop = new SqlCommand("UPDATE UserInfo SET  Status = @dropstatus WHERE (UserId = @dropid)", cn);
            //cn.Open();
            //drop.Parameters.AddWithValue("@dropid", DropDownList1.SelectedItem.Text);
            //drop.Parameters.AddWithValue("@dropstatus", "Droped User");
            //drop.ExecuteNonQuery();
            //cn.Close();
        }
        else if (RadioButtonList1.SelectedItem.Text == "Pay Loan At a Time")
        {
            SqlCommand gettotal1 = new SqlCommand("SELECT SUM(PaidEMI.EMIAmt) AS Paid, SUM(RemainEMI.EMI) AS Remain FROM PaidEMI INNER JOIN RemainEMI ON PaidEMI.UserId = RemainEMI.UserId WHERE (PaidEMI.UserId ='" + DropDownList1.SelectedItem.Value + "')", cn);
            cn.Open();
            SqlDataReader drtotal1 = gettotal1.ExecuteReader();
            if (drtotal1.HasRows)
            {
                drtotal1.Read();
                Session["PaidAmt"] = drtotal1["Paid"].ToString();
                Session["RemainAmt"] = drtotal1["Remain"].ToString();
                drtotal1.Close();
                cn.Close();
                Session["UserId"] = DropDownList1.SelectedItem.Value;
                Session["Name"] = lblname.Text;
                Session["Plan"] = lblPlan.Text;
                Session["City"] = lblCity.Text;
                Response.Redirect("PayLoanAtaTime.aspx");
            }

            else { drtotal1.Close(); cn.Close(); }
        }
        else
        {
            Response.Write("<Script>Window.alert('Please select Status...');</Script>");
        }
    }
}