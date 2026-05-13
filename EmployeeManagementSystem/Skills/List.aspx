<%@ Page Language="C#" AutoEventWireup="true"
MasterPageFile="~/Site.Master"
CodeBehind="List.aspx.cs"
Inherits="EmployeeManagementSystem.Skills.List" %>

<asp:Content
    ID="Content1"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <div class="container">

        <div class="row">

            <div class="col-md-10 col-md-offset-1">

                <div class="panel panel-info">

                    <div class="panel-heading">

                        <h3 class="panel-title">
                            Skills List
                        </h3>

                    </div>

                    <div class="panel-body">

                        <div style="margin-bottom:20px;">

                            <a href="Create.aspx"
                               class="btn btn-success">

                                Add New Skill

                            </a>

                        </div>

                        <asp:GridView
                            ID="gvSkills"
                            runat="server"
                            AutoGenerateColumns="false"
                            CssClass="table table-bordered table-hover table-striped">

                            <Columns>

                                <asp:BoundField
                                    DataField="SkillId"
                                    HeaderText="Skill ID" />

                                <asp:BoundField
                                    DataField="SkillName"
                                    HeaderText="Skill Name" />

                                <asp:TemplateField
                                    HeaderText="Actions">

                                    <ItemTemplate>

                                        <a href='Edit.aspx?id=<%# Eval("SkillId") %>'
                                           class="btn btn-warning btn-sm">

                                            Edit

                                        </a>

                                        <a href='Delete.aspx?id=<%# Eval("SkillId") %>'
                                           class="btn btn-danger btn-sm">

                                            Delete

                                        </a>

                                    </ItemTemplate>

                                </asp:TemplateField>

                            </Columns>

                        </asp:GridView>

                    </div>

                </div>

            </div>

        </div>

    </div>

</asp:Content>