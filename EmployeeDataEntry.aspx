<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="EmployeeDataEntry.aspx.cs" Inherits="EmployeeDataEntry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="nav-justified">
        <tbody><tr>
            <td class="text-center" colspan="4" style="font-size: x-large"><strong>Employee Data Entry Form</strong></td>
        </tr>
        <tr>
            <td style="width: 168px">&nbsp;</td>
            <td style="width: 135px">&nbsp;</td>
            <td style="width: 158px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 168px">First Name:</td>
            <td style="width: 135px">
                        <input name="ctl00$MainContent$TextBox1" type="text" id="MainContent_TextBox1">
                    </td>
            <td style="width: 158px">Last Name:</td>
            <td>
                        <input name="ctl00$MainContent$TextBox2" type="text" id="MainContent_TextBox2">
                    </td>
        </tr>
        <tr>
            <td style="width: 168px">Birth Date:</td>
            <td style="width: 135px">
                        <input name="ctl00$MainContent$TextBox3" type="date" id="MainContent_TextBox3">
                    </td>
            <td style="width: 158px">Start Date:</td>
            <td>
                        <input name="ctl00$MainContent$TextBox4" type="date" id="MainContent_TextBox4">
                    </td>
        </tr>
        <tr>
            <td style="height: 20px; width: 168px;">Gender:</td>
            <td style="height: 20px; width: 135px;">
                        <table id="MainContent_RadioButtonList1">
	<tbody><tr>
		<td><input id="MainContent_RadioButtonList1_0" type="radio" name="ctl00$MainContent$RadioButtonList1" value="1" onclick="javascript:setTimeout('__doPostBack(\'ctl00$MainContent$RadioButtonList1$0\',\'\')', 0)"><label for="MainContent_RadioButtonList1_0">Woman</label></td>
	</tr><tr>
		<td><input id="MainContent_RadioButtonList1_1" type="radio" name="ctl00$MainContent$RadioButtonList1" value="2" onclick="javascript:setTimeout('__doPostBack(\'ctl00$MainContent$RadioButtonList1$1\',\'\')', 0)"><label for="MainContent_RadioButtonList1_1">Man</label></td>
	</tr>
</tbody></table>
                    </td>
            <td style="height: 20px; width: 158px;">Is Employee Active?</td>
            <td style="height: 20px">
                        <input id="MainContent_CheckBox1" type="checkbox" name="ctl00$MainContent$CheckBox1">
                    </td>
        </tr>
        <tr>
            <td style="height: 20px; width: 168px;">Title:</td>
            <td style="height: 20px; width: 135px;">
                        <select name="ctl00$MainContent$DropDownList3" onchange="javascript:setTimeout('__doPostBack(\'ctl00$MainContent$DropDownList3\',\'\')', 0)" id="MainContent_DropDownList3">
	<option value="1">DBA</option>
	<option value="2">Manager</option>
	<option value="3">Accountant</option>
	<option value="4">Sales Rep</option>
	<option value="5">CIO</option>
	<option value="6">CEO</option>

</select>
                    </td>
            <td style="height: 20px; width: 158px;">Department:</td>
            <td style="height: 20px">
                        <select name="ctl00$MainContent$DropDownList4" onchange="javascript:setTimeout('__doPostBack(\'ctl00$MainContent$DropDownList4\',\'\')', 0)" id="MainContent_DropDownList4">
	<option value="1">Data Processing</option>
	<option value="2">Marketing</option>
	<option value="3">Sales</option>
	<option value="4">Accounting</option>
	<option value="5">Finance</option>
	<option value="6">Production</option>

</select>
                    </td>
        </tr>
        <tr>
            <td style="width: 168px">Email:</td>
            <td style="width: 135px">
                        <input name="ctl00$MainContent$TextBox5" type="email" id="MainContent_TextBox5" style="width:372px;">
                    </td>
            <td style="width: 158px">Cell Phone:</td>
            <td>
                        <input name="ctl00$MainContent$TextBox6" type="tel" id="MainContent_TextBox6" style="width:246px;">
                    </td>
        </tr>
        <tr>
            <td style="width: 168px">Address:</td>
            <td colspan="3">
                        <input name="ctl00$MainContent$TextBox7" type="text" id="MainContent_TextBox7" style="width:1030px;">
                    </td>
        </tr>
        <tr>
            <td style="height: 20px; width: 168px;">City:</td>
            <td style="height: 20px; width: 135px;">
                        <select name="ctl00$MainContent$DropDownList1" onchange="javascript:setTimeout('__doPostBack(\'ctl00$MainContent$DropDownList1\',\'\')', 0)" id="MainContent_DropDownList1">
	<option value="Kavacık">Kavacık</option>
	<option value="Sincan">Sincan</option>
	<option value="Kdz. Ereğli">Kdz. Ereğli</option>
	<option value="Alaplı">Alaplı</option>
	<option value="Şişli">Şişli</option>
	<option value="Ataşehir">Ataşehir</option>
	<option value="Beykoz">Beykoz</option>
	<option value="Nülifer">Nülifer</option>
	<option value="Develi">Develi</option>
	<option value="Devrek">Devrek</option>
	<option value="Çaycuma">Çaycuma</option>
	<option value="Kilimli">Kilimli</option>

</select>
                    </td>
            <td style="height: 20px; width: 158px;">Province:</td>
            <td style="height: 20px">
                        <select name="ctl00$MainContent$DropDownList2" onchange="javascript:setTimeout('__doPostBack(\'ctl00$MainContent$DropDownList2\',\'\')', 0)" id="MainContent_DropDownList2">
	<option value="İstanbul">İstanbul</option>
	<option value="Ankara">Ankara</option>
	<option value="Bursa">Bursa</option>
	<option value="Zonguldak">Zonguldak</option>
	<option value="Sakarya">Sakarya</option>
	<option value="İzmir">İzmir</option>
	<option value="Kocaeli">Kocaeli</option>
	<option value="Bartın">Bartın</option>
	<option value="Ağrı">Ağrı</option>
	<option value="Kayseri">Kayseri</option>
	<option value="Adana">Adana</option>
	<option value="Niğde">Niğde</option>

</select>
                    </td>
        </tr>
        <tr>
            <td style="width: 168px">CV Info:</td>
            <td colspan="3">
                        <textarea name="ctl00$MainContent$TextBox8" rows="2" cols="20" id="MainContent_TextBox8" style="height:103px;width:1031px;"></textarea>
                    </td>
        </tr>
        <tr>
            <td style="width: 168px">&nbsp;</td>
            <td style="width: 135px">&nbsp;</td>
            <td style="width: 158px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 168px">&nbsp;</td>
            <td style="width: 135px">
                        <input type="submit" name="ctl00$MainContent$Button2" value="Save Record" id="MainContent_Button2" style="width:178px;">
                    </td>
            <td style="width: 158px">
                        <input type="submit" name="ctl00$MainContent$Button1" value="Close Form" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$MainContent$Button1&quot;, &quot;&quot;, false, &quot;&quot;, &quot;EWTA_Forms.aspx&quot;, false, false))" id="MainContent_Button1" style="width:178px;">
                    </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 168px">&nbsp;</td>
            <td style="width: 135px">
                        
                    </td>
            <td style="width: 158px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 168px">
                        
                    </td>
            <td style="width: 135px">
                        
                    </td>
            <td style="width: 158px">
                        
                    </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 168px">
                        
                    </td>
            <td style="width: 135px">
                        
                    </td>
            <td style="width: 158px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </tbody></table>
</asp:Content>

