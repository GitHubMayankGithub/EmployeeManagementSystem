using System;
using System.Linq;
using EmployeeManagementSystem.Data;
using EmployeeManagementSystem.Models;

namespace EmployeeManagementSystem.Skills
{
    public partial class Delete : System.Web.UI.Page
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

            if (skill != null)
            {
                lblSkill.Text = skill.SkillName;
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            Skill skill = db.Skills.Find(skillId);

            if (skill != null)
            {
                bool isSkillUsed = db.EmployeeSkills
                    .Any(es => es.SkillId == skillId);

                if (isSkillUsed)
                {
                    lblSkill.Text =
                        "Cannot delete. Skill is assigned to employees.";

                    return;
                }

                db.Skills.Remove(skill);

                db.SaveChanges();
            }

            Response.Redirect("List.aspx");
        }
    }
}