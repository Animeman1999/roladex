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
                }
            );

        }
    }
}
