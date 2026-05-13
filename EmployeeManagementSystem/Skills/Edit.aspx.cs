using EmployeeManagementSystem.Data;
using EmployeeManagementSystem.Models;
using EmployeeManagementSystem.Data;
using EmployeeManagementSystem.Models;
using System;
using System.Linq;

namespace EmployeeManagementSystem.Skills
{
    public partial class Edit : System.Web.UI.Page
    {
        AppDbContext db = new AppDbContext();

        int skillId = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            skillId = Convert.ToInt32(Request.QueryString["id"]);

            if (!IsPostBack)
            {
                LoadSkill();
            }
        }

        private void LoadSkill()
        {
            Skill skill = db.Skills.Find(skillId);

            txtSkillName.Text = skill.SkillName;
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            Skill skill = db.Skills.Find(skillId);

            string skillName = txtSkillName.Text.Trim();

            bool exists = db.Skills.Any(s =>
                s.SkillName == skillName &&
                s.SkillId != skillId);

            if (exists)
            {
                lblMessage.Text = "Skill already exists";
                return;
            }

            skill.SkillName = skillName;

            db.SaveChanges();

            Response.Redirect("List.aspx");
        }
    }
}