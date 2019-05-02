using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.IO;
using System.Net.Mail;
using System.Net;
using System.Text;
using System.Text.RegularExpressions;

public partial class manager_ReceiptForm : System.Web.UI.Page
{
    SqlConnection cn;
    //string source = "server=(local)\\sqlexpress;Integrated Security=SSPI;database=realestate;";
    private HttpWebRequest req;
    private CookieContainer cookieCntr;
    private string strNewValue;
    public static string responseee;
    private HttpWebResponse response;
    static float tempDPayment;
    static float tempEMI;
    static int tempEMINo;
    static string tempCityId;
    static int tempPenalty;
    static Int64 serialRemainEMI;
    static Int64 getNo;
    static string receive;
    Class1 c = new Class1();
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

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["ManagerLogin"] == null)
            {
                Response.Redirect("~/Default.aspx");
            }
            else
            {
                cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["RealEstate"].ConnectionString);

                SqlCommand cmdcity = new SqlCommand("SELECT City.CityId FROM EmpInfo INNER JOIN  City ON EmpInfo.EmpCity = City.CityName WHERE (EmpInfo.EmpId ='" + Session["ManagerLogin"].ToString() + "')", cn);
                cn.Open();
                SqlDataReader drcity = cmdcity.ExecuteReader();
                if (drcity.HasRows)
                {
                    drcity.Read();
                    tempCityId = drcity["CityId"].ToString();

                    drcity.Close();
                    cn.Close();
                }
                else
                {
                    drcity.Close();
                    cn.Close();
                }


                if (!IsPostBack)
                {
                    BindDDList(DDList_CustomerId);
                    BindDDList(DDList_BookingId);

                }
            }
        }
        catch { }



    }
    protected void BLink_OldUser_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        BindDDList(DDList_CustomerId);

    }

    protected void BLink_NewUser_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;



    }



    protected void DDList_BookinId_SelectedIndexChanged(object sender, EventArgs e)
    {
        lbl_msg2.Text = "";
        lb_UserId.Text = getUserId();
        string sqlString = "SELECT CustName,CustAddress,CustCity,CustState,CustContact,CustEmailId,Booking.PlanId, [Plan].DPayment, [Plan].EMI, [Plan].EMINo FROM Booking INNER JOIN [Plan] ON Booking.PlanID = [Plan].PlanId " +
                            " where (Booking.BookingId ='" + DDList_BookingId.SelectedValue + "')";

        SqlCommand cmd = new SqlCommand(sqlString, cn);
        try
        {
            cn.Open();

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                lb_Name.Text = dr["CustName"].ToString();
                lb_Address.Text = dr["CustAddress"].ToString();
                lb_City.Text = dr["CustCity"].ToString();
                lb_State.Text = dr["CustState"].ToString();
                lb_Contact.Text = dr["CustContact"].ToString();
                lb_EmaiId.Text = dr["CustEmailId"].ToString();
                lb_PlanId.Text = dr["PlanId"].ToString();
                txt_EMIDate.Text = (DateTime.Now.AddMonths(1)).ToString("MM-dd-yyyy");
                tempDPayment = float.Parse(dr["DPayment"].ToString());
                tempEMI = float.Parse(dr["EMI"].ToString());
                tempEMINo = int.Parse(dr["EMINo"].ToString());

                bt_Submit2.Visible = true;

            }
            else
            {
                msgBox("Error to find record");
            }

            dr.Close();
            lbl_msg2.Text = "";
            lb_ReceivedBy.Text = receive;
        }
        catch (Exception ex)
        {
            msgBox(ex.Message);
        }
        finally
        {
            cn.Close();
        }

        // txt_CustomerName.Text = "hello";



    }
    protected void bt_Submit2_Click(object sender, EventArgs e)
    {


        string insertRec = "INSERT INTO UserInfo (Name, Address, City, State, Contact, EmailId, UserId, Password, PlanId, RateOfInterest, RegisteredDate,BookingId, Status)  Values('" + lb_Name.Text + "','" + lb_Address.Text + "','" + lb_City.Text + "','" + lb_State.Text + "','" + lb_Contact.Text + "','" + lb_EmaiId.Text + "','" + lb_UserId.Text + "','" + txt_Password.Text + "','" + lb_PlanId.Text + "','" + txt_Penalty.Text + "','" + DateTime.Now.ToShortDateString() + "','" + DDList_BookingId.SelectedItem.Value + "',@p1)";

        cn.Open();

        SqlTransaction tran_insert;
        tran_insert = cn.BeginTransaction(System.Data.IsolationLevel.RepeatableRead);
        int intRows;

        try
        {

            SqlCommand cmd = new SqlCommand(insertRec, cn, tran_insert);
            cmd.Parameters.AddWithValue("@p1", "Continue");
            intRows = cmd.ExecuteNonQuery();
            int i = 0;
            DateTime tempDt = DateTime.Parse(txt_EMIDate.Text);
            cmd.CommandText = "insert into RemainEMI(EMIno,UserId,Date,EMI) values("
                        + i + ",'"
                        + lb_UserId.Text + "','"
                        + DateTime.Now + "',"
                        + tempDPayment + ")";

            intRows = intRows + cmd.ExecuteNonQuery();

            for (i++; i <= tempEMINo; i++)
            {
                tempDt = tempDt.AddMonths(1);
                cmd.CommandText = "insert into RemainEMI(EMIno,UserId,Date,EMI) values("
                + i + ",'"
                + lb_UserId.Text + "','"
                + tempDt + "',"
                + tempEMI + ")";
                intRows = intRows + cmd.ExecuteNonQuery();
            }
            // msgBox(intRows.ToString());
            if (intRows == (tempEMINo + 2))
            {
                tran_insert.Commit();
                lbl_msg2.Text = "Submitted Successfully";

                #region send mail userid and password

                MailMessage mail = new MailMessage();
                mail.To.Add(lb_EmaiId.Text);
                mail.From = new MailAddress("keyur.lakhani9@gmail.com");
                mail.Subject = "UserInfo ";
                mail.Body = " Hello " + lb_Name.Text + " <br/>Welcome to Arihant Builder.<br/> Your Account has been created successfully..<br/>Your Arihant Builder Account user Id :- " + lb_UserId.Text + "  And  Password :- " + txt_Password.Text + ""; ;
                mail.IsBodyHtml = true;
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                client.EnableSsl = true;
                NetworkCredential credentials = new NetworkCredential("keyur.lakhani9@gmail.com", "096080316524");
                client.Credentials = credentials;
                try
                {
                    client.Send(mail);

                }
                catch
                {
                    msgBox("Please check your internet connection");


                }




                #endregion send mail userid and password

                bt_Submit2.Visible = false;
                EmptyTextBoxValues(this);
                BindDDList(DDList_BookingId);

            }
            else
                tran_insert.Rollback();





        }
        catch (Exception ex)
        {

            tran_insert.Rollback();
            msgBox(ex.Message);

        }
        finally
        {
            cn.Close();
        }

    }





    protected void ChBx_CountPenalty_CheckedChanged(object sender, EventArgs e)
    {
        if (ChBx_CountPenalty.Checked == true)
        {
            DateTime d1 = DateTime.Parse(lb_ReceiptDate.Text);
            TimeSpan xyz = d1.Subtract(DateTime.Parse(lb_EMIDueDate.Text));
            double myval = Math.Truncate(xyz.TotalDays);

            if (myval > 0)
            {
                int noDays = Convert.ToInt32(myval);
                lb_PenaltyAmt.Text = (tempPenalty * noDays).ToString();
                lb_TotAmt.Text = (float.Parse(lb_EMIAmt.Text) + (tempPenalty * noDays)).ToString();
            }


        }
        else
        {
            lb_PenaltyAmt.Text = "0";
            lb_TotAmt.Text = lb_EMIAmt.Text;

        }
    }
    protected void bt_Submit_Click(object sender, EventArgs e)
    {
        string insertRec = "insert into PaidEMI(Serial,ReceiptId,UserId,EMIDueDate,EMIno,EMIAmt,ROI,TotalAmt,Date,ReceivedBy) "
            + " Values("
            + getNo + ",'"
            + lb_ReceiptId.Text + "','"
            + DDList_CustomerId.SelectedValue + "','"
            + lb_EMIDueDate.Text + "','"
            + lb_EMIno.Text + "','"
            + lb_EMIAmt.Text + "','"
            + lb_PenaltyAmt.Text + "','"
            + lb_TotAmt.Text + "','"
            + lb_ReceiptDate.Text + "','"
            + lb_ReceivedBy.Text + "')";
        String sqlDelete = "Delete from RemainEMI where Serial=" + serialRemainEMI;

        cn.Open();
        SqlTransaction myTran;
        myTran = cn.BeginTransaction(System.Data.IsolationLevel.RepeatableRead);
        int intAffected;

        try
        {

            SqlCommand cmd = new SqlCommand(insertRec, cn, myTran);
            intAffected = cmd.ExecuteNonQuery();
            cmd.CommandText = sqlDelete;
            intAffected = intAffected + cmd.ExecuteNonQuery();

            if (intAffected == 2)
            {

                myTran.Commit();
                Session["ctrl"] = PrintArea;
                //ClientScript.RegisterStartupScript(this.GetType(), "onclick", "<script language=javascript>window.open('Print.aspx','PrintMe','height=400px,width=500px,scrollbars=1');</script>");
                lbl_msg.Text = "Submitted Successfully";
                bt_Submit.Visible = false;
                GridView1.DataBind();

                HLinkPrint.Visible = true;
                HLinkPrint.Text = "Click to Print";
                HLinkPrint.NavigateUrl = "~/Print.aspx";
                Session["receiptdate"] = lb_ReceiptDate.Text;
                Session["receiptid"] = lb_ReceiptId.Text;
                Session["cname"] = lb_Name2.Text;
                Session["caddress"] = lb_Address2.Text;
                Session["city"] = lb_City2.Text;
                Session["plan"] = lb_PlanName.Text;
                Session["EmiNo"] = lb_EMIno.Text;
                Session["DwnP"] = lb_EMIAmt.Text;
                Session["panelty"] = lb_PenaltyAmt.Text;
                Session["totalamt"] = lb_TotAmt.Text;
                Session["receive"] = lb_ReceivedBy.Text;

            }
            else
            {
                myTran.Rollback();
                msgBox("Error in Submit record");
            }


            #region...Send Mail to Admin
            MailMessage mail = new MailMessage();
            mail.To.Add("keyur.lakhani9@gmail.com");
            mail.From = new MailAddress("keyur.lakhani9@gmail.com");
            mail.Subject = "User Payment Received";
            mail.Body = "user Id :-" + DDList_CustomerId.SelectedItem.Text + "<br/>Name :-" + " " + lb_Name2.Text + "<br/>Address :- " + lb_Address2.Text + "<br/>EMI Amt :-" + lb_EMIAmt.Text + "<br/>Total Amt:-" + lb_TotAmt.Text + "<br/>Received By :-" + lb_ReceivedBy.Text; ;
            mail.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
            client.EnableSsl = true;
            NetworkCredential credentials = new NetworkCredential("keyur.lakhani9@gmail.com", "096080316524");
            client.Credentials = credentials;
            try
            {
                client.Send(mail);

            }
            catch
            {
                msgBox("Please check your internet connection");


            }
            #endregion...Send Mail to Admin

            #region Conversation
            c.execute("INSERT INTO Conversation (EmpId, Conversation, Time) VALUES ('" + Session["ManagerLogin"].ToString() + "','" + txtComment.Text + "','" + System.DateTime.Now + "')");
            #endregion Conversation

            txtComment.Text = "";

        }
        catch (Exception ex)
        {

            myTran.Rollback();
            msgBox(ex.Message);


        }
        finally
        {
            cn.Close();
        }

    }

    protected void DDList_CustomerId_SelectedIndexChanged(object sender, EventArgs e)
    {
        HLinkPrint.Visible = false;

        lbl_msg.Text = "";
        bt_Submit.Visible = true;
        getNo = 0;
        lb_ReceiptDate.Text = DateTime.Now.ToString();

        SqlCommand Cmd = new SqlCommand("select max(Serial) from PaidEMI", cn);
        String sqlUserInfo = "SELECT UserInfo.Name, UserInfo.Address, UserInfo.City, UserInfo.RateOfInterest, [Plan].PlanId FROM UserInfo INNER JOIN [Plan] ON UserInfo.PlanId = [Plan].PlanId "
            + " where (UserInfo.UserId ='" + DDList_CustomerId.SelectedValue + "')";
        String sqlRemainEMI = "SELECT [Serial], [EMIno], [UserId], [Date], [EMI] FROM [RemainEMI] "
            + " where (RemainEMI.UserId ='" + DDList_CustomerId.SelectedValue + "') order by EMIno ";
        try
        {
            cn.Open();
            object x = Cmd.ExecuteScalar();
            if (x.GetType().IsValueType)
            {
                getNo = Convert.ToInt64(x);
            }
            getNo++;
            lb_ReceiptId.Text = tempCityId + getNo.ToString();

            Cmd.CommandText = sqlUserInfo;
            SqlDataReader dr = Cmd.ExecuteReader();
            if (dr.HasRows)
            {
                if (dr.Read())
                {
                    lb_Name2.Text = dr["Name"].ToString();
                    lb_Address2.Text = dr["Address"].ToString();
                    lb_City2.Text = dr["City"].ToString();
                    tempPenalty = int.Parse(dr["RateOfInterest"].ToString());
                    lb_PlanName.Text = dr["PlanId"].ToString();
                }
                else
                    msgBox("!! Error to fetch data about Customer");

            }
            dr.Close();

            Cmd.CommandText = sqlRemainEMI;
            dr = Cmd.ExecuteReader();
            if (dr.HasRows)
            {
                if (dr.Read())
                {
                    lb_EMIDueDate.Text = dr["Date"].ToString();
                    lb_EMIno.Text = dr["EMIno"].ToString();
                    lb_EMIAmt.Text = dr["EMI"].ToString();
                    serialRemainEMI = Int64.Parse(dr["Serial"].ToString());

                }
                else
                    msgBox("!! Error to fetch data about Remainnig EMI");

            }
            dr.Close();
            lb_PenaltyAmt.Text = "0";
            lb_TotAmt.Text = lb_EMIAmt.Text;
            ChBx_CountPenalty.Checked = false;




            SqlCommand cmdrece = new SqlCommand("Select EmpName from EmpInfo where EmpId='" + Session["ManagerLogin"].ToString() + "'", cn);

            SqlDataReader drrece = cmdrece.ExecuteReader();
            if (drrece.HasRows)
            {
                drrece.Read();
                lb_ReceivedBy.Text = drrece["EmpName"].ToString();
                drrece.Close();
                cn.Close();
            }
            else { drrece.Close(); cn.Close(); }

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
    public string getUserId()
    {
        Random rnd = new Random();
        string NumberPool = "abcdefghijklmnopqrstuvwxyz12345";

        string rndstr = "";
        for (int i = 0; i < 8; i++)
        {
            rndstr = rndstr + NumberPool[(int)(rnd.NextDouble() * NumberPool.Length)].ToString();

        }
        return rndstr;
    }

    
}