namespace Roladex.Migrations
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;

    internal sealed class Configuration : DbMigrationsConfiguration<Roladex.RoladexContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = false;
        }

        protected override void Seed(Roladex.RoladexContext context)
        {
            context.Persons.AddOrUpdate(
                new Person()
                {
                    FirstName = "Jeff",
                    LastName = "Martin",
                    Email = "jeff.martin.it@gmail.com",
                    Phone = "810-922-2770",
                    Address1 = "15500 N Uldriks Dr",
                    State = "MI",
                    City = "Battle Creek",
                    Zipcode = "49017"
                },
                new Person()
                {
                    FirstName = "Jane",
                    LastName = "Austin",
                    Email = "jAustin@gmail.com",
                    Phone = "810-555-2770",
                    Address1 = "155 Easy St",
                    State = "MI",
                    City = "Battle Creek",
                    Zipcode = "49017"
                },
                new Person()
                {
                    FirstName = "Dickens",
                    LastName = "Charles",
                    Email = "cDickens@gmail.com",
                    Phone = "810-922-7700",
                    Address1 = "156 12th St",
                    State = "CA",
                    City = "San Jose",
                    Zipcode = "95112"
                },
                new Person()
                {
                    FirstName = "April",
                    LastName = "Showers",
                    CompanyName = "May Flowers",
                    Email = "ashowers@mayflowers.com",
                    Phone = "975-555-1212",
                    AltPhone = "810-555-1212",
                    Address1 = "155 RT 65",
                    Address2 = "Box 155",
                    City = "Santa Clara",
                    State = "CA",
                    Zipcode = "95050"
                }, new Person()
                {
                    FirstName = "Sophia",
                    LastName = "Showers",
                    CompanyName = "May Flowers",
                    Email = "sshowers@mayflowers.com",
                    Phone = "975-555-1212",
                    AltPhone = "810-555-2121",
                    Address1 = "155 RT 65",
                    Address2 = "Box 155",
                    City = "Santa Clara",
                    State = "CA",
                    Zipcode = "95050"
                }, new Person()
                {
                    FirstName = "April",
                    LastName = "Showers",
                    CompanyName = "May Flowers",
                    Email = "ashowers@mayflowers.com",
                    Phone = "975-555-1212",
                    AltPhone = "810-555-1212",
                    Address1 = "155 RT 65",
                    Address2 = "Box 155",
                    City = "Santa Clara",
                    State = "CA",
                    Zipcode = "95050"
                }, new Person()
                {
                    FirstName = "Noah",
                    LastName = "Grayson",
                    CompanyName = "Grayson and Sons",
                    Email = "Noah@gs.com",
                    Phone = "654-555-1212",
                    AltPhone = "654-654-1212",
                    Address1 = "125 Main St",
                    Address2 = "",
                    City = "Santa Clara",
                    State = "CA",
                    Zipcode = "95051"
                }, new Person()
                {
                    FirstName = "Riely",
                    LastName = "Grayson",
                    CompanyName = "Grayson and Sons",
                    Email = "Riely@gs.com",
                    Phone = "654-555-1212",
                    AltPhone = "654-654-2222",
                    Address1 = "125 Main St",
                    Address2 = "",
                    City = "Santa Clara",
                    State = "CA",
                    Zipcode = "95051"
                }, new Person()
                {
                    FirstName = "Caden",
                    LastName = "Grayson",
                    CompanyName = "Grayson and Sons",
                    Email = "Caden@gs.com",
                    Phone = "654-555-1212",
                    AltPhone = "654-654-333",
                    Address1 = "125 Main St",
                    Address2 = "",
                    City = "Santa Clara",
                    State = "CA",
                    Zipcode = "95051"
                }, new Person()
                {
                    FirstName = "Mia",
                    LastName = "Jackson",
                    CompanyName = "Jackson Automotive",
                    Email = "Mia@jacksonauto.com",
                    Phone = "658-555-6349",
                    AltPhone = "",
                    Address1 = "654 Eagle Ln",
                    Address2 = "",
                    City = "Flint",
                    State = "MI",
                    Zipcode = "48439"
                }, new Person()
                {
                    FirstName = "Emily",
                    LastName = "Bird",
                    CompanyName = "Bird Bath by Bird",
                    Email = "bird@bird.com",
                    Phone = "535-215-6584",
                    AltPhone = "",
                    Address1 = "6548 Blue Bird Rd",
                    Address2 = "",
                    City = "Kalamazoo",
                    State = "MI",
                    Zipcode = "49003"
                }
            );

        }
    }
}
