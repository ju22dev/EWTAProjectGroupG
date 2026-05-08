<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="EmployeeDataEntryWizard.aspx.cs" Inherits="EmployeeDataEntryWizard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="nav-justified">
        <tr>
            <td style="font-size: x-large"><strong>Employee Data Entry Wizard</strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" Width="601px" OnFinishButtonClick="Wizard1_FinishButtonClick">
                    <FinishNavigationTemplate>
                        <asp:Button ID="FinishPreviousButton" runat="server" BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" CausesValidation="False" CommandName="MovePrevious" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" Text="Previous" />
                        <asp:Button ID="FinishButton" runat="server" BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" CommandName="MoveComplete" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" Text="Finish" />
                    </FinishNavigationTemplate>
                    <HeaderStyle BackColor="#284E98" BorderColor="#EFF3FB" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />
                    <NavigationButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
                    <SideBarButtonStyle BackColor="#507CD1" Font-Names="Verdana" ForeColor="White" />
                    <SideBarStyle BackColor="#507CD1" Font-Size="0.9em" VerticalAlign="Top" />
                    <StartNavigationTemplate>
                        <asp:Button ID="StartNextButton" runat="server" BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" CommandName="MoveNext" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" Text="Next" />
                    </StartNavigationTemplate>
                    <StepNavigationTemplate>
                        <asp:Button ID="StepPreviousButton" runat="server" BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" CausesValidation="False" CommandName="MovePrevious" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" Text="Previous" />
                        <asp:Button ID="StepNextButton" runat="server" BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" CommandName="MoveNext" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" Text="Next" />
                    </StepNavigationTemplate>
                    <StepStyle Font-Size="0.8em" ForeColor="#333333" />
                    <WizardSteps>
                        <asp:WizardStep runat="server" title="Personel Data" StepType="Start">
                            <table class="nav-justified">
                                <tr>
                                    <td colspan="2"><strong>Employee Data Entry Wizard Form</strong></td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>Name:</td>
                                    <td>
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Surname:</td>
                                    <td>
                                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Birth Date:</td>
                                    <td>
                                        <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Entry Date:</td>
                                    <td>
                                        <asp:TextBox ID="TextBox4" runat="server" TextMode="Date"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Title:</td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource6" DataTextField="Title" DataValueField="LK_ID">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [LK_ID], [Title] FROM [tbl_Lookups]"></asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Gender:</td>
                                    <td>
                                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="87px">
                                            <asp:ListItem Value="1">Male</asp:ListItem>
                                            <asp:ListItem Value="2">Female</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </asp:WizardStep>
                        <asp:WizardStep runat="server" title="Communication Data">
                            <table class="nav-justified">
                                <tr>
                                    <td colspan="2"><strong>Employee Data Entry Wizard Form</strong></td>
                                </tr>
                                <tr>
                                    <td style="height: 20px; width: 106px;"></td>
                                    <td style="height: 20px">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 106px">Tel:</td>
                                    <td>
                                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 106px">Cell:</td>
                                    <td>
                                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 106px">Email:</td>
                                    <td>
                                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 106px">Department:</td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource7" DataTextField="Dept_Name" DataValueField="Dept_ID">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Dept_ID], [Dept_Name] FROM [tbl_Departments]"></asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 106px">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 106px">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 106px">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 106px">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </asp:WizardStep>
                        <asp:WizardStep runat="server" Title="Address Data">
                            <table class="nav-justified">
                                <tr>
                                    <td colspan="2"><strong>Employee Data Entry Wizard Form</strong></td>
                                </tr>
                                <tr>
                                    <td style="width: 105px">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 105px">Address:</td>
                                    <td>
                                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 105px">City:</td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource3" DataTextField="City" DataValueField="City">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [City] FROM [tbl_Lookups]"></asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 105px">Province:</td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource4" DataTextField="Province" DataValueField="Province">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Province] FROM [tbl_Lookups]"></asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 105px">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 105px">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 105px">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 105px">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 105px">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </asp:WizardStep>
                        <asp:WizardStep runat="server" Title="Finish" StepType="Finish">
                            <table class="nav-justified">
                                <tr>
                                    <td><strong>Employee Data Entry Wizard Form</strong></td>
                                </tr>
                                <tr>
                                    <td style="height: 18px"></td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label1" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 18px">
                                        <asp:Label ID="Label2" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 18px">
                                        <asp:Label ID="Label3" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 18px">
                                        <asp:Label ID="Label4" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 18px">
                                        <asp:Label ID="Label5" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 18px">
                                        <asp:Label ID="Label6" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 18px">
                                        <asp:Label ID="Label7" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 18px">
                                        <asp:Label ID="Label8" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 18px">
                                        <asp:Label ID="Label9" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 18px">
                                        <asp:Label ID="Label10" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 18px">
                                        <asp:Label ID="Label11" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 18px">
                                        <asp:Label ID="Label12" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 18px">
                                        <asp:Label ID="Label13" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 18px">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>If all data entry are correct click on END button... </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </asp:WizardStep>
                        <asp:WizardStep runat="server" Title="END" EnableViewState="False" StepType="Complete">
                            <asp:Label ID="Label14" runat="server"></asp:Label>
                        </asp:WizardStep>
                    </WizardSteps>
                </asp:Wizard>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [tbl_Employees] WHERE [Empl_ID] = @Empl_ID" InsertCommand="INSERT INTO [tbl_Employees] ([Empl_FName], [Empl_LName], [Empl_BDate], [Empl_Start_Date], [Empl_Address], [Empl_City], [Empl_Province], [Empl_Cell], [Empl_Phone], [Dept_ID], [Gender_ID], [Title_ID], [Empl_Email], [Is_Empl_Active]) VALUES (@Empl_FName, @Empl_LName, @Empl_BDate, @Empl_Start_Date, @Empl_Address, @Empl_City, @Empl_Province, @Empl_Cell, @Empl_Phone, @Dept_ID, @Gender_ID, @Title_ID, @Empl_Email, @Is_Empl_Active)" SelectCommand="SELECT [Empl_FName], [Empl_LName], [Empl_BDate], [Empl_Start_Date], [Empl_Address], [Empl_City], [Empl_Province], [Empl_Cell], [Empl_Phone], [Dept_ID], [Gender_ID], [Title_ID], [Empl_Email], [Empl_ID], [Is_Empl_Active] FROM [tbl_Employees]" UpdateCommand="UPDATE [tbl_Employees] SET [Empl_FName] = @Empl_FName, [Empl_LName] = @Empl_LName, [Empl_BDate] = @Empl_BDate, [Empl_Start_Date] = @Empl_Start_Date, [Empl_Address] = @Empl_Address, [Empl_City] = @Empl_City, [Empl_Province] = @Empl_Province, [Empl_Cell] = @Empl_Cell, [Empl_Phone] = @Empl_Phone, [Dept_ID] = @Dept_ID, [Gender_ID] = @Gender_ID, [Title_ID] = @Title_ID, [Empl_Email] = @Empl_Email, [Is_Empl_Active] = @Is_Empl_Active WHERE [Empl_ID] = @Empl_ID">
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
                        <asp:Parameter Name="Empl_Phone" Type="String" />
                        <asp:Parameter Name="Dept_ID" Type="Int32" />
                        <asp:Parameter Name="Gender_ID" Type="Int32" />
                        <asp:Parameter Name="Title_ID" Type="Int32" />
                        <asp:Parameter Name="Empl_Email" Type="String" />
                        <asp:Parameter Name="Is_Empl_Active" Type="Boolean" />
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
                        <asp:Parameter Name="Empl_Phone" Type="String" />
                        <asp:Parameter Name="Dept_ID" Type="Int32" />
                        <asp:Parameter Name="Gender_ID" Type="Int32" />
                        <asp:Parameter Name="Title_ID" Type="Int32" />
                        <asp:Parameter Name="Empl_Email" Type="String" />
                        <asp:Parameter Name="Is_Empl_Active" Type="Boolean" />
                        <asp:Parameter Name="Empl_ID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" PostBackUrl="~/Forms.aspx" Text="Close Form" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

