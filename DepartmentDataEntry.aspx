<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="DepartmentDataEntry.aspx.cs" Inherits="DepartmentDataEntry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <table class="nav-justified">
        <tbody>
            <tr>
                <td colspan="3" style="font-size: x-large">
                    <strong>Departments Data Entry and Update Form</strong></td>
            </tr>
            <tr>
                <td style="width: 195px">&nbsp;</td>
                <td style="width: 414px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">

                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="619px">
                        <Columns>
                            <asp:CommandField ShowEditButton="True" />
                            <asp:BoundField DataField="Dept_ID" HeaderText="Dept ID" InsertVisible="False" ReadOnly="True" SortExpression="Dept_ID" />
                            <asp:BoundField DataField="Dept_Name" HeaderText="Dept Name" SortExpression="Dept_Name" />
                            <asp:BoundField DataField="Dept_Phone" HeaderText="Dept Phone" SortExpression="Dept_Phone" />
                            <asp:BoundField DataField="Empl_Name" HeaderText="Manager Name" SortExpression="Empl_Name" ReadOnly="True" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [tbl_Departments] WHERE [Dept_ID] = @Dept_ID" InsertCommand="INSERT INTO [tbl_Departments] ([Dept_Name], [Dept_Phone], [Manager_ID]) VALUES (@Dept_Name, @Dept_Phone, @Manager_ID)" SelectCommand="SELECT tbl_Departments.Dept_ID, tbl_Departments.Dept_Name, tbl_Departments.Dept_Phone, vw_ManagerList.Empl_Name FROM tbl_Departments INNER JOIN vw_ManagerList ON tbl_Departments.Manager_ID = vw_ManagerList.Empl_ID" UpdateCommand="UPDATE [tbl_Departments] SET [Dept_Name] = @Dept_Name, [Dept_Phone] = @Dept_Phone, [Manager_ID] = @Manager_ID WHERE [Dept_ID] = @Dept_ID">
                        <DeleteParameters>
                            <asp:Parameter Name="Dept_ID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Dept_Name" Type="String" />
                            <asp:Parameter Name="Dept_Phone" Type="String" />
                            <asp:Parameter Name="Manager_ID" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Dept_Name" Type="String" />
                            <asp:Parameter Name="Dept_Phone" Type="String" />
                            <asp:Parameter Name="Manager_ID" Type="Int32" />
                            <asp:Parameter Name="Dept_ID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>

            <tr>
                <td colspan="3">

                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>

            <table id="tbl_newDept" runat="server" visible="false">
                <tr>
                    <td style="width: 71px">DepartmentName:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 71px">DepartmentPhone:</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 71px">Manager:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Empl_Name" DataValueField="Empl_ID">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT Empl_ID, Empl_Name FROM tbl_Employees WHERE (Is_Empl_Manager = 1)"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>

            </tr>
                <td>

                </td>
            <tr>
            </tr>
            <tr>
                <td style="width: 195px">
                    <asp:Button ID="Button1" runat="server" Text="Open New Dept Entry" Width="183px" OnClick="Button1_Click" />
                </td>
                <td style="width: 414px">
                    <asp:Button ID="Button2" runat="server" PostBackUrl="~/Forms.aspx" Text="Close Form" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 195px"></td>
                <td style="width: 414px"></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 195px; height: 22px;"></td>
                <td style="width: 414px; height: 22px;"></td>
                <td style="height: 22px"></td>
            </tr>
            <tr>
                <td style="width: 195px"></td>
                <td style="width: 414px"></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 195px">&nbsp;</td>
                <td style="width: 414px"></td>
                <td></td>
            </tr>
            <tr>
                <td style="width: 195px">&nbsp;</td>
                <td style="width: 414px"></td>
                <td></td>
            </tr>
        </tbody>
    </table>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [tbl_Departments] WHERE [Dept_ID] = @Dept_ID" InsertCommand="INSERT INTO [tbl_Departments] ([Dept_Name], [Dept_Phone], [Manager_ID]) VALUES (@Dept_Name, @Dept_Phone, @Manager_ID)" SelectCommand="SELECT [Dept_ID], [Dept_Name], [Dept_Phone], [Manager_ID] FROM [tbl_Departments]" UpdateCommand="UPDATE [tbl_Departments] SET [Dept_Name] = @Dept_Name, [Dept_Phone] = @Dept_Phone, [Manager_ID] = @Manager_ID WHERE [Dept_ID] = @Dept_ID">
        <DeleteParameters>
            <asp:Parameter Name="Dept_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Dept_Name" Type="String" />
            <asp:Parameter Name="Dept_Phone" Type="String" />
            <asp:Parameter Name="Manager_ID" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Dept_Name" Type="String" />
            <asp:Parameter Name="Dept_Phone" Type="String" />
            <asp:Parameter Name="Manager_ID" Type="Int32" />
            <asp:Parameter Name="Dept_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

