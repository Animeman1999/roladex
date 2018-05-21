//Ties the model to the database
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace Roladex
{
    public class RoladexContext: DbContext
    {
        public RoladexContext() :base()
        {
            Database.SetInitializer<RoladexContext>(new CreateDatabaseIfNotExists<RoladexContext>());
        }

        public DbSet<PersonModel> Persons { get; set; }
    }
}