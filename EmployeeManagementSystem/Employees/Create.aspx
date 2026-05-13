<%@ Page Language="C#" AutoEventWireup="true"
MasterPageFile="~/Site.Master"
CodeBehind="Create.aspx.cs"
Inherits="EmployeeManagementSystem.Employees.Create" %>

<asp:Content
    ID="Content1"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <div class="container">

        <div class="row">

            <div class="col-md-8 col-md-offset-2">

                <div class="panel panel-success">

                    <div class="panel-heading">

                        <h3 class="panel-title">
                            Add Employee
                        </h3>

                    </div>

                    <div class="panel-body">

                        <div class="form-group">

                            <label>
                                Employee Code
                            </label>

                            <asp:TextBox
                                ID="txtEmployeeCode"
                                runat="server"
                                CssClass="form-control">
                            </asp:TextBox>

                        </div>

                        <div class="form-group">

                            <label>
                                First Name
                            </label>

                            <asp:TextBox
                                ID="txtFirstName"
                                runat="server"
                                CssClass="form-control">
                            </asp:TextBox>

                        </div>

                        <div class="form-group">

                            <label>
                                Last Name
                            </label>

                            <asp:TextBox
                                ID="txtLastName"
                                runat="server"
                                CssClass="form-control">
                            </asp:TextBox>

                        </div>

                        <div class="form-group">

                            <label>
                                Email
                            </label>

                            <asp:TextBox
                                ID="txtEmail"
                                runat="server"
                                CssClass="form-control">
                            </asp:TextBox>

                        </div>

                        <div class="form-group">

                            <label>
                                Skills
                            </label>

                      <%--      <asp:CheckBoxList
                                ID="cblSkills"
                                runat="server"
                                CssClass="checkbox">
                            </asp:CheckBoxList>--%>
                            <div style="
                                border:1px solid #ddd;
                                padding:15px;
                                border-radius:6px;
                                background-color:#f9f9f9;">

                                <asp:CheckBoxList
                                    ID="cblSkills"
                                    runat="server"
                                    RepeatColumns="3"
                                    RepeatDirection="Horizontal"
                                    CellPadding="10"
                                    CssClass="skill-checkbox-list">
                                </asp:CheckBoxList>

                            </div>

                        </div>

                        <div class="form-group">

                            <asp:Button
                                ID="btnSave"
                                runat="server"
                                Text="Save Employee"
                                CssClass="btn btn-success"
                                OnClick="btnSave_Click" />

                            <a href="List.aspx"
                               class="btn btn-default">

                                Back To List

                            </a>

                        </div>

                        <div class="form-group">

                            <asp:Label
                                ID="lblMessage"
                                runat="server"
                                CssClass="text-danger">
                            </asp:Label>

                        </div>

                    </div>

                </div>

            </div>

        </div>

    </div>

</asp:Content>