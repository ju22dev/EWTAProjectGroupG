<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="WageDataEntry.aspx.cs" Inherits="WageDataEntry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="nav-justified">
        <tbody><tr>
            <td colspan="2" style="font-size: x-large"><strong>Wage Data Entry Form</strong></td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 201px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 201px">Choose an Employee:</td>
            <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Empl_Name" DataValueField="Empl_ID">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Empl_ID], [Empl_Name] FROM [tbl_Employees]"></asp:SqlDataSource>
&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 201px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 201px">Paid Date:</td>
            <td>
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 201px">Paid Amount:</td>
            <td>
                    &nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 201px">Paid Commission:</td>
            <td>
                    &nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 201px">Wage Month:</td>
            <td>
                    &nbsp;<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Column1" DataValueField="Column1">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6
UNION SELECT 7 UNION SELECT 8 UNION SELECT 9 UNION SELECT 10 UNION SELECT 11 UNION SELECT 12"></asp:SqlDataSource>
                </td>
        </tr>
        <tr>
            <td class="modal-sm" colspan="2">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 201px">
                    &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save Data" />
                </td>
            <td>
                    &nbsp;<asp:Button ID="Button2" runat="server" PostBackUrl="~/Forms.aspx" Text="Close Form" />
                </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 201px">
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [tbl_Wages] WHERE [Wage_ID] = @Wage_ID" InsertCommand="INSERT INTO [tbl_Wages] ([Empl_ID], [Wage_Date], [Wage_Amount], [Wage_Commission], [Month_ID]) VALUES (@Empl_ID, @Wage_Date, @Wage_Amount, @Wage_Commission, @Month_ID)" SelectCommand="SELECT [Empl_ID], [Wage_Date], [Wage_Amount], [Wage_Commission], [Month_ID], [Wage_ID] FROM [tbl_Wages] WHERE ([Empl_ID] = @Empl_ID)" UpdateCommand="UPDATE [tbl_Wages] SET [Empl_ID] = @Empl_ID, [Wage_Date] = @Wage_Date, [Wage_Amount] = @Wage_Amount, [Wage_Commission] = @Wage_Commission, [Month_ID] = @Month_ID WHERE [Wage_ID] = @Wage_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="Wage_ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Empl_ID" Type="Int32" />
                        <asp:Parameter DbType="Date" Name="Wage_Date" />
                        <asp:Parameter Name="Wage_Amount" Type="Decimal" />
                        <asp:Parameter Name="Wage_Commission" Type="Decimal" />
                        <asp:Parameter Name="Month_ID" Type="Int32" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" DefaultValue="1" Name="Empl_ID" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Empl_ID" Type="Int32" />
                        <asp:Parameter DbType="Date" Name="Wage_Date" />
                        <asp:Parameter Name="Wage_Amount" Type="Decimal" />
                        <asp:Parameter Name="Wage_Commission" Type="Decimal" />
                        <asp:Parameter Name="Month_ID" Type="Int32" />
                        <asp:Parameter Name="Wage_ID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 201px">
                    
                </td>
            <td>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 201px">
                    
                </td>
            <td>
                    
                </td>
        </tr>
    </tbody></table>
</asp:Content>

