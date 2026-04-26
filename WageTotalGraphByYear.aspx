<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="WageTotalGraphByYear.aspx.cs" Inherits="WageTotalGraphByYear" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="container body-content">
            
    <table class="nav-justified">
        <tbody><tr>
            <td style="font-size: large"><strong>Employee Wage Totals Graph By Year</strong></td>
        </tr>
        <tr>
            <td><strong><span style="font-size: large">Year:</span> </strong>
                    <select name="ctl00$MainContent$DropDownList1" onchange="javascript:setTimeout('__doPostBack(\'ctl00$MainContent$DropDownList1\',\'\')', 0)" id="MainContent_DropDownList1">
	<option selected="selected" value="2021">2021</option>
	<option value="2022">2022</option>
	<option value="2023">2023</option>
	<option value="2026">2026</option>

</select>
                </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                    <img id="MainContent_Chart1" src="/WEBDers/ChartImg.axd?i=chart_a2177fc97f104593b6f098b249e24b01_0.png&amp;g=5c7f3ab40fda4a09b3848ccfea7d17ed" alt="" style="height:300px;width:523px;border-width:0px;">
                </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
            <input type="submit" name="ctl00$MainContent$Button1" value="Close Report" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$MainContent$Button1&quot;, &quot;&quot;, false, &quot;&quot;, &quot;EWTA_Reports.aspx&quot;, false, false))" id="MainContent_Button1" style="width:181px;">
                    </td>
        </tr>
        <tr>
            <td>
                    
                    </td>
        </tr>
        <tr>
            <td>
                    
                </td>
        </tr>
    </tbody></table>

            <hr>
            <footer>
                <p>© 2026 - ASP.NET Application</p>
            </footer>
        </div>
</asp:Content>

