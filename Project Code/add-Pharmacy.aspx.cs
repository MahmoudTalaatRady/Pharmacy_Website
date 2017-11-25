using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class add_Pharmacy : System.Web.UI.Page
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
                using (SqlCommand cmd = new SqlCommand("SELECT ID, Mobile FROM TBL_Patient"))
                {
                    cmd.CommandType = System.Data.CommandType.Text;
                    cmd.Connection = con;
                    con.Open();
                    drPatient.DataSource = cmd.ExecuteReader();
                    drPatient.DataTextField = "Mobile";
                    drPatient.DataValueField = "ID";
                    drPatient.DataBind();
                    con.Close();
                }
                using (SqlCommand cmd = new SqlCommand("SELECT ID, First_Name FROM TBL_Pharmacist"))
                {
                    cmd.CommandType = System.Data.CommandType.Text;
                    cmd.Connection = con;
                    con.Open();
                    drPhar.DataSource = cmd.ExecuteReader();
                    drPhar.DataTextField = "First_Name";
                    drPhar.DataValueField = "ID";
                    drPhar.DataBind();
                    con.Close();
                }
                using (SqlCommand cmd = new SqlCommand("SELECT ID, First_Name FROM TBL_Physician"))
                {
                    cmd.CommandType = System.Data.CommandType.Text;
                    cmd.Connection = con;
                    con.Open();
                    drPhy.DataSource = cmd.ExecuteReader();
                    drPhy.DataTextField = "First_Name";
                    drPhy.DataValueField = "ID";
                    drPhy.DataBind();
                    con.Close();
                }
                using (SqlCommand cmd = new SqlCommand("SELECT ID, NAME FROM TBL_Drug"))
                {
                    cmd.CommandType = System.Data.CommandType.Text;
                    cmd.Connection = con;
                    con.Open();
                    drDrug.DataSource = cmd.ExecuteReader();
                    drDrug.DataTextField = "NAME";
                    drDrug.DataValueField = "ID";
                    drDrug.DataBind();
                    con.Close();
                }

            }
            drPatient.Items.Insert(0, new ListItem("--Patient Phone--", "0"));
            drPhar.Items.Insert(0, new ListItem("--Select Pharmacist--", "0"));
            drPhy.Items.Insert(0, new ListItem("--Select Physician--", "0"));
            drDrug.Items.Insert(0, new ListItem("--Select Drug--", "0"));
        }

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        Session["Pharmacy"] = null;
    }

    public static int a;
    protected void btnAddOrder_Click(object sender, EventArgs e)
    {
        int pID, pharID, phyID, drugID;

        pID = Convert.ToInt32(drPatient.SelectedValue);
        pharID = Convert.ToInt32(drPhar.SelectedValue);
        phyID = Convert.ToInt32(drPhy.SelectedValue);
        drugID = Convert.ToInt32(drDrug.SelectedValue);


        SqlConnection sc = new SqlConnection();
        sc.ConnectionString = ConfigurationManager.ConnectionStrings[1].ToString();

        SqlCommand command = new SqlCommand();
        command.Connection = sc;
        command.CommandType = System.Data.CommandType.StoredProcedure;
        command.CommandText = "SP_Pharmacy_Order_Insert";


        command.Parameters.Add(new SqlParameter("@Patient_ID", pID));
        command.Parameters.Add(new SqlParameter("@Pharmacist_ID", pharID));
        command.Parameters.Add(new SqlParameter("@Physician_ID", phyID));
        command.Parameters.Add(new SqlParameter("@Drug_ID", drugID));

        command.Connection.Open();

        try
        {
            command.ExecuteNonQuery();
            a = 1;
        }
        catch (SqlException)
        {
            lbltryCatch.Text = "All field IS Required";
        }

        if (a == 1)
            Response.Redirect("~/Home.aspx");
        sc.Close();

    }
}