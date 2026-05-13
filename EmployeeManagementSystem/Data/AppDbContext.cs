using System.Data.Entity;
using EmployeeManagementSystem.Models;

namespace EmployeeManagementSystem.Data
{
    public class AppDbContext : DbContext
    {
        public AppDbContext() : base("DefaultConnection")
        {
        }

        public DbSet<Employee> Employees { get; set; }

        public DbSet<Skill> Skills { get; set; }

        public DbSet<EmployeeSkill> EmployeeSkills { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            //Composite Primary Key EF6 cannot automatically infer this properly.So we configure manually. ::.HasKey(es => new { es.EmployeeId, es.SkillId })
            modelBuilder.Entity<EmployeeSkill>()
                .HasKey(es => new { es.EmployeeId, es.SkillId });

            modelBuilder.Entity<EmployeeSkill>()
                .HasRequired(es => es.Employee)
                .WithMany(e => e.EmployeeSkills)
                .HasForeignKey(es => es.EmployeeId);

            modelBuilder.Entity<EmployeeSkill>()
                .HasRequired(es => es.Skill)
                .WithMany(s => s.EmployeeSkills)
                .HasForeignKey(es => es.SkillId);

            base.OnModelCreating(modelBuilder);
        }
    }
}