<%@ Page Language="C#" AutoEventWireup="true"
MasterPageFile="~/Site.Master"
CodeBehind="Create.aspx.cs"
Inherits="EmployeeManagementSystem.Skills.Create" %>

<asp:Content
    ID="Content1"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <div class="container">

        <div class="row">

            <div class="col-md-6 col-md-offset-3">

                <div class="panel panel-info">

                    <div class="panel-heading">

                        <h3 class="panel-title">
                            Add Skill
                        </h3>

                    </div>

                    <div class="panel-body">

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

                        </div>

                        <div class="form-group">

                            <asp:Button
                                ID="btnSave"
                                runat="server"
                                Text="Save Skill"
                                CssClass="btn btn-info"
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