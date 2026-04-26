<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="EmployeeResignReport.aspx.cs" Inherits="EmployeeResignReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="container body-content">
            
    <table class="nav-justified">
        <tbody><tr>
            <td style="font-size: x-large"><strong>Employee Resign Report</strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                    <div>
	<table cellspacing="0" rules="all" border="1" id="MainContent_GridView1" style="width:1021px;border-collapse:collapse;">
		<tbody><tr>
			<th scope="col"><a href="javascript:__doPostBack('ctl00$MainContent$GridView1','Sort$Empl_ID')">EmplID</a></th><th scope="col"><a href="javascript:__doPostBack('ctl00$MainContent$GridView1','Sort$Empl_Name')">Name</a></th><th scope="col"><a href="javascript:__doPostBack('ctl00$MainContent$GridView1','Sort$Empl_Start_Date')">Start Date</a></th><th scope="col"><a href="javascript:__doPostBack('ctl00$MainContent$GridView1','Sort$Empl_Left_Date')">Left Date</a></th><th scope="col"><a href="javascript:__doPostBack('ctl00$MainContent$GridView1','Sort$Empl_Left_Reason')">Resign Reason</a></th><th scope="col"><a href="javascript:__doPostBack('ctl00$MainContent$GridView1','Sort$Empl_Cell')">Cell Phone</a></th><th scope="col"><a href="javascript:__doPostBack('ctl00$MainContent$GridView1','Sort$Empl_Email')">Email</a></th><th scope="col"><a href="javascript:__doPostBack('ctl00$MainContent$GridView1','Sort$Dept_Name')">Department</a></th><th scope="col"><a href="javascript:__doPostBack('ctl00$MainContent$GridView1','Sort$Title')">Title</a></th>
		</tr><tr>
			<td>7</td><td>Ahmet Güzel</td><td>11.10.2023 00:00:00</td><td>11.10.2023 00:00:00</td><td>Insufficient wage</td><td>5371234567     </td><td>boguz@gmail.com</td><td>Marketing</td><td>Accountant</td>
		</tr>
	</tbody></table>
</div>
                </td>
        </tr>
        <tr>
            <td style="height: 20px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
            <td>
                <input type="submit" name="ctl00$MainContent$Button1" value="Close Report" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$MainContent$Button1&quot;, &quot;&quot;, false, &quot;&quot;, &quot;EWTA_Reports.aspx&quot;, false, false))" id="MainContent_Button1" style="width:125px;">
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

