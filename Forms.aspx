<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Forms.aspx.cs" Inherits="Forms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="nav-justified">
        <tbody><tr>
            <td class="text-center" style="font-size: x-large; text-align: center;" colspan="2"><strong>EWTA Forms</strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" style="text-align: center">
                <strong>
                <input type="submit" name="ctl00$MainContent$Button1" value="Employee Data Entry Form" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$MainContent$Button1&quot;, &quot;&quot;, false, &quot;&quot;, &quot;EmployeeDataEntry.aspx&quot;, false, false))" id="MainContent_Button1" style="width:330px;font-weight: bold; font-size: small">
                </strong>
            </td>
            <td class="text-center" style="text-align: center">
                <strong>
                <input type="submit" name="ctl00$MainContent$Button3" value="Wage Data Entry Form" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$MainContent$Button3&quot;, &quot;&quot;, false, &quot;&quot;, &quot;WageDataEntry.aspx&quot;, false, false))" id="MainContent_Button3" style="width:330px;font-weight: bold; font-size: small">
                </strong>
            </td>
        </tr>
        <tr>
            <td class="text-center" style="text-align: center">
                &nbsp;</td>
            <td class="text-center" style="text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">
                <strong>
               <input type="submit" name="ctl00$MainContent$Button2" value="Employee Data Update Form" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$MainContent$Button2&quot;, &quot;&quot;, false, &quot;&quot;, &quot;EmployeeDataUpdate.aspx&quot;, false, false))" id="MainContent_Button2" style="width:330px;font-weight: bold; font-size: small">
                </strong>
            </td>
            <td style="text-align: center">
                <strong>
                <input type="submit" name="ctl00$MainContent$Button4" value="Wage Data Update Form" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$MainContent$Button4&quot;, &quot;&quot;, false, &quot;&quot;, &quot;WageDataUpdate.aspx&quot;, false, false))" id="MainContent_Button4" style="width:330px;font-weight: bold; font-size: small">
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
                <input type="submit" name="ctl00$MainContent$Button6" value="Employee Data Entry Wizard Form" id="MainContent_Button6" style="width:330px;font-weight: bold; font-size: small">
                </strong>
            </td>
            <td style="text-align: center">
                <strong>
                <input type="submit" name="ctl00$MainContent$Button5" value="Department Data Entry and Update Form" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$MainContent$Button5&quot;, &quot;&quot;, false, &quot;&quot;, &quot;DepartmentDataEntry.aspx&quot;, false, false))" id="MainContent_Button5" style="width:330px;font-weight: bold; font-size: small">
                </strong>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </tbody></table>
</asp:Content>

