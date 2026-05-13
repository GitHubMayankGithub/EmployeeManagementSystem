namespace EmployeeManagementSystem.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class InitialCreate : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Employees",
                c => new
                    {
                        EmployeeId = c.Int(nullable: false, identity: true),
                        EmployeeCode = c.String(),
                        FirstName = c.String(),
                        LastName = c.String(),
                        Email = c.String(),
                    })
                .PrimaryKey(t => t.EmployeeId);
            
            CreateTable(
                "dbo.EmployeeSkills",
                c => new
                    {
                        EmployeeId = c.Int(nullable: false),
                        SkillId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.EmployeeId, t.SkillId })
                .ForeignKey("dbo.Employees", t => t.EmployeeId, cascadeDelete: true)
                .ForeignKey("dbo.Skills", t => t.SkillId, cascadeDelete: true)
                .Index(t => t.EmployeeId)
                .Index(t => t.SkillId);
            
            CreateTable(
                "dbo.Skills",
                c => new
                    {
                        SkillId = c.Int(nullable: false, identity: true),
                        SkillName = c.String(),
                    })
                .PrimaryKey(t => t.SkillId);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.EmployeeSkills", "SkillId", "dbo.Skills");
            DropForeignKey("dbo.EmployeeSkills", "EmployeeId", "dbo.Employees");
            DropIndex("dbo.EmployeeSkills", new[] { "SkillId" });
            DropIndex("dbo.EmployeeSkills", new[] { "EmployeeId" });
            DropTable("dbo.Skills");
            DropTable("dbo.EmployeeSkills");
            DropTable("dbo.Employees");
        }
    }
}
