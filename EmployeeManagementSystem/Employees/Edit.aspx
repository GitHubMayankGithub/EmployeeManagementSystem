<%@ Page Language="C#" AutoEventWireup="true"
MasterPageFile="~/Site.Master"
CodeBehind="Edit.aspx.cs"
Inherits="EmployeeManagementSystem.Employees.Edit" %>

<asp:Content
    ID="Content1"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <div class="container">

        <div class="row">

            <div class="col-md-8 col-md-offset-2">

                <div class="panel panel-warning">

                    <div class="panel-heading">

                        <h3 class="panel-title">
                            Edit Employee
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

                            <asp:CheckBoxList
                                ID="cblSkills"
                                runat="server"
                                CssClass="checkbox">
                            </asp:CheckBoxList>

                        </div>

                        <div class="form-group">

                            <asp:Button
                                ID="btnUpdate"
                                runat="server"
                                Text="Update Employee"
                                CssClass="btn btn-warning"
                                OnClick="btnUpdate_Click" />

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