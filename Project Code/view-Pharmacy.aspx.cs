using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class view_Pharmacy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView2.Visible = false;
        if (Session["Pharmacy"] == null)
            Response.Redirect("~/login.aspx");
    }
    protected void btnMakeReport_Click(object sender, EventArgs e)
    {
        GridView2.Visible = true;
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        Session["Pharmacy"] = null;
    }
}