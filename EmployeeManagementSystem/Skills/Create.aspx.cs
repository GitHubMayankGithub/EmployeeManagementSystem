using System;
using System.Linq;
using EmployeeManagementSystem.Data;
using EmployeeManagementSystem.Models;

namespace EmployeeManagementSystem.Skills
{
    public partial class Create : System.Web.UI.Page
    {
        AppDbContext db = new AppDbContext();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string skillName = txtSkillName.Text.Trim();

            bool exists = db.Skills
                .Any(s => s.SkillName == skillName);

            if (exists)
            {
                lblMessage.Text = "Skill already exists";
                return;
            }

            Skill skill = new Skill();

            skill.SkillName = skillName;

            db.Skills.Add(skill);

            db.SaveChanges();

            lblMessage.Text = "Skill saved successfully";

            txtSkillName.Text = "";
        }
    }
}