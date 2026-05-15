<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>About</h2>
    <h3>Employee Wage Tracker Application (EWTA)</h3>
    <p>Employee Wage Tracking Application (EWTA) is an ASP.NET web application built with WebForm that manages employee and payroll data for an organization. It is backed by a SQL Server database consisting of tables such as: Employees, Wages, Departments, Users, and Lookups.</p>
    <p>The application allows users to enter and update employee records including personal details, contact information, department, title, and employment status through web forms and Wizard forms. Salary data can be entered and managed per employee, and existing records can be updated using GridView and DetailsView controls.</p>
    <p>On the reporting side, the application provides department-based employee and salary listings, employee communication reports, resignation reports, and annual wage graphs broken down by employee or department.</p>
</asp:Content>
