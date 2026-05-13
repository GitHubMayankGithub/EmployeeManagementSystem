<%@ Page Language="C#" AutoEventWireup="true"
CodeBehind="Edit.aspx.cs"
Inherits="EmployeeManagementSystem.Skills.Edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Edit Skill</title>
</head>

<body>

    <form id="form1" runat="server">

        <div>

            <h2>Edit Skill</h2>

            <table>

                <tr>
                    <td>Skill Name</td>

                    <td>

                        <asp:TextBox
                            ID="txtSkillName"
                            runat="server">
                        </asp:TextBox>

                    </td>
                </tr>

                <tr>
                    <td colspan="2">

                        <asp:Button
                            ID="btnUpdate"
                            runat="server"
                            Text="Update Skill"
                            OnClick="btnUpdate_Click" />

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