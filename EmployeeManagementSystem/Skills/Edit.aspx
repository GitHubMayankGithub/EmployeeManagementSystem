<%@ Page Language="C#" AutoEventWireup="true"
MasterPageFile="~/Site.Master"
CodeBehind="Edit.aspx.cs"
Inherits="EmployeeManagementSystem.Skills.Edit" %>

<asp:Content
    ID="Content1"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <div class="container">

        <div class="row">

            <div class="col-md-6 col-md-offset-3">

                <div class="panel panel-warning">

                    <div class="panel-heading">

                        <h3 class="panel-title">
                            Edit Skill
                        </h3>

                    </div>

                    <div class="panel-body">

                        <asp:ValidationSummary
                            ID="vsSkill"
                            runat="server"
                            ForeColor="Red"
                            HeaderText="Please fix the following errors:"
                            CssClass="alert alert-danger" />

                        <div class="form-group">

                            <label>
                                Skill Name
                            </label>

                            <asp:TextBox
                                ID="txtSkillName"
                                runat="server"
                                CssClass="form-control"
                                placeholder="Enter skill name">
                            </asp:TextBox>

                            <asp:RequiredFieldValidator
                                ID="rfvSkillName"
                                runat="server"
                                ControlToValidate="txtSkillName"
                                ErrorMessage="Skill Name is required"
                                ForeColor="Red"
                                Display="Dynamic">
                            </asp:RequiredFieldValidator>

                        </div>

                        <div class="form-group">

                            <asp:Button
                                ID="btnUpdate"
                                runat="server"
                                Text="Update Skill"
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