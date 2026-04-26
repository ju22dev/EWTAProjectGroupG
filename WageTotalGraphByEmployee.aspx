<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="WageTotalGraphByEmployee.aspx.cs" Inherits="WageTotalGraphByEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="container body-content">
            
    <table class="nav-justified">
        <tbody><tr>
            <td style="font-size: large"><strong>Wage Totals Graph By Employee </strong></td>
        </tr>
        <tr>
            <td><strong><span style="font-size: large">Employee:</span> </strong>
                    <select name="ctl00$MainContent$DropDownList1" onchange="javascript:setTimeout('__doPostBack(\'ctl00$MainContent$DropDownList1\',\'\')', 0)" id="MainContent_DropDownList1" style="height:17px;width:153px;">
	<option selected="selected" value="1">Mustafa Çoruh</option>
	<option value="2">Burak Oguz</option>
	<option value="3">Nazife Çoruh</option>
	<option value="4">Burak Tanış</option>
	<option value="7">Ahmet Güzel</option>
	<option value="8">Nihal Diniz</option>
	<option value="9">Buğra Kayılı</option>
	<option value="12">Mustafa Can</option>

</select>
                </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                    <img id="MainContent_Chart1" src="/WEBDers/ChartImg.axd?i=chart_a2177fc97f104593b6f098b249e24b01_0.png&amp;g=345fcfc05d9646d69955a48b8c0fee5f" alt="" style="height:300px;width:523px;border-width:0px;">
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

