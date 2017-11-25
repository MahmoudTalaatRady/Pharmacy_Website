using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataBind();
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string userName = txtUserName.Text;
        string password = txtPassword.Text;

        int value = checkOk(userName, password);

        if (value == 1)
        {
            lblCheck.Text = "ok";

            Session["Pharmacy"] = value;

            Response.Redirect("~/Home.aspx");
        }
        else
        {
            lblCheck.Text = "Wrong Password & Username";
            Session["Pharmacy"] = null;
        }
    }


    private int checkOk(string userName, string password)
    {
        SqlConnection sc = new SqlConnection();
        sc.ConnectionString = ConfigurationManager.ConnectionStrings[1].ToString();

        SqlCommand command = new SqlCommand();
        command.Connection = sc;
        command.CommandType = System.Data.CommandType.StoredProcedure;
        command.CommandText = "SP_Check_Login";

        command.Parameters.Add(new SqlParameter("@First_Name ", userName));
        command.Parameters.Add(new SqlParameter("@Password ", password));

        command.Connection.Open();

        SqlDataReader drResult = command.ExecuteReader();

        if (drResult.HasRows)
        {
            // logged in 
            return 1;
        }
        else
            return 0;

     }

}