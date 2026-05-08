using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EmployeeDataEntryWizard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "First Name: " + TextBox2.Text;
        Label2.Text = "Last Name: " + TextBox3.Text;
        Label3.Text = "Gender: " + RadioButtonList1.SelectedItem;
        Label4.Text = "Title: " + DropDownList2.SelectedItem;
        Label5.Text = "Department: " + DropDownList3.SelectedItem;
        Label6.Text = "Birth Date: " + TextBox1.Text;
        Label7.Text = "Start Date: " + TextBox4.Text;
        Label8.Text = "Cell: " + TextBox6.Text;
        Label9.Text = "Work Phone: " + TextBox5.Text;
        Label10.Text = "Email: " + TextBox7.Text;
        Label11.Text = "Address: " + TextBox8.Text;
        Label12.Text = "City: " + DropDownList4.SelectedItem;
        Label13.Text = "Province: " + DropDownList5.SelectedItem;
    }

    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {
        try
        {
            SqlDataSource5.InsertParameters["Empl_FName"].DefaultValue = TextBox2.Text;
            SqlDataSource5.InsertParameters["Empl_LName"].DefaultValue = TextBox3.Text;
            SqlDataSource5.InsertParameters["Gender_ID"].DefaultValue = RadioButtonList1.SelectedValue;
            SqlDataSource5.InsertParameters["Title_ID"].DefaultValue = DropDownList2.SelectedValue;
            SqlDataSource5.InsertParameters["Dept_ID"].DefaultValue = DropDownList3.SelectedValue;
            SqlDataSource5.InsertParameters["Empl_BDate"].DefaultValue = TextBox1.Text;
            SqlDataSource5.InsertParameters["Empl_Start_Date"].DefaultValue = TextBox4.Text;
            SqlDataSource5.InsertParameters["Empl_Cell"].DefaultValue = TextBox6.Text;
            SqlDataSource5.InsertParameters["Empl_Phone"].DefaultValue= TextBox5.Text;
            SqlDataSource5.InsertParameters["Empl_Email"].DefaultValue = TextBox7.Text;
            SqlDataSource5.InsertParameters["Empl_Address"].DefaultValue = TextBox8.Text;
            SqlDataSource5.InsertParameters["Empl_City"].DefaultValue = DropDownList4.SelectedValue;
            SqlDataSource5.InsertParameters["Empl_Province"].DefaultValue = DropDownList5.SelectedValue;
            SqlDataSource5.InsertParameters["Is_Empl_Active"].DefaultValue = "true";


            int s = SqlDataSource5.Insert();

            if (s > 0)
            {
                Label14.Text = "New Staff Information : <b>" + TextBox3.Text + "</b><p> Successfully Added ";
                Label14.Visible = true;
            }
            else
            {
                Label14.Text = "New Employee Registration Failed. Please try again after checking your data";
                Label14.Visible = true;
            }
        }
        catch (Exception ex)
        {
            Label14.Text = ex.Message;
        }
    }
}