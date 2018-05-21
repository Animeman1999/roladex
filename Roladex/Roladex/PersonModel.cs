//Model of a person.
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace Roladex
{
    public class PersonModel
    {
        public int PersonID { get; set; }
        public string LastName { get; set; }

        public string FirstName { get; set; }

        public string CompanyName { get; set; }

        public string Email { get; set; }
        public string Phone { get; set; }

        public string AltPhone { get; set; }

        public string Address1 { get; set; }

        public string Address2 { get; set; }

        public string State { get; set; }

        public string Zipcode { get; set; }

    }
}