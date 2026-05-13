<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master"
AutoEventWireup="true"
CodeBehind="Create.aspx.cs"
Inherits="EmployeeManagementSystem.Skills.Create" %>

<asp:Content ID="Content1"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <h2>Add Skill</h2>

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
                    ID="btnSave"
                    runat="server"
                    Text="Save Skill"
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

</asp:Content>