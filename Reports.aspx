<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Reports.aspx.cs" Inherits="Reports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="nav-justified">
        
        <tbody>
           <tr>
            <td style="font-size: x-large; text-align: center" colspan="2"><strong>EWTA Reports</strong></td>
        </tr>
        <tr>
            <td cstyle="text-align: center" class="text-center">
                &nbsp;</td>
            <td cstyle="text-align: center" class="text-center">
                &nbsp;</td>
        </tr>
        <tr>
            <td cstyle="text-align: center" class="text-center">
                <strong>
                <asp:Button ID="Button1" runat="server" Text="Employees By Department Report" PostBackUrl="~/EmployeesByDepartment.aspx" style="width:330px;font-size: small; font-weight: bold" />
                </strong>
            </td>
            <td cstyle="text-align: center" class="text-center">
                <strong>
                <asp:Button ID="Button2" runat="server" Text="Wages By Employee Report" PostBackUrl="~/WagesByEmployee.aspx" style="width:330px;margin-top: 0; font-size: small; font-weight: bold;" />
                </strong>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">
                <strong>
                <asp:Button ID="Button4" runat="server" Text="Employee Wage Graph By Year" PostBackUrl="~/WageTotalGraphByYear.aspx" style="width:330px;font-size: small; font-weight: bold" />
                </strong>
            </td>
            <td style="text-align: center">
                <strong>
                <asp:Button ID="Button3" runat="server" Text="Employee Communication Report" PostBackUrl="~/EmployeeComReport.aspx" style="width:330px;font-size: small; font-weight: bold" />
                </strong>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                &nbsp;</td>
            <td style="text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">
                <strong>
                <asp:Button ID="Button5" runat="server" Text="Wage Graph By Employee " PostBackUrl="~/WageTotalGraphByEmployee.aspx" style="width:330px;font-size: small; font-weight: bold" />
                </strong>
            </td>
            <td style="text-align: center">
                <strong>
                <asp:Button ID="Button6" runat="server" Text="Employee Resign Report" PostBackUrl="~/EmployeeResignReport.aspx" style="width:330px;font-size: small; font-weight: bold" />
                </strong>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                &nbsp;</td>
            <td style="text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">
                &nbsp;</td>
            <td style="text-align: center">
                &nbsp;</td>
        </tr>
    </tbody>
    </table>
</asp:Content>