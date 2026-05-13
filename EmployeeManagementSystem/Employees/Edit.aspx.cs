using System;
using System.Linq;
using System.Web.UI.WebControls;
using EmployeeManagementSystem.Data;
using EmployeeManagementSystem.Models;

namespace EmployeeManagementSystem.Employees
{
    public partial class Edit : System.Web.UI.Page
    {
        AppDbContext db = new AppDbContext();

        int employeeId = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            employeeId =
                Convert.ToInt32(Request.QueryString["id"]);

            if (!IsPostBack)
            {
                LoadSkills();

                LoadEmployee();
            }
        }

        private void LoadSkills()
        {
            cblSkills.DataSource = db.Skills.ToList();

            cblSkills.DataTextField = "SkillName";

            cblSkills.DataValueField = "SkillId";

            cblSkills.DataBind();
        }

        private void LoadEmployee()
        {
            Employee employee =
                db.Employees.Find(employeeId);

            txtEmployeeCode.Text = employee.EmployeeCode;

            txtFirstName.Text = employee.FirstName;

            txtLastName.Text = employee.LastName;

            txtEmail.Text = employee.Email;

            var selectedSkillIds =
                db.EmployeeSkills
                .Where(es => es.EmployeeId == employeeId)
                .Select(es => es.SkillId)
                .ToList();

            foreach (ListItem item in cblSkills.Items)
            {
                int skillId = Convert.ToInt32(item.Value);

                if (selectedSkillIds.Contains(skillId))
                {
                    item.Selected = true;
                }
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();

            bool emailExists = db.Employees.Any(emp =>
                emp.Email == email &&
                emp.EmployeeId != employeeId);

            if (emailExists)
            {
                lblMessage.Text =
                    "Email already exists";

                return;
            }

            Employee employee =
                db.Employees.Find(employeeId);

            employee.EmployeeCode =
                txtEmployeeCode.Text.Trim();

            employee.FirstName =
                txtFirstName.Text.Trim();

            employee.LastName =
                txtLastName.Text.Trim();

            employee.Email = email;

            var oldMappings =
                db.EmployeeSkills
                .Where(es => es.EmployeeId == employeeId)
                .ToList();

            db.EmployeeSkills.RemoveRange(oldMappings);

            foreach (ListItem item in cblSkills.Items)
            {
                if (item.Selected)
                {
                    EmployeeSkill employeeSkill =
                        new EmployeeSkill();

                    employeeSkill.EmployeeId =
                        employeeId;

                    employeeSkill.SkillId =
                        Convert.ToInt32(item.Value);

                    db.EmployeeSkills.Add(employeeSkill);
                }
            }

            db.SaveChanges();

            Response.Redirect("List.aspx");
        }
    }
}