<%@ Page Language="C#" AutoEventWireup="true"
CodeBehind="Delete.aspx.cs"
Inherits="EmployeeManagementSystem.Employees.Delete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Delete Employee</title>
</head>

<body>

    <form id="form1" runat="server">

        <div>

            <h2>Delete Employee</h2>

            <p>
                Are you sure you want to delete this employee?
            </p>

            <p>

                <asp:Label
                    ID="lblEmployee"
                    runat="server"
                    Font-Bold="true">
                </asp:Label>

            </p>

            <asp:Button
                ID="btnDelete"
                runat="server"
                Text="Delete"
                OnClick="btnDelete_Click" />

            &nbsp;

            <a href="List.aspx">Cancel</a>

        </div>

    </form>

</body>

</html>