using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class add_Drug : System.Web.UI.Page
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
                using (SqlCommand cmd = new SqlCommand("SELECT ID, First_Name FROM TBL_Salesman"))
                {
                    cmd.CommandType = System.Data.CommandType.Text;
                    cmd.Connection = con;
                    con.Open();
                    drSales.DataSource = cmd.ExecuteReader();
                    drSales.DataTextField = "First_Name";
                    drSales.DataValueField = "ID";
                    drSales.DataBind();
                    con.Close();
                }
            }
            drCompany.Items.Insert(0, new ListItem("--Select Company--", "0"));
            drSales.Items.Insert(0, new ListItem("--Select Salesman--", "0"));
        }

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (Session["Pharmacy"] == null)
            Response.Redirect("~/login.aspx");
    }

    public static int a;
    protected void btnAddDrug_Click(object sender, EventArgs e)
    {
        string name, maxDose, minDose, preDate, expDate;
        int price, Available, company, sales;

        name = txtName.Text;
        maxDose = txtMax.Text;
        minDose = txtMin.Text;
        preDate = texPreDate.SelectedDate.ToString();
        expDate = texExpDate.SelectedDate.ToString();
        price = Convert.ToInt32(txtPrice.Text);
        Available =Convert.ToInt32(txtAvailable.Text);
        company = Convert.ToInt32(drCompany.SelectedValue);
        sales = Convert.ToInt32(drSales.SelectedValue);


        SqlConnection sc = new SqlConnection();
        sc.ConnectionString = ConfigurationManager.ConnectionStrings[1].ToString();

        SqlCommand command = new SqlCommand();
        command.Connection = sc;
        command.CommandType = System.Data.CommandType.StoredProcedure;
        command.CommandText = "SP_Drug_Insert";


        command.Parameters.Add(new SqlParameter("@Name", name));
        command.Parameters.Add(new SqlParameter("@Maximum_Dose", maxDose));
        command.Parameters.Add(new SqlParameter("@Minimum_Dose", minDose));
        command.Parameters.Add(new SqlParameter("@Prep_Date", preDate));
        command.Parameters.Add(new SqlParameter("@Exp_Date", expDate));
        command.Parameters.Add(new SqlParameter("@Price", price));
        command.Parameters.Add(new SqlParameter("@Quantity", Available));
        command.Parameters.Add(new SqlParameter("@Company_ID", company));
        command.Parameters.Add(new SqlParameter("@Salesman_ID", sales));

        command.Connection.Open();

        try
        {
            command.ExecuteNonQuery();
            a = 1;
        }
        catch (SqlException)
        {
                lbltryCatchCompany.Text = "Choosa A Pharmaceutical Company And Salesman";
        }

        if (a == 1)
            Response.Redirect("~/Home.aspx");
        sc.Close();

    }
}