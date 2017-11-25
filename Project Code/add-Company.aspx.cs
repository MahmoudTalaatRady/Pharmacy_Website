using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class add_Comany : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Pharmacy"] == null)
            Response.Redirect("~/login.aspx");
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        Session["Pharmacy"] = null;
    }
    protected void btnAddCompany_Click(object sender, EventArgs e)
    {
        string Name, mobile, email, address;

        Name = txtName.Text;
        mobile = txtMobile.Text;
        email = txtEmail.Text;
        address = txtAddress.Text;


        SqlConnection sc = new SqlConnection();
        sc.ConnectionString = ConfigurationManager.ConnectionStrings[1].ToString();

        SqlCommand command = new SqlCommand();
        command.Connection = sc;
        command.CommandType = System.Data.CommandType.StoredProcedure;
        command.CommandText = "SP_Pharma_Company_Insert";


        command.Parameters.Add(new SqlParameter("@Name", Name));
        command.Parameters.Add(new SqlParameter("@Mobile", mobile));
        command.Parameters.Add(new SqlParameter("@Email", email));
        command.Parameters.Add(new SqlParameter("@Address", address));

        command.Connection.Open();

        int row_affected = command.ExecuteNonQuery();

        sc.Close();


        if (row_affected > 0)
        {
            Response.Redirect("~/Home.aspx");
        }
    }
}