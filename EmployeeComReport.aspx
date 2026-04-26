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
                    <div>
	<table cellspacing="0" rules="all" border="1" id="MainContent_GridView1" style="width:1021px;border-collapse:collapse;">
		<tbody><tr>
			<th scope="col"><a href="javascript:__doPostBack('ctl00$MainContent$GridView1','Sort$Empl_ID')">EmplID</a></th><th scope="col"><a href="javascript:__doPostBack('ctl00$MainContent$GridView1','Sort$Empl_Name')">Name</a></th><th scope="col"><a href="javascript:__doPostBack('ctl00$MainContent$GridView1','Sort$Empl_Phone')">Work Phone</a></th><th scope="col"><a href="javascript:__doPostBack('ctl00$MainContent$GridView1','Sort$Empl_Cell')">Cell Phone</a></th><th scope="col"><a href="javascript:__doPostBack('ctl00$MainContent$GridView1','Sort$Empl_Email')">Email</a></th><th scope="col"><a href="javascript:__doPostBack('ctl00$MainContent$GridView1','Sort$Dept_Name')">Department</a></th>
		</tr><tr>
			<td>17</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>Data Processing</td>
		</tr><tr>
			<td>1</td><td>Mustafa Çoruh</td><td>123 333 5555   </td><td>5371234567     </td><td>boguz@gmail.com</td><td>Marketing</td>
		</tr><tr>
			<td>2</td><td>Burak Oguz</td><td>123 444 6666   </td><td>5371234567     </td><td>boguz@gmail.com</td><td>Marketing</td>
		</tr><tr>
			<td>3</td><td>Nazife Çoruh</td><td>123 666 8888   </td><td>222222222      </td><td>mc@mc.com</td><td>Data Processing</td>
		</tr><tr>
			<td>4</td><td>Burak Tanış</td><td>123 999 0000   </td><td>5371234567     </td><td>boguz@gmail.com</td><td>Marketing</td>
		</tr><tr>
			<td>6</td><td>Ahmet Oguz</td><td>&nbsp;</td><td>5371234567     </td><td>boguz@gmail.com</td><td>Marketing</td>
		</tr><tr>
			<td>7</td><td>Ahmet Güzel</td><td>&nbsp;</td><td>5371234567     </td><td>boguz@gmail.com</td><td>Marketing</td>
		</tr><tr>
			<td>8</td><td>Nihal Diniz</td><td>&nbsp;</td><td>5371234567     </td><td>boguz@gmail.com</td><td>Marketing</td>
		</tr><tr>
			<td>9</td><td>Buğra Kayılı</td><td>&nbsp;</td><td>5371234567     </td><td>boguz@gmail.com</td><td>Marketing</td>
		</tr><tr>
			<td>12</td><td>Mustafa Can</td><td>&nbsp;</td><td>67300          </td><td>mustafa.coruh@nisantasi.edu.tr</td><td>Data Processing</td>
		</tr><tr>
			<td colspan="6"><table>
				<tbody><tr>
					<td><span>1</span></td><td><a href="javascript:__doPostBack('ctl00$MainContent$GridView1','Page$2')">2</a></td>
				</tr>
			</tbody></table></td>
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

