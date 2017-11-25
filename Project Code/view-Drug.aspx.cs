using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class view_Drug : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.Visible = false;
        GridView2.Visible = false;
        GridView3.Visible = false;
        GridView4.Visible = false;
        GridView5.Visible = false;
        if (Session["Pharmacy"] == null)
            Response.Redirect("~/login.aspx");
    }

    protected void btnShowAll_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        Session["Pharmacy"] = null;
    }

    protected void btnMakeReport_Click(object sender, EventArgs e)
    {
        GridView2.Visible = true;
    }
    protected void btnMakeReport1_Click(object sender, EventArgs e)
    {
        GridView3.Visible = true;
    }
    protected void btnMakeReport2_Click(object sender, EventArgs e)
    {
        GridView4.Visible = true;
    }
    protected void btnMakeReport3_Click(object sender, EventArgs e)
    {
        GridView5.Visible = true;
    }
    
}