<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="EmployeeResignReport.aspx.cs" Inherits="EmployeeResignReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="container body-content">
            
    <table class="nav-justified">
        <tbody><tr>
            <td style="font-size: x-large"><strong>Employee Resign Report</strong></td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Empl_ID" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="Empl_ID" HeaderText="Empl_ID" InsertVisible="False" ReadOnly="True" SortExpression="Empl_ID" />
                        <asp:BoundField DataField="Empl_Name" HeaderText="Empl_Name" ReadOnly="True" SortExpression="Empl_Name" />
                        <asp:BoundField DataField="Empl_Start_Date" HeaderText="Empl_Start_Date" SortExpression="Empl_Start_Date" />
                        <asp:BoundField DataField="Empl_Left_Date" HeaderText="Empl_Left_Date" SortExpression="Empl_Left_Date" />
                        <asp:BoundField DataField="Empl_Left_Reason" HeaderText="Empl_Left_Reason" SortExpression="Empl_Left_Reason" />
                        <asp:BoundField DataField="Empl_Cell" HeaderText="Empl_Cell" SortExpression="Empl_Cell" />
                        <asp:BoundField DataField="Empl_Email" HeaderText="Empl_Email" SortExpression="Empl_Email" />
                        <asp:BoundField DataField="Dept_ID" HeaderText="Dept_ID" SortExpression="Dept_ID" />
                        <asp:BoundField DataField="Title_ID" HeaderText="Title_ID" SortExpression="Title_ID" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT Empl_ID, Empl_Name, Empl_Start_Date, Empl_Left_Date, Empl_Left_Reason, Empl_Cell, Empl_Email, Dept_ID, Title_ID FROM tbl_Employees WHERE (Is_Empl_Active = 0)"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;<asp:Button ID="Button1" runat="server" PostBackUrl="~/Reports.aspx" Text="Close Report" />
            </td>
        </tr>
        <tr>
            <td>
                    
                </td>
        </tr>
    </tbody></table>

        </div>
</asp:Content>

