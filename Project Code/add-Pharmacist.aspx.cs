using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class add_Pharmacist : System.Web.UI.Page
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
    protected void btnAddPharmacist_Click(object sender, EventArgs e)
    {
        string firstName, surName, age, mobile, email, address, password;
        
        firstName = txtUserName.Text;
        surName = txtSurName.Text;
        age = txtAge.Text;
        mobile = txtMobile.Text;
        email = txtEmail.Text;
        address = txtAddress.Text;
        password = txtPassword.Text;


        SqlConnection sc = new SqlConnection();
        sc.ConnectionString = ConfigurationManager.ConnectionStrings[1].ToString();

        SqlCommand command = new SqlCommand();
        command.Connection = sc;
        command.CommandType = System.Data.CommandType.StoredProcedure;
        command.CommandText = "SP_Pharmacist_Insert";


        command.Parameters.Add(new SqlParameter("@First_Name", firstName));
        command.Parameters.Add(new SqlParameter("@Surname", surName));
        command.Parameters.Add(new SqlParameter("@Age", age));
        command.Parameters.Add(new SqlParameter("@Mobile", mobile));
        command.Parameters.Add(new SqlParameter("@Email", email));
        command.Parameters.Add(new SqlParameter("@Address", address));
        command.Parameters.Add(new SqlParameter("@Password", password));

        command.Connection.Open();

        int row_affected = command.ExecuteNonQuery();

        sc.Close();


        if (row_affected > 0)
        {
            Response.Redirect("~/Home.aspx");
        }

    }
}