using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DepartmentDataEntry : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (!tbl_newDept.Visible)
            {
                tbl_newDept.Visible = true;
                Button1.Text = "Save";
            }
            else
            {
                SqlDataSource3.InsertParameters["Dept_Name"].DefaultValue = TextBox1.Text;
                SqlDataSource3.InsertParameters["Dept_Phone"].DefaultValue = TextBox2.Text;
                SqlDataSource3.InsertParameters["Manager_ID"].DefaultValue = DropDownList1.SelectedValue;
                int s = SqlDataSource3.Insert();

                if (s > 0)
                {
                    Label1.Text = "New Dept Information : <b>" + TextBox1.Text + "</b><p> Successfully Added ";
                    Label1.Visible = true;
                }
                else
                {
                    Label1.Text = "New Dept Registration Failed. Please try again after checking your data";
                    Label1.Visible = true;
                }
            }

        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
    }
}