using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ReceiptDatewise : System.Web.UI.Page
{
    float temp, total;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void bt_Show_Click(object sender, EventArgs e)
    {
        HiddenDate.Value = DateTime.Parse(txt_ReceiptDate2.Text).AddHours(23.9999).ToString();
        GridView1.DataBind();

        if (GridView1.Rows.Count < 1)
            lbl_msg.Text = "No data found ! Select other date";
        else
            lbl_msg.Text = "";


        lbltag.Visible = true;
        lblAmt.Visible = true;
        foreach (GridViewRow row in GridView1.Rows)
        {
            temp = float.Parse(row.Cells[2].Text);
            total = total + temp;
        }
        lblAmt.Text = total.ToString();
    }
}