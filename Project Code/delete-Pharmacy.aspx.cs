using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class delete_Pharmacy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Pharmacy"] == null)
            Response.Redirect("~/login.aspx");
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        Session["Pharmacy"] = null;
    }

    public static int rows_affected;
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        int id;
        id = Convert.ToInt32(txtSearchID.Text);

        SqlConnection sc = new SqlConnection();
        sc.ConnectionString = ConfigurationManager.ConnectionStrings[1].ToString();

        SqlCommand command = new SqlCommand();
        command.Connection = sc;
        command.CommandType = System.Data.CommandType.StoredProcedure;
        command.CommandText = "SP_Pharmacy_Order_Delete";

        command.Parameters.Add(new SqlParameter("@ID ", id));


        command.Connection.Open();
        try
        {
            rows_affected = command.ExecuteNonQuery();
        }
        catch (SqlException)
        {
            lblOk.Text = "Delete With ID";
        }



        if (rows_affected > 0)
        {
            lblOk.Text = "Delete Is Done";
        }
        else
        {
            lblOk.Text = "Delete With ID";
        }
        sc.Close();
        GridView1.DataBind();
    }
}