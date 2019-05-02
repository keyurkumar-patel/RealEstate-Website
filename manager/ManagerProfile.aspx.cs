using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class manager_ManagerProfile : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["ManagerLogin"] == null)
            { Response.Redirect("~/Default.aspx"); }
            else
            {

                cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["RealEstate"].ConnectionString);
                string selectrec = "SELECT EmpId, EmpName, EmpAddress, EmpContact, EmpJoinDate, EmpType FROM  EmpInfo WHERE EmpId = '" + Session["ManagerLogin"].ToString() + "'";

                SqlCommand cmd = new SqlCommand(selectrec, cn);

                try
                {
                    cn.Open();
                    SqlDataReader dtrow = cmd.ExecuteReader();
                    if (dtrow.Read())
                    {
                        lbl_EmpID.Text = (string)dtrow["EmpId"];
                        lbl_EmpName.Text = (string)dtrow["EmpName"];
                        lbl_Address.Text = (string)dtrow["EmpAddress"];
                        lbl_Contact.Text = (string)dtrow["EmpContact"];
                        DateTime dt = (DateTime)dtrow["EmpJoinDate"];
                        lbl_JoinDate.Text = dt.ToShortDateString();
                        lbl_EmpType.Text = dtrow["EmpType"].ToString();

                    }
                    dtrow.Close();
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
        }
        catch { }
    }
    
}