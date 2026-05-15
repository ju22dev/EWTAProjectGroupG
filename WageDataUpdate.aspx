<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="WageDataUpdate.aspx.cs" Inherits="WageDataUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="nav-justified">
        <tbody><tr>
            <td style="font-size: x-large"><strong>Update Employee Wages</strong></td>
        </tr>
        <tr>
            <td><strong><span style="font-size: large">Choose an Employee:</span> 
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Empl_Name" DataValueField="Empl_ID" AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Empl_ID], [Empl_Name] FROM [tbl_Employees]"></asp:SqlDataSource>
&nbsp;</strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                    <div>
	                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Wage_ID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="789px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField ShowEditButton="True" />
                                <asp:BoundField DataField="Wage_ID" HeaderText="Wage ID" SortExpression="Wage_ID" InsertVisible="False" ReadOnly="True" />
                                <asp:BoundField DataField="Wage_Date" HeaderText="Wage Date" SortExpression="Wage_Date" />
                                <asp:BoundField DataField="Month_ID" HeaderText="Month" SortExpression="Month_ID" />
                                <asp:BoundField DataField="Wage_Amount" HeaderText="Wage Amount" SortExpression="Wage_Amount" />
                                <asp:BoundField DataField="Wage_Commission" HeaderText="Wage Commission" SortExpression="Wage_Commission" />
                            </Columns>
                            <EditRowStyle BackColor="#7C6F57" />
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F8FAFA" />
                            <SortedAscendingHeaderStyle BackColor="#246B61" />
                            <SortedDescendingCellStyle BackColor="#D4DFE1" />
                            <SortedDescendingHeaderStyle BackColor="#15524A" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [tbl_Wages] WHERE [Wage_ID] = @Wage_ID" InsertCommand="INSERT INTO [tbl_Wages] ([Wage_Date], [Month_ID], [Wage_Amount], [Wage_Commission]) VALUES (@Wage_Date, @Month_ID, @Wage_Amount, @Wage_Commission)" SelectCommand="SELECT [Wage_ID], [Wage_Date], [Month_ID], [Wage_Amount], [Wage_Commission] FROM [tbl_Wages] WHERE ([Empl_ID] = @Empl_ID)" UpdateCommand="UPDATE [tbl_Wages] SET [Wage_Date] = @Wage_Date, [Month_ID] = @Month_ID, [Wage_Amount] = @Wage_Amount, [Wage_Commission] = @Wage_Commission WHERE [Wage_ID] = @Wage_ID">
                            <DeleteParameters>
                                <asp:Parameter Name="Wage_ID" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter DbType="Date" Name="Wage_Date" />
                                <asp:Parameter Name="Month_ID" Type="Int32" />
                                <asp:Parameter Name="Wage_Amount" Type="Decimal" />
                                <asp:Parameter Name="Wage_Commission" Type="Decimal" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" DefaultValue="1" Name="Empl_ID" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter DbType="Date" Name="Wage_Date" />
                                <asp:Parameter Name="Month_ID" Type="Int32" />
                                <asp:Parameter Name="Wage_Amount" Type="Decimal" />
                                <asp:Parameter Name="Wage_Commission" Type="Decimal" />
                                <asp:Parameter Name="Wage_ID" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
</div>
                </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                    <asp:Button ID="Button1" runat="server" PostBackUrl="~/Forms.aspx" Text="Close Form" />
&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                    
                    </td>
        </tr>
        <tr>
            <td>
                    
                </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </tbody></table>
</asp:Content>

