using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WageDataEntry : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlDataSource3.InsertParameters["Empl_ID"].DefaultValue = DropDownList1.SelectedValue;
            SqlDataSource3.InsertParameters["Wage_Date"].DefaultValue = TextBox1.Text;
            SqlDataSource3.InsertParameters["Wage_Amount"].DefaultValue = TextBox2.Text;
            SqlDataSource3.InsertParameters["Wage_Commission"].DefaultValue = TextBox3.Text;
            SqlDataSource3.InsertParameters["Month_ID"].DefaultValue = DropDownList2.SelectedValue;

            int s = SqlDataSource3.Insert();

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