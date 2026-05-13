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

</html>--%><%@ Page Language="C#" AutoEventWireup="true"
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

<%--    <p>
        <a href="Create.aspx">
            Add New Employee
        </a>
    </p>--%>

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

</asp:Content>