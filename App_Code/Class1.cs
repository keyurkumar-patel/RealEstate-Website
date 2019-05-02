using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1
{
    SqlConnection cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["RealEstate"].ConnectionString);
    SqlCommand cmd;
	public Class1()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void execute(string str)
    {
        cmd = new SqlCommand(str,cn);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
    }
    public static void BindDDList(DropDownList abc)
    {

        if (abc is DropDownList)
        {
            abc.Items.Clear();
            abc.Items.Insert(0, "--Select--");
            abc.Items[0].Value = "0";
            abc.AppendDataBoundItems = true;
            abc.DataBind();
        }
    }
}