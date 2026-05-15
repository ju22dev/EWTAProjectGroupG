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
            <td><strong>Choose Employee: </strong>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Empl_Name" DataValueField="Empl_ID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Empl_ID], [Empl_Name] FROM [vw_EmployeeCommunication]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Empl_ID" DataSourceID="SqlDataSource3" Width="936px">
                    <Columns>
                        <asp:BoundField DataField="Empl_ID" HeaderText="ID" ReadOnly="True" SortExpression="Empl_ID" />
                        <asp:BoundField DataField="Empl_Name" HeaderText="Name" ReadOnly="True" SortExpression="Empl_Name" />
                        <asp:BoundField DataField="Empl_Phone" HeaderText="Phone" SortExpression="Empl_Phone" />
                        <asp:BoundField DataField="Empl_Cell" HeaderText="Cell" SortExpression="Empl_Cell" />
                        <asp:BoundField DataField="Empl_Email" HeaderText="Email" SortExpression="Empl_Email" />
                        <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Empl_ID], [Empl_Name], [Empl_Phone], [Empl_Cell], [Empl_Email], [Department] FROM [vw_EmployeeCommunication] WHERE ([Empl_ID] = @Empl_ID)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" DefaultValue="1" Name="Empl_ID" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td><strong>All Employees:</strong></td>
        </tr>
        <tr>
            <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Empl_ID" DataSourceID="SqlDataSource1" Width="942px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                        <Columns>
                            <asp:BoundField DataField="Empl_ID" HeaderText="Empl ID" ReadOnly="True" SortExpression="Empl_ID" />
                            <asp:BoundField DataField="Empl_Name" HeaderText="Name" ReadOnly="True" SortExpression="Empl_Name" />
                            <asp:BoundField DataField="Empl_Phone" HeaderText="Work Phone" SortExpression="Empl_Phone" />
                            <asp:BoundField DataField="Empl_Cell" HeaderText="Cell Phone" SortExpression="Empl_Cell" />
                            <asp:BoundField DataField="Empl_Email" HeaderText="Email" SortExpression="Empl_Email" />
                            <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Empl_ID], [Empl_Name], [Empl_Phone], [Empl_Cell], [Empl_Email], [Department] FROM [vw_EmployeeCommunication]"></asp:SqlDataSource>
                </td>
        </tr>
        <tr>
            <td style="height: 20px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" PostBackUrl="~/Reports.aspx" Text="Close Report" />
&nbsp;</td>
        </tr>
        <tr>
            <td>
                    
                </td>
        </tr>
    </tbody></table>

        </div>
</asp:Content>

