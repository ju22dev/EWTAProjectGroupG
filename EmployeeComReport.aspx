<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="EmployeeComReport.aspx.cs" Inherits="EmployeeComReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="container body-content">
            
    <table class="nav-justified">
        <tbody><tr>
            <td style="font-size: x-large"><strong>Employee Communication Report</strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Empl_ID" DataSourceID="SqlDataSource1" Width="942px">
                        <Columns>
                            <asp:BoundField DataField="Empl_ID" HeaderText="Empl_ID" ReadOnly="True" SortExpression="Empl_ID" />
                            <asp:BoundField DataField="Empl_Name" HeaderText="Empl_Name" ReadOnly="True" SortExpression="Empl_Name" />
                            <asp:BoundField DataField="Empl_Phone" HeaderText="Empl_Phone" SortExpression="Empl_Phone" />
                            <asp:BoundField DataField="Empl_Cell" HeaderText="Empl_Cell" SortExpression="Empl_Cell" />
                            <asp:BoundField DataField="Empl_Email" HeaderText="Empl_Email" SortExpression="Empl_Email" />
                            <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Empl_ID], [Empl_Name], [Empl_Phone], [Empl_Cell], [Empl_Email], [Department] FROM [vw_EmployeeCommunication]"></asp:SqlDataSource>
                </td>
        </tr>
        <tr>
            <td style="height: 20px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" PostBackUrl="~/Reports.aspx" Text="Close Report" />
&nbsp;</td>
        </tr>
        <tr>
            <td>
                    
                </td>
        </tr>
    </tbody></table>

        </div>
</asp:Content>

