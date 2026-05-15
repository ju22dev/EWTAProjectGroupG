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
                        &nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="205px"></asp:TextBox>
                    </td>
            <td style="width: 158px">Last Name:</td>
            <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="158px"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td style="width: 168px">Birth Date:</td>
            <td style="width: 135px">
                        <asp:TextBox ID="TextBox10" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
            <td style="width: 158px">Start Date:</td>
            <td>
                        <asp:TextBox ID="TextBox13" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td style="height: 20px; width: 168px;">Gender:</td>
            <td style="height: 20px; width: 135px;">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                            <asp:ListItem Value="1">Male</asp:ListItem>
                            <asp:ListItem Value="2">Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
            <td style="height: 20px; width: 158px;">Is Employee Active?</td>
            <td style="height: 20px">
                        &nbsp;<asp:CheckBox ID="CheckBox1" runat="server" />
                    </td>
        </tr>
        <tr>
            <td style="height: 20px; width: 168px;">Title:</td>
            <td style="height: 20px; width: 135px;">
                        &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource4" DataTextField="Title" DataValueField="LK_ID">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [LK_ID], [Title] FROM [tbl_Lookups]"></asp:SqlDataSource>
                    </td>
            <td style="height: 20px; width: 158px;">Department:</td>
            <td style="height: 20px">
                        &nbsp;<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="Dept_Name" DataValueField="Dept_ID">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT DISTINCT [Dept_Name], [Dept_ID] FROM [tbl_Departments]"></asp:SqlDataSource>
                    </td>
        </tr>
        <tr>
            <td style="width: 168px">Email:</td>
            <td style="width: 135px">
                        &nbsp;<asp:TextBox ID="TextBox9" runat="server" Width="210px"></asp:TextBox>
                    </td>
            <td style="width: 158px">Cell Phone:</td>
            <td>
                        <asp:TextBox ID="TextBox4" runat="server" Width="154px"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td style="width: 168px">Address:</td>
            <td>
                        <asp:TextBox ID="TextBox7" runat="server" Width="316px"></asp:TextBox>
                    </td>
            <td>
                        &nbsp;</td>
            <td>
                        &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px; width: 168px;">City:</td>
            <td style="height: 20px; width: 135px;">
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </td>
            <td style="height: 20px; width: 158px;">Province:</td>
            <td style="height: 20px">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td style="width: 168px" rowspan="2">CV Info:</td>
            <td rowspan="2">
                        <asp:TextBox ID="TextBox12" runat="server" Height="112px" Width="543px"></asp:TextBox>
                    </td>
            <td>
                        CV Web:</td>
            <td>
                        <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td>
                        CV File:</td>
            <td>
                        <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td style="width: 168px; height: 19px;"></td>
            <td style="width: 135px; height: 19px;">
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </td>
            <td style="width: 158px; height: 19px;"></td>
            <td style="height: 19px"></td>
        </tr>
        <tr>
            <td style="width: 168px">&nbsp;</td>
            <td style="width: 135px">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Save Record" />
&nbsp;</td>
            <td style="width: 158px">
                        &nbsp;<asp:Button ID="Button2" runat="server" Text="Close Form" PostBackUrl="~/Forms.aspx" />
                    </td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [tbl_Employees] WHERE [Empl_ID] = @Empl_ID" InsertCommand="INSERT INTO [tbl_Employees] ([Empl_FName], [Empl_LName], [Empl_BDate], [Empl_Start_Date], [Empl_Address], [Empl_City], [Empl_Province], [Empl_Cell], [Dept_ID], [Gender_ID], [Title_ID], [Empl_Email], [Is_Empl_Active], [Empl_CV], [Empl_CV_File], [Empl_CV_Web]) VALUES (@Empl_FName, @Empl_LName, @Empl_BDate, @Empl_Start_Date, @Empl_Address, @Empl_City, @Empl_Province, @Empl_Cell, @Dept_ID, @Gender_ID, @Title_ID, @Empl_Email, @Is_Empl_Active, @Empl_CV, @Empl_CV_File, @Empl_CV_Web)" SelectCommand="SELECT [Empl_ID], [Empl_FName], [Empl_LName], [Empl_BDate], [Empl_Start_Date], [Empl_Address], [Empl_City], [Empl_Province], [Empl_Cell], [Dept_ID], [Gender_ID], [Title_ID], [Empl_Email], [Is_Empl_Active], [Empl_CV], [Empl_CV_File], [Empl_CV_Web] FROM [tbl_Employees]" UpdateCommand="UPDATE [tbl_Employees] SET [Empl_FName] = @Empl_FName, [Empl_LName] = @Empl_LName, [Empl_BDate] = @Empl_BDate, [Empl_Start_Date] = @Empl_Start_Date, [Empl_Address] = @Empl_Address, [Empl_City] = @Empl_City, [Empl_Province] = @Empl_Province, [Empl_Cell] = @Empl_Cell, [Dept_ID] = @Dept_ID, [Gender_ID] = @Gender_ID, [Title_ID] = @Title_ID, [Empl_Email] = @Empl_Email, [Is_Empl_Active] = @Is_Empl_Active, [Empl_CV] = @Empl_CV, [Empl_CV_File] = @Empl_CV_File, [Empl_CV_Web] = @Empl_CV_Web WHERE [Empl_ID] = @Empl_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="Empl_ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Empl_FName" Type="String" />
                        <asp:Parameter Name="Empl_LName" Type="String" />
                        <asp:Parameter DbType="Date" Name="Empl_BDate" />
                        <asp:Parameter DbType="Date" Name="Empl_Start_Date" />
                        <asp:Parameter Name="Empl_Address" Type="String" />
                        <asp:Parameter Name="Empl_City" Type="String" />
                        <asp:Parameter Name="Empl_Province" Type="String" />
                        <asp:Parameter Name="Empl_Cell" Type="String" />
                        <asp:Parameter Name="Dept_ID" Type="Int32" />
                        <asp:Parameter Name="Gender_ID" Type="Int32" />
                        <asp:Parameter Name="Title_ID" Type="Int32" />
                        <asp:Parameter Name="Empl_Email" Type="String" />
                        <asp:Parameter Name="Is_Empl_Active" Type="Boolean" />
                        <asp:Parameter Name="Empl_CV" Type="String" />
                        <asp:Parameter Name="Empl_CV_File" Type="String" />
                        <asp:Parameter Name="Empl_CV_Web" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Empl_FName" Type="String" />
                        <asp:Parameter Name="Empl_LName" Type="String" />
                        <asp:Parameter DbType="Date" Name="Empl_BDate" />
                        <asp:Parameter DbType="Date" Name="Empl_Start_Date" />
                        <asp:Parameter Name="Empl_Address" Type="String" />
                        <asp:Parameter Name="Empl_City" Type="String" />
                        <asp:Parameter Name="Empl_Province" Type="String" />
                        <asp:Parameter Name="Empl_Cell" Type="String" />
                        <asp:Parameter Name="Dept_ID" Type="Int32" />
                        <asp:Parameter Name="Gender_ID" Type="Int32" />
                        <asp:Parameter Name="Title_ID" Type="Int32" />
                        <asp:Parameter Name="Empl_Email" Type="String" />
                        <asp:Parameter Name="Is_Empl_Active" Type="Boolean" />
                        <asp:Parameter Name="Empl_CV" Type="String" />
                        <asp:Parameter Name="Empl_CV_File" Type="String" />
                        <asp:Parameter Name="Empl_CV_Web" Type="String" />
                        <asp:Parameter Name="Empl_ID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
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

