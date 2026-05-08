<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="WageTotalGraphByEmployee.aspx.cs" Inherits="WageTotalGraphByEmployee" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="container body-content">
            
    <table class="nav-justified">
        <tbody><tr>
            <td style="font-size: large; width: 373px;"><strong>Wage Totals Graph By Employee </strong></td>
            <td style="font-size: large">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 373px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 373px">Choose an Employee: </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Empl_Name" DataValueField="Empl_Name">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT Empl_Name FROM vw_EmployeeYearlyWages GROUP BY Empl_Name"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource2" Width="510px">
                        <series>
                            <asp:Series Name="Series1" XValueMember="Wage_Year" YValueMembers="WageTotal">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Empl_Name], [Wage_Year], [WageTotal] FROM [vw_EmployeeYearlyWages] WHERE ([Empl_Name] = @Empl_Name)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" Name="Empl_Name" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
        </tr>
        <tr>
            <td style="width: 373px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 373px">
                <asp:Button ID="Button1" runat="server" PostBackUrl="~/Reports.aspx" Text="Close Report" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 373px">
                    
                    </td>
            <td>
                    
                    &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 373px">
                    
                </td>
            <td>
                    
                &nbsp;</td>
        </tr>
    </tbody></table>

        </div>
</asp:Content>

