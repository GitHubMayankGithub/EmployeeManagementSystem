using System;
using System.Linq;
using System.Web.UI.WebControls;
using EmployeeManagementSystem.Data;
using EmployeeManagementSystem.Models;

namespace EmployeeManagementSystem.Employees
{
    public partial class Create : System.Web.UI.Page
    {
        AppDbContext db = new AppDbContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadSkills();
            }
        }

        private void LoadSkills()
        {
            cblSkills.DataSource = db.Skills.ToList();

            cblSkills.DataTextField = "SkillName";

            cblSkills.DataValueField = "SkillId";

            cblSkills.DataBind();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();

            bool emailExists = db.Employees
                .Any(emp => emp.Email == email);

            if (emailExists)
            {
                lblMessage.Text = "Email already exists";

                return;
            }

            Employee employee = new Employee();

            employee.EmployeeCode = txtEmployeeCode.Text.Trim();

            employee.FirstName = txtFirstName.Text.Trim();

            employee.LastName = txtLastName.Text.Trim();

            employee.Email = email;

            db.Employees.Add(employee);

            db.SaveChanges();

            foreach (ListItem item in cblSkills.Items)
            {
                if (item.Selected)
                {
                    EmployeeSkill employeeSkill =
                        new EmployeeSkill();

                    employeeSkill.EmployeeId =
                        employee.EmployeeId;

                    employeeSkill.SkillId =
                        Convert.ToInt32(item.Value);

                    db.EmployeeSkills.Add(employeeSkill);
                }
            }

            db.SaveChanges();

            lblMessage.Text =
                "Employee saved successfully";
        }
    }
}