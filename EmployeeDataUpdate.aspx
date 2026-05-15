<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="EmployeeDataUpdate.aspx.cs" Inherits="EmployeeDataUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="nav-justified">
        <tbody><tr>
            <td style="font-size: x-large"><strong>Employee Data Update Form</strong></td>
        </tr>
        <tr>
            <td><strong><span class="auto-style5" style="font-size: large">Choose an Employee:</span> </strong>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Empl_Name" DataValueField="Empl_ID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Empl_ID], [Empl_Name] FROM [tbl_Employees]"></asp:SqlDataSource>
&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
            <table cellspacing="0" rules="all" border="1" id="MainContent_DetailsView1" style="height:50px;width:698px;border-collapse:collapse;">
		<tbody><tr>
			<td style="width: 359px">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Empl_ID" DataSourceID="SqlDataSource2" Height="50px" Width="706px">
                    <Fields>
                        <asp:BoundField DataField="Empl_ID" HeaderText="Employee ID" InsertVisible="False" ReadOnly="True" SortExpression="Empl_ID" />
                        <asp:BoundField DataField="Empl_FName" HeaderText="First Name" SortExpression="Empl_FName" />
                        <asp:BoundField DataField="Empl_LName" HeaderText="Last Name" SortExpression="Empl_LName" />
                        <asp:BoundField DataField="Empl_BDate" HeaderText="DOB" SortExpression="Empl_BDate" />
                        <asp:BoundField DataField="Empl_Start_Date" HeaderText="Start Date" SortExpression="Empl_Start_Date" />
                        <asp:BoundField DataField="Empl_Left_Date" HeaderText="Left Date" SortExpression="Empl_Left_Date" />
                        <asp:BoundField DataField="Empl_Left_Reason" HeaderText="Leaving Reason" SortExpression="Empl_Left_Reason" />
                        <asp:BoundField DataField="Empl_Address" HeaderText="Address" SortExpression="Empl_Address" />
                        <asp:BoundField DataField="Empl_City" HeaderText="City" SortExpression="Empl_City" />
                        <asp:BoundField DataField="Empl_Province" HeaderText="Province" SortExpression="Empl_Province" />
                        <asp:BoundField DataField="Empl_Phone" HeaderText="Phone" SortExpression="Empl_Phone" />
                        <asp:BoundField DataField="Empl_Cell" HeaderText="Cell" SortExpression="Empl_Cell" />
                        <asp:BoundField DataField="Dept_ID" HeaderText="Dept Id" SortExpression="Dept_ID" />
                        <asp:BoundField DataField="Gender_ID" HeaderText="Gender" SortExpression="Gender_ID" />
                        <asp:BoundField DataField="Title_ID" HeaderText="Title" SortExpression="Title_ID" />
                        <asp:BoundField DataField="Empl_Wage" HeaderText="Wage" SortExpression="Empl_Wage" />
                        <asp:BoundField DataField="Empl_Commission_Rate" HeaderText="Commission Rate" SortExpression="Empl_Commission_Rate" />
                        <asp:BoundField DataField="Empl_Email" HeaderText="Email" SortExpression="Empl_Email" />
                        <asp:BoundField DataField="Empl_TCN" HeaderText="TCN" SortExpression="Empl_TCN" />
                        <asp:CheckBoxField DataField="Is_Empl_Active" HeaderText="Is Active?" SortExpression="Is_Empl_Active" />
                        <asp:CheckBoxField DataField="Is_Empl_Manager" HeaderText="Is Manager?" SortExpression="Is_Empl_Manager" />
                        <asp:BoundField DataField="Empl_CV" HeaderText="CV" SortExpression="Empl_CV" />
                        <asp:BoundField DataField="Empl_CV_File" HeaderText="CV File" SortExpression="Empl_CV_File" />
                        <asp:BoundField DataField="Empl_CV_Web" HeaderText="CV Web" SortExpression="Empl_CV_Web" />
                        <asp:BoundField DataField="Entered_By" HeaderText="Entered By" SortExpression="Entered_By" />
                        <asp:BoundField DataField="Entered_Date" HeaderText="Entered Date" SortExpression="Entered_Date" />
                        <asp:CommandField ShowEditButton="True" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [tbl_Employees] WHERE [Empl_ID] = @Empl_ID" InsertCommand="INSERT INTO [tbl_Employees] ([Empl_FName], [Empl_LName], [Empl_BDate], [Empl_Start_Date], [Empl_Left_Date], [Empl_Left_Reason], [Empl_Address], [Empl_City], [Empl_Province], [Empl_Phone], [Empl_Cell], [Dept_ID], [Gender_ID], [Title_ID], [Empl_Wage], [Empl_Commission_Rate], [Empl_Email], [Empl_TCN], [Is_Empl_Active], [Is_Empl_Manager], [Empl_CV], [Empl_CV_File], [Empl_CV_Web], [Entered_By], [Entered_Date]) VALUES (@Empl_FName, @Empl_LName, @Empl_BDate, @Empl_Start_Date, @Empl_Left_Date, @Empl_Left_Reason, @Empl_Address, @Empl_City, @Empl_Province, @Empl_Phone, @Empl_Cell, @Dept_ID, @Gender_ID, @Title_ID, @Empl_Wage, @Empl_Commission_Rate, @Empl_Email, @Empl_TCN, @Is_Empl_Active, @Is_Empl_Manager, @Empl_CV, @Empl_CV_File, @Empl_CV_Web, @Entered_By, @Entered_Date)" SelectCommand="SELECT [Empl_ID], [Empl_FName], [Empl_LName], [Empl_BDate], [Empl_Start_Date], [Empl_Left_Date], [Empl_Left_Reason], [Empl_Address], [Empl_City], [Empl_Province], [Empl_Phone], [Empl_Cell], [Dept_ID], [Gender_ID], [Title_ID], [Empl_Wage], [Empl_Commission_Rate], [Empl_Email], [Empl_TCN], [Is_Empl_Active], [Is_Empl_Manager], [Empl_CV], [Empl_CV_File], [Empl_CV_Web], [Entered_By], [Entered_Date] FROM [tbl_Employees] WHERE ([Empl_ID] = @Empl_ID)" UpdateCommand="UPDATE [tbl_Employees] SET [Empl_FName] = @Empl_FName, [Empl_LName] = @Empl_LName, [Empl_BDate] = @Empl_BDate, [Empl_Start_Date] = @Empl_Start_Date, [Empl_Left_Date] = @Empl_Left_Date, [Empl_Left_Reason] = @Empl_Left_Reason, [Empl_Address] = @Empl_Address, [Empl_City] = @Empl_City, [Empl_Province] = @Empl_Province, [Empl_Phone] = @Empl_Phone, [Empl_Cell] = @Empl_Cell, [Dept_ID] = @Dept_ID, [Gender_ID] = @Gender_ID, [Title_ID] = @Title_ID, [Empl_Wage] = @Empl_Wage, [Empl_Commission_Rate] = @Empl_Commission_Rate, [Empl_Email] = @Empl_Email, [Empl_TCN] = @Empl_TCN, [Is_Empl_Active] = @Is_Empl_Active, [Is_Empl_Manager] = @Is_Empl_Manager, [Empl_CV] = @Empl_CV, [Empl_CV_File] = @Empl_CV_File, [Empl_CV_Web] = @Empl_CV_Web, [Entered_By] = @Entered_By, [Entered_Date] = @Entered_Date WHERE [Empl_ID] = @Empl_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="Empl_ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Empl_FName" Type="String" />
                        <asp:Parameter Name="Empl_LName" Type="String" />
                        <asp:Parameter DbType="Date" Name="Empl_BDate" />
                        <asp:Parameter DbType="Date" Name="Empl_Start_Date" />
                        <asp:Parameter DbType="Date" Name="Empl_Left_Date" />
                        <asp:Parameter Name="Empl_Left_Reason" Type="String" />
                        <asp:Parameter Name="Empl_Address" Type="String" />
                        <asp:Parameter Name="Empl_City" Type="String" />
                        <asp:Parameter Name="Empl_Province" Type="String" />
                        <asp:Parameter Name="Empl_Phone" Type="String" />
                        <asp:Parameter Name="Empl_Cell" Type="String" />
                        <asp:Parameter Name="Dept_ID" Type="Int32" />
                        <asp:Parameter Name="Gender_ID" Type="Int32" />
                        <asp:Parameter Name="Title_ID" Type="Int32" />
                        <asp:Parameter Name="Empl_Wage" Type="Decimal" />
                        <asp:Parameter Name="Empl_Commission_Rate" Type="Double" />
                        <asp:Parameter Name="Empl_Email" Type="String" />
                        <asp:Parameter Name="Empl_TCN" Type="String" />
                        <asp:Parameter Name="Is_Empl_Active" Type="Boolean" />
                        <asp:Parameter Name="Is_Empl_Manager" Type="Boolean" />
                        <asp:Parameter Name="Empl_CV" Type="String" />
                        <asp:Parameter Name="Empl_CV_File" Type="String" />
                        <asp:Parameter Name="Empl_CV_Web" Type="String" />
                        <asp:Parameter Name="Entered_By" Type="String" />
                        <asp:Parameter Name="Entered_Date" Type="DateTime" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" DefaultValue="1" Name="Empl_ID" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Empl_FName" Type="String" />
                        <asp:Parameter Name="Empl_LName" Type="String" />
                        <asp:Parameter DbType="Date" Name="Empl_BDate" />
                        <asp:Parameter DbType="Date" Name="Empl_Start_Date" />
                        <asp:Parameter DbType="Date" Name="Empl_Left_Date" />
                        <asp:Parameter Name="Empl_Left_Reason" Type="String" />
                        <asp:Parameter Name="Empl_Address" Type="String" />
                        <asp:Parameter Name="Empl_City" Type="String" />
                        <asp:Parameter Name="Empl_Province" Type="String" />
                        <asp:Parameter Name="Empl_Phone" Type="String" />
                        <asp:Parameter Name="Empl_Cell" Type="String" />
                        <asp:Parameter Name="Dept_ID" Type="Int32" />
                        <asp:Parameter Name="Gender_ID" Type="Int32" />
                        <asp:Parameter Name="Title_ID" Type="Int32" />
                        <asp:Parameter Name="Empl_Wage" Type="Decimal" />
                        <asp:Parameter Name="Empl_Commission_Rate" Type="Double" />
                        <asp:Parameter Name="Empl_Email" Type="String" />
                        <asp:Parameter Name="Empl_TCN" Type="String" />
                        <asp:Parameter Name="Is_Empl_Active" Type="Boolean" />
                        <asp:Parameter Name="Is_Empl_Manager" Type="Boolean" />
                        <asp:Parameter Name="Empl_CV" Type="String" />
                        <asp:Parameter Name="Empl_CV_File" Type="String" />
                        <asp:Parameter Name="Empl_CV_Web" Type="String" />
                        <asp:Parameter Name="Entered_By" Type="String" />
                        <asp:Parameter Name="Entered_Date" Type="DateTime" />
                        <asp:Parameter Name="Empl_ID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
		</tr>
	</tbody></table>

        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                        <asp:Button ID="Button1" runat="server" PostBackUrl="~/Forms.aspx" Text="Close Form" />
&nbsp;</td>
        </tr>
    </tbody></table>
</asp:Content>

