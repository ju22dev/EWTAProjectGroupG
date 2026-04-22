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
                <input type="submit" name="ctl00$MainContent$Button1" value="Employees By Department Report" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$MainContent$Button1&quot;, &quot;&quot;, false, &quot;&quot;, &quot;EWTA_EmployeesByDepartment.aspx&quot;, false, false))" id="MainContent_Button1" style="width:330px;font-size: small; font-weight: bold">
                </strong>
            </td>
            <td cstyle="text-align: center" class="text-center">
                <strong>
                <input type="submit" name="ctl00$MainContent$Button2" value="Wages By Employee Report" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$MainContent$Button2&quot;, &quot;&quot;, false, &quot;&quot;, &quot;EWTA_WagesByEmployee.aspx&quot;, false, false))" id="MainContent_Button2" style="width:330px;margin-top: 0; font-size: small; font-weight: bold;">
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
                <input type="submit" name="ctl00$MainContent$Button4" value="Employee Wage Graph By Year" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$MainContent$Button4&quot;, &quot;&quot;, false, &quot;&quot;, &quot;EWTA_WageTotalGraphByYear.aspx&quot;, false, false))" id="MainContent_Button4" style="width:330px;font-size: small; font-weight: bold">
                </strong>
            </td>
            <td style="text-align: center">
                <strong>
                <input type="submit" name="ctl00$MainContent$Button3" value="Employee Communication Report" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$MainContent$Button3&quot;, &quot;&quot;, false, &quot;&quot;, &quot;EWTA_EmployeeComReport.aspx&quot;, false, false))" id="MainContent_Button3" style="width:330px;font-size: small; font-weight: bold">
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
                <input type="submit" name="ctl00$MainContent$Button5" value="Wage Graph By Employee " onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$MainContent$Button5&quot;, &quot;&quot;, false, &quot;&quot;, &quot;EWTA_WageTotalGraphByEmployee.aspx&quot;, false, false))" id="MainContent_Button5" style="width:330px;font-size: small; font-weight: bold">
                </strong>
            </td>
            <td style="text-align: center">
                <strong>
                <input type="submit" name="ctl00$MainContent$Button6" value="Employee Resign Report" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$MainContent$Button6&quot;, &quot;&quot;, false, &quot;&quot;, &quot;EWTA_EmployeeResignReport.aspx&quot;, false, false))" id="MainContent_Button6" style="width:330px;font-size: small; font-weight: bold">
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

