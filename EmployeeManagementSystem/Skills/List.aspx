<%@ Page Language="C#" AutoEventWireup="true"
CodeBehind="List.aspx.cs"
Inherits="EmployeeManagementSystem.Skills.List" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Skills List</title>
</head>

<body>

    <form id="form1" runat="server">

        <div>

            <h2>Skills List</h2>

            <p>
                <a href="Create.aspx">Add New Skill</a>
            </p>

            <asp:GridView
                ID="gvSkills"
                runat="server"
                AutoGenerateColumns="false"
                CellPadding="5"
                BorderWidth="1">

       <Columns>

    <asp:BoundField
        DataField="SkillId"
        HeaderText="ID" />

    <asp:BoundField
        DataField="SkillName"
        HeaderText="Skill Name" />

    <asp:TemplateField HeaderText="Actions">

        <ItemTemplate>

            <a href='Edit.aspx?id=<%# Eval("SkillId") %>'>
                Edit
            </a>

            |

            <a href='Delete.aspx?id=<%# Eval("SkillId") %>'>
                Delete
            </a>

        </ItemTemplate>

    </asp:TemplateField>

</Columns>

            </asp:GridView>

        </div>

    </form>

</body>

</html>