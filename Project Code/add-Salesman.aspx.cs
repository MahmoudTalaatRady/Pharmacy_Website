using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class add_Salesman : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Pharmacy"] == null)
            Response.Redirect("~/login.aspx");

        if (!this.IsPostBack)
        {
            string constr = ConfigurationManager.ConnectionStrings[1].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT ID, Name FROM TBL_Pharma_Company"))
                {
                    cmd.CommandType = System.Data.CommandType.Text;
                    cmd.Connection = con;
                    con.Open();
                    drCompany.DataSource = cmd.ExecuteReader();
                    drCompany.DataTextField = "Name";
                    drCompany.DataValueField = "ID";
                    drCompany.DataBind();
                    con.Close();
                }
            }
            drCompany.Items.Insert(0, new ListItem("--Select Company--", "0"));
        }
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (Session["Pharmacy"] == null)
            Response.Redirect("~/login.aspx");
    }

    public static int a;
    protected void btnAddSalesman_Click(object sender, EventArgs e)
    {
        
        string firstName, surName, age, mobile, email, address, company;

        firstName = txtUserName.Text;
        surName = txtSurName.Text;
        age = txtAge.Text;
        mobile = txtMobile.Text;
        email = txtEmail.Text;
        address = txtAddress.Text;
        company = drCompany.SelectedValue;


        SqlConnection sc = new SqlConnection();
        sc.ConnectionString = ConfigurationManager.ConnectionStrings[1].ToString();

        SqlCommand command = new SqlCommand();
        command.Connection = sc;
        command.CommandType = System.Data.CommandType.StoredProcedure;
        command.CommandText = "SP_Salesman_Insert";


        command.Parameters.Add(new SqlParameter("@First_Name", firstName));
        command.Parameters.Add(new SqlParameter("@Surname", surName));
        command.Parameters.Add(new SqlParameter("@Age", age));
        command.Parameters.Add(new SqlParameter("@Mobile", mobile));
        command.Parameters.Add(new SqlParameter("@Email", email));
        command.Parameters.Add(new SqlParameter("@Address", address));
        command.Parameters.Add(new SqlParameter("@Pharmaceutical_Company", company));

        command.Connection.Open();

        try
        {
        command.ExecuteNonQuery();
        a = 1;
        }catch( SqlException ex )
        {
            if (ex.Number == 547)
                lbltryCatch.Text = "Choosa A Pharmaceutical Company";
        }

        if(a==1)
            Response.Redirect("~/Home.aspx");
        sc.Close();

        
    }
    
}