namespace Roladex.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Initial : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.People",
                c => new
                    {
                        PersonID = c.Int(nullable: false, identity: true),
                        LastName = c.String(),
                        FirstName = c.String(),
                        CompanyName = c.String(),
                        Email = c.String(),
                        Phone = c.String(),
                        AltPhone = c.String(),
                        Address1 = c.String(),
                        Address2 = c.String(),
                        State = c.String(),
                        City = c.String(),
                        Zipcode = c.String(),
                    })
                .PrimaryKey(t => t.PersonID);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.People");
        }
    }
}
