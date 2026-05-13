<%--<%@ Page Language="C#" AutoEventWireup="true"
CodeBehind="List.aspx.cs"
Inherits="EmployeeManagementSystem.Employees.List" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Employees List</title>
</head>

<body>

    <form id="form1" runat="server">

        <div>

            <h2>Employees List</h2>

            <p>
                <a href="Create.aspx">
                    Add New Employee
                </a>
            </p>

            <asp:GridView
                ID="gvEmployees"
                runat="server"
                AutoGenerateColumns="false"
                CellPadding="5"
                BorderWidth="1">

                <Columns>

                    <asp:BoundField
                        DataField="EmployeeCode"
                        HeaderText="Code" />

                    <asp:BoundField
                        DataField="FirstName"
                        HeaderText="First Name" />

                    <asp:BoundField
                        DataField="LastName"
                        HeaderText="Last Name" />

                    <asp:BoundField
                        DataField="Email"
                        HeaderText="Email" />

                    <asp:BoundField
                        DataField="Skills"
                        HeaderText="Skills" />

                    <asp:TemplateField
                        HeaderText="Actions">

                        <ItemTemplate>

                            <a href='Edit.aspx?id=<%# Eval("EmployeeId") %>'>
                                Edit
                            </a>

                            |

                            <a href='Delete.aspx?id=<%# Eval("EmployeeId") %>'>
                                Delete
                            </a>

                        </ItemTemplate>

                    </asp:TemplateField>

                </Columns>

            </asp:GridView>

        </div>

    </form>

</body>

</html>--%>

<%--<%@ Page Language="C#" AutoEventWireup="true"
MasterPageFile="~/Site.Master"
CodeBehind="List.aspx.cs"
Inherits="EmployeeManagementSystem.Employees.List" %>

<asp:Content
    ID="Content1"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <h2>Employees List</h2>
    <p>

    Search By Skill:

    <asp:TextBox
        ID="txtSkillSearch"
        runat="server">
    </asp:TextBox>

    <asp:Button
        ID="btnSearch"
        runat="server"
        Text="Search"
        OnClick="btnSearch_Click" />

    <asp:Button
        ID="btnReset"
        runat="server"
        Text="Reset"
        OnClick="btnReset_Click" />

</p>



    <asp:GridView
        ID="gvEmployees"
        runat="server"
        AutoGenerateColumns="false"
        CellPadding="5"
        BorderWidth="1">

        <Columns>

            <asp:BoundField
                DataField="EmployeeCode"
                HeaderText="Code" />

            <asp:BoundField
                DataField="FirstName"
                HeaderText="First Name" />

            <asp:BoundField
                DataField="LastName"
                HeaderText="Last Name" />

            <asp:BoundField
                DataField="Email"
                HeaderText="Email" />

            <asp:BoundField
                DataField="Skills"
                HeaderText="Skills" />

            <asp:TemplateField
                HeaderText="Actions">

                <ItemTemplate>

                    <a href='Edit.aspx?id=<%# Eval("EmployeeId") %>'>
                        Edit
                    </a>

                    |

                    <a href='Delete.aspx?id=<%# Eval("EmployeeId") %>'>
                        Delete
                    </a>

                </ItemTemplate>

            </asp:TemplateField>

        </Columns>

    </asp:GridView>

</asp:Content>--%>

<%@ Page Language="C#" AutoEventWireup="true"
MasterPageFile="~/Site.Master"
CodeBehind="List.aspx.cs"
Inherits="EmployeeManagementSystem.Employees.List" %>

<asp:Content
    ID="Content1"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <div class="container">

        <div class="row">

            <div class="col-md-12">

                <div class="panel panel-primary">

                    <div class="panel-heading">

                        <h3 class="panel-title">
                            Employees List
                        </h3>

                    </div>

                    <div class="panel-body">

                        <div class="row"
                             style="margin-bottom:20px;">

                            <div class="col-md-4">

                                <asp:TextBox
                                    ID="txtSkillSearch"
                                    runat="server"
                                    CssClass="form-control"
                                    placeholder="Search by skill">
                                </asp:TextBox>

                            </div>

                            <div class="col-md-4">

                                <asp:Button
                                    ID="btnSearch"
                                    runat="server"
                                    Text="Search"
                                    CssClass="btn btn-primary"
                                    OnClick="btnSearch_Click" />

                                <asp:Button
                                    ID="btnReset"
                                    runat="server"
                                    Text="Reset"
                                    CssClass="btn btn-default"
                                    OnClick="btnReset_Click" />

                            </div>

                            <div class="col-md-4 text-right">

                                <a href="Create.aspx"
                                   class="btn btn-success">

                                    Add Employee

                                </a>

                            </div>

                        </div>

                        <asp:GridView
                            ID="gvEmployees"
                            runat="server"
                            AutoGenerateColumns="false"
                            CssClass="table table-bordered table-hover table-striped">

                            <Columns>

                                <asp:BoundField
                                    DataField="EmployeeCode"
                                    HeaderText="Code" />

                                <asp:BoundField
                                    DataField="FirstName"
                                    HeaderText="First Name" />

                                <asp:BoundField
                                    DataField="LastName"
                                    HeaderText="Last Name" />

                                <asp:BoundField
                                    DataField="Email"
                                    HeaderText="Email" />

                                <asp:BoundField
                                    DataField="Skills"
                                    HeaderText="Skills" />

                                <asp:TemplateField
                                    HeaderText="Actions">

                                    <ItemTemplate>

                                        <a href='Edit.aspx?id=<%# Eval("EmployeeId") %>'
                                           class="btn btn-warning btn-sm">

                                            Edit

                                        </a>

                                        <a href='Delete.aspx?id=<%# Eval("EmployeeId") %>'
                                           class="btn btn-danger btn-sm">

                                            Delete

                                        </a>

                                    </ItemTemplate>

                                </asp:TemplateField>

                            </Columns>

                        </asp:GridView>

                    </div>

                </div>

            </div>

        </div>

    </div>

</asp:Content>