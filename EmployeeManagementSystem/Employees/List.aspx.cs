using System;
using System.Linq;
using EmployeeManagementSystem.Data;

namespace EmployeeManagementSystem.Employees
{
    public partial class List : System.Web.UI.Page
    {
        AppDbContext db = new AppDbContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadEmployees();
            }
        }

        //private void LoadEmployees()
        //{
        //    var employees = db.Employees
        //        .ToList()
        //        .Select(emp => new
        //        {
        //            emp.EmployeeId,
        //            emp.EmployeeCode,
        //            emp.FirstName,
        //            emp.LastName,
        //            emp.Email,

        //            Skills = string.Join(", ",

        //                emp.EmployeeSkills
        //                .Select(es => es.Skill.SkillName))
        //        })
        //        .ToList();

        //    gvEmployees.DataSource = employees;

        //    gvEmployees.DataBind();
        //}
        private void LoadEmployees()
        {
            var employees = db.Employees
                .ToList()
                .Select(emp => new
                {
                    emp.EmployeeId,
                    emp.EmployeeCode,
                    emp.FirstName,
                    emp.LastName,
                    emp.Email,

                    Skills = string.Join(", ",

                        emp.EmployeeSkills
                        .Select(es => es.Skill.SkillName))
                })
                .ToList();

            gvEmployees.DataSource = employees;

            gvEmployees.DataBind();
        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string searchSkill =
                txtSkillSearch.Text.Trim().ToLower();

            var employees = db.Employees
                .ToList()
                .Where(emp =>
                    emp.EmployeeSkills.Any(es =>
                        es.Skill.SkillName
                        .ToLower()
                        .Contains(searchSkill)))
                .Select(emp => new
                {
                    emp.EmployeeId,
                    emp.EmployeeCode,
                    emp.FirstName,
                    emp.LastName,
                    emp.Email,

                    Skills = string.Join(", ",
                        emp.EmployeeSkills
                        .Select(es => es.Skill.SkillName))
                })
                .ToList();

            gvEmployees.DataSource = employees;

            gvEmployees.DataBind();
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtSkillSearch.Text = "";

            LoadEmployees();
        }
    }
}