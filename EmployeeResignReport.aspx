<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="EmployeeResignReport.aspx.cs" Inherits="EmployeeResignReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="container body-content">
            
    <table class="nav-justified">
        <tbody><tr>
            <td style="font-size: x-large"><strong>Employee Resign Report</strong></td>
        </tr>
            <tr>
            <td style="font-size: x-large">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Empl_ID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="1113px">
                    <Columns>
                        <asp:BoundField DataField="Empl_ID" HeaderText="Employee ID" InsertVisible="False" ReadOnly="True" SortExpression="Empl_ID" />
                        <asp:BoundField DataField="Empl_Name" HeaderText="Name" ReadOnly="True" SortExpression="Empl_Name" />
                        <asp:BoundField DataField="Empl_Start_Date" HeaderText="Start Date" SortExpression="Empl_Start_Date" />
                        <asp:BoundField DataField="Empl_Left_Date" HeaderText="Left Date" SortExpression="Empl_Left_Date" />
                        <asp:BoundField DataField="Empl_Left_Reason" HeaderText="Resign Reason" SortExpression="Empl_Left_Reason" />
                        <asp:BoundField DataField="Empl_Cell" HeaderText="Cell Phone" SortExpression="Empl_Cell" />
                        <asp:BoundField DataField="Empl_Email" HeaderText="Email" SortExpression="Empl_Email" />
                        <asp:BoundField DataField="Dept_ID" HeaderText="Department" SortExpression="Dept_ID" />
                        <asp:BoundField DataField="Title_ID" HeaderText="Title" SortExpression="Title_ID" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT Empl_ID, Empl_Name, Empl_Start_Date, Empl_Left_Date, Empl_Left_Reason, Empl_Cell, Empl_Email, Dept_ID, Title_ID FROM tbl_Employees WHERE (Is_Empl_Active = 0)"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
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

