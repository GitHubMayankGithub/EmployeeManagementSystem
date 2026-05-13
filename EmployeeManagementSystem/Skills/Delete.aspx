<%@ Page Language="C#" AutoEventWireup="true"
MasterPageFile="~/Site.Master"
CodeBehind="Delete.aspx.cs"
Inherits="EmployeeManagementSystem.Skills.Delete" %>

<asp:Content
    ID="Content1"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <div class="container">

        <div class="row">

            <div class="col-md-6 col-md-offset-3">

                <div class="panel panel-danger">

                    <div class="panel-heading">

                        <h3 class="panel-title">
                            Delete Skill
                        </h3>

                    </div>

                    <div class="panel-body">

                        <div class="alert alert-danger">

                            <strong>
                                Warning!
                            </strong>

                            Are you sure you want to delete this skill?

                        </div>

                        <h4>

                            <asp:Label
                                ID="lblSkill"
                                runat="server">
                            </asp:Label>

                        </h4>

                        <br />

                        <asp:Button
                            ID="btnDelete"
                            runat="server"
                            Text="Delete Skill"
                            CssClass="btn btn-danger"
                            OnClick="btnDelete_Click" />

                        <a href="List.aspx"
                           class="btn btn-default">

                            Cancel

                        </a>

                    </div>

                </div>

            </div>

        </div>

    </div>

</asp:Content>