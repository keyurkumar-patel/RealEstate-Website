using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net.Mail;
using System.Net;
using System.Text;
using System.Text.RegularExpressions;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Buy_Property : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        #region...Buy Property
        MailMessage mail = new MailMessage();
        mail.To.Add("keyur.lakhani9@gmail.com");
        mail.From = new MailAddress("keyur.lakhani9@gmail.com");
        mail.Subject = "Want to Buy Property";
        mail.Body = "Name :-" + " " + txtname.Text + "<br/>Address :- " + txtAddress + "<br/>Email Id :-" + txtEmail.Text + "<br/>Contact No :-" + txtContact.Text + " <br/>Description :- " + txtDesc.Text; ;
        mail.IsBodyHtml = true;
        SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
        client.EnableSsl = true;
        NetworkCredential credentials = new NetworkCredential("keyur.lakhani9@gmail.com", "096080316524");
        client.Credentials = credentials;
        try
        {
            client.Send(mail);
            clear();
        }
        catch
        {
            Response.Write("<script>window.alert('Failed to submit Information');</script>");
           

        }
        #endregion...Buy Property
    }
    public void clear()
    {
        txtname.Text = "";
        txtAddress.Text = "";
        txtContact.Text = "";
        txtEmail.Text = "";
        txtDesc.Text = "";
    }
}