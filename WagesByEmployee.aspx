<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="WagesByEmployee.aspx.cs" Inherits="WagesByEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="container body-content">
            
    <table class="nav-justified">
        <tbody><tr>
            <td style="font-size: large"><strong>Wages By Employee Report</strong></td>
        </tr>
        <tr>
            <td><strong><span style="font-size: large">Choose an Employee:</span> </strong>
                        <select name="ctl00$MainContent$DropDownList1" onchange="javascript:setTimeout('__doPostBack(\'ctl00$MainContent$DropDownList1\',\'\')', 0)" id="MainContent_DropDownList1" style="height:20px;width:186px;">
	<option selected="selected" value="17"></option>
	<option value="1">Mustafa Çoruh</option>
	<option value="2">Burak Oguz</option>
	<option value="3">Nazife Çoruh</option>
	<option value="4">Burak Tanış</option>
	<option value="6">Ahmet Oguz</option>
	<option value="7">Ahmet Güzel</option>
	<option value="8">Nihal Diniz</option>
	<option value="9">Buğra Kayılı</option>
	<option value="12">Mustafa Can</option>
	<option value="13">Ahmet Rıza</option>
	<option value="14">Nazlı Denz</option>
	<option value="15">Seral Coruk</option>
	<option value="16">Kenan Yıldız</option>

</select>
                    </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                        <div>

</div>
                    </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                        <input type="submit" name="ctl00$MainContent$Button1" value="Close Report" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$MainContent$Button1&quot;, &quot;&quot;, false, &quot;&quot;, &quot;EWTA_Reports.aspx&quot;, false, false))" id="MainContent_Button1" style="width:178px;font-weight: bold">
                        </td>
        </tr>
        <tr>
            <td style="height: 20px">
                        
                    &nbsp;&nbsp;&nbsp; </td>
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

