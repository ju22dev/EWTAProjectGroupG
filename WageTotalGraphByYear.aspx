<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="WageTotalGraphByYear.aspx.cs" Inherits="WageTotalGraphByYear" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="container body-content">
            
    <table class="nav-justified">
        <tbody><tr>
            <td style="font-size: large; width: 451px;"><strong>Employee Wage Totals Graph By Year</strong></td>
            <td style="font-size: large">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px; width: 451px">
                </td>
            <td style="height: 20px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 451px">Choose a year: </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Wage_Year" DataValueField="Wage_Year">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT Wage_Year FROM vw_EmployeeYearlyWages GROUP BY Wage_Year"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 451px">
                    &nbsp;</td>
            <td>
                    &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource2" Width="478px">
                    <Series>
                        <asp:Series Name="Series1" XValueMember="Empl_Name" YValueMembers="WageTotal">
                        </asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Empl_Name], [WageTotal], [Wage_Year] FROM [vw_EmployeeYearlyWages] WHERE ([Wage_Year] = @Wage_Year)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Wage_Year" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 451px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 451px">
                    
                    <asp:Button ID="Button1" runat="server" PostBackUrl="~/Reports.aspx" Text="Close Report" />
                    
                    </td>
            <td>
                    
                    &nbsp;</td>
        </tr>
    </tbody>
        </table>
        </div>
</asp:Content>

