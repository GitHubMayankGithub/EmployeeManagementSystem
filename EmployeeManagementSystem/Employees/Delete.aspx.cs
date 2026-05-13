using System;
using System.Linq;
using EmployeeManagementSystem.Data;
using EmployeeManagementSystem.Models;

namespace EmployeeManagementSystem.Employees
{
    public partial class Delete : System.Web.UI.Page
    {
        AppDbContext db = new AppDbContext();

        int employeeId = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            employeeId =
                Convert.ToInt32(Request.QueryString["id"]);

            if (!IsPostBack)
            {
                LoadEmployee();
            }
        }

        private void LoadEmployee()
        {
            Employee employee =
                db.Employees.Find(employeeId);

            if (employee != null)
            {
                lblEmployee.Text =
                    employee.FirstName + " " +
                    employee.LastName;
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            Employee employee =
                db.Employees.Find(employeeId);

            if (employee != null)
            {
                var mappings =
                    db.EmployeeSkills
                    .Where(es => es.EmployeeId == employeeId)
                    .ToList();

                db.EmployeeSkills.RemoveRange(mappings);

                db.Employees.Remove(employee);

                db.SaveChanges();
            }

            Response.Redirect("List.aspx");
        }
    }
}