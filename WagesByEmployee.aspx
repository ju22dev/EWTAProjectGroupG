<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="WagesByEmployee.aspx.cs" Inherits="WagesByEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="container body-content">
            
    <table class="nav-justified">
        <tbody><tr>
            <td style="font-size: large"><strong>Wages By Employee Report</strong></td>
        </tr>
        <tr>
            <td><strong><span style="font-size: large">Choose an Employee:</span> </strong>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Empl_Name" DataValueField="Empl_ID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Empl_ID], [Empl_Name] FROM [tbl_Employees]"></asp:SqlDataSource>
&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Wage_ID" DataSourceID="SqlDataSource2" Width="802px">
                    <Columns>
                        <asp:BoundField DataField="Wage_ID" HeaderText="Wage_ID" InsertVisible="False" ReadOnly="True" SortExpression="Wage_ID" />
                        <asp:BoundField DataField="Wage_Date" HeaderText="Wage_Date" SortExpression="Wage_Date" />
                        <asp:BoundField DataField="Wage_Total" HeaderText="Wage_Total" ReadOnly="True" SortExpression="Wage_Total" />
                        <asp:BoundField DataField="Month_ID" HeaderText="Month_ID" SortExpression="Month_ID" />
                        <asp:BoundField DataField="Wage_Year" HeaderText="Wage_Year" ReadOnly="True" SortExpression="Wage_Year" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Wage_ID], [Wage_Date], [Wage_Total], [Month_ID], [Wage_Year] FROM [tbl_Wages] WHERE ([Empl_ID] = @Empl_ID)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" DefaultValue="1" Name="Empl_ID" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                        <div>

</div>
                    </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                        <asp:Button ID="Button1" runat="server" PostBackUrl="~/Reports.aspx" Text="Close Report" />
&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px">
                        
                    &nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
            <td>
                        
                    </td>
        </tr>
    </tbody></table>

        </div>
</asp:Content>

