using System.Collections.Generic;

namespace EmployeeManagementSystem.Models
{
    public class Skill
    {
        public int SkillId { get; set; }

        public string SkillName { get; set; }

        public virtual ICollection<EmployeeSkill> EmployeeSkills { get; set; }
    }
}