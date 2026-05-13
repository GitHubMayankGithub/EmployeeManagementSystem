using EmployeeManagementSystem.Data;
using System;
using System.Linq;

namespace EmployeeManagementSystem.Skills
{
    public partial class List : System.Web.UI.Page
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
            gvSkills.DataSource = db.Skills.ToList();

            gvSkills.DataBind();
        }
    }
}