<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="DepartmentDataEntry.aspx.cs" Inherits="DepartmentDataEntry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="nav-justified">
        <tbody><tr>
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
 
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Dept_ID" DataSourceID="SqlDataSource1" Width="619px">
                        <Columns>
                            <asp:CommandField ShowEditButton="True" />
                            <asp:BoundField DataField="Dept_ID" HeaderText="Dept_ID" InsertVisible="False" ReadOnly="True" SortExpression="Dept_ID" />
                            <asp:BoundField DataField="Dept_Name" HeaderText="Dept_Name" SortExpression="Dept_Name" />
                            <asp:BoundField DataField="Dept_Phone" HeaderText="Dept_Phone" SortExpression="Dept_Phone" />
                            <asp:BoundField DataField="Manager_ID" HeaderText="Manager_ID" SortExpression="Manager_ID" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [tbl_Departments] WHERE [Dept_ID] = @Dept_ID" InsertCommand="INSERT INTO [tbl_Departments] ([Dept_Name], [Dept_Phone], [Manager_ID]) VALUES (@Dept_Name, @Dept_Phone, @Manager_ID)" SelectCommand="SELECT [Dept_ID], [Dept_Name], [Dept_Phone], [Manager_ID] FROM [tbl_Departments]" UpdateCommand="UPDATE [tbl_Departments] SET [Dept_Name] = @Dept_Name, [Dept_Phone] = @Dept_Phone, [Manager_ID] = @Manager_ID WHERE [Dept_ID] = @Dept_ID">
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
            <td style="width: 195px">&nbsp;</td>
            <td style="width: 414px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 195px">&nbsp;</td>
            <td style="width: 414px">
                    &nbsp;</td>
            <td>
            &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 195px">
                    
                </td>
            <td style="width: 414px">
                    
                </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 195px; height: 22px;">
                    
                </td>
            <td style="width: 414px; height: 22px;">
                    
                </td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="width: 195px">
                    
                </td>
            <td style="width: 414px">
                    
                </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 195px">&nbsp;</td>
            <td style="width: 414px">
                    
                </td>
            <td>
                    
                </td>
        </tr>
        <tr>
            <td style="width: 195px">&nbsp;</td>
            <td style="width: 414px">

                    
                </td>
            <td>
                    
                </td>
        </tr>
    </tbody></table>
</asp:Content>

