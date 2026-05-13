<%@ Page Language="C#" AutoEventWireup="true"
CodeBehind="Create.aspx.cs"
Inherits="EmployeeManagementSystem.Employees.Create" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Create Employee</title>
</head>

<body>

    <form id="form1" runat="server">

        <div>

            <h2>Create Employee</h2>

            <table>

                <tr>
                    <td>Employee Code</td>

                    <td>
                        <asp:TextBox
                            ID="txtEmployeeCode"
                            runat="server">
                        </asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>First Name</td>

                    <td>
                        <asp:TextBox
                            ID="txtFirstName"
                            runat="server">
                        </asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>Last Name</td>

                    <td>
                        <asp:TextBox
                            ID="txtLastName"
                            runat="server">
                        </asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>Email</td>

                    <td>
                        <asp:TextBox
                            ID="txtEmail"
                            runat="server">
                        </asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>Skills</td>

                    <td>

                        <asp:CheckBoxList
                            ID="cblSkills"
                            runat="server">
                        </asp:CheckBoxList>

                    </td>
                </tr>

                <tr>
                    <td colspan="2">

                        <asp:Button
                            ID="btnSave"
                            runat="server"
                            Text="Save Employee"
                            OnClick="btnSave_Click" />

                    </td>
                </tr>

                <tr>
                    <td colspan="2">

                        <asp:Label
                            ID="lblMessage"
                            runat="server">
                        </asp:Label>

                    </td>
                </tr>

            </table>

        </div>

    </form>

</body>

</html>