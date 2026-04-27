using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EmployeeDataEntry : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {
            SqlDataSource1.InsertParameters["Empl_FName"].DefaultValue = TextBox1.Text;
            SqlDataSource1.InsertParameters["Empl_LName"].DefaultValue = TextBox2.Text;
            SqlDataSource1.InsertParameters["Gender_ID"].DefaultValue = RadioButtonList1.SelectedValue;
            SqlDataSource1.InsertParameters["Title_ID"].DefaultValue = DropDownList1.SelectedValue;
            SqlDataSource1.InsertParameters["Dept_ID"].DefaultValue = DropDownList2.SelectedValue;
            SqlDataSource1.InsertParameters["Empl_BDate"].DefaultValue = TextBox10.Text;
            SqlDataSource1.InsertParameters["Empl_Start_Date"].DefaultValue = TextBox13.Text;
            SqlDataSource1.InsertParameters["Empl_Cell"].DefaultValue = TextBox4.Text;
            SqlDataSource1.InsertParameters["Empl_Email"].DefaultValue = TextBox9.Text;
            SqlDataSource1.InsertParameters["Empl_Address"].DefaultValue = TextBox7.Text;
            SqlDataSource1.InsertParameters["Empl_City"].DefaultValue = TextBox6.Text;
            SqlDataSource1.InsertParameters["Empl_Province"].DefaultValue = TextBox5.Text;
            SqlDataSource1.InsertParameters["Empl_CV"].DefaultValue= TextBox12.Text;

            bool d = false;
            if (CheckBox1.Checked == true)
            {
                d = true;
            }
            SqlDataSource1.InsertParameters["Is_Empl_Active"].DefaultValue = d.ToString();

            int s = SqlDataSource1.Insert();

            if (s > 0)
            {
                Label1.Text = "New Staff Information : <b>" + TextBox1.Text + "</b><p> Successfully Added ";
                Label1.Visible = true;
            }
            else
            {
                Label1.Text = "New Employee Registration Failed. Please try again after checking your data";
                Label1.Visible = true;
            }
        }
        catch (Exception ex) 
        {
             Label1.Text = ex.Message;
        }
    }

}