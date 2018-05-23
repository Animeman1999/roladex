//Basic CRUD operations for a person.

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Roladex
{
    public class CRUD
    {

        //Select All
        public List<Person> GetAllPersons()
        {
            RoladexContext db = new RoladexContext();
            return db.Persons.ToList<Person>();
        }

        //Add a person
        public void CreatePerson(string lastName, string firstName, string companyName, string email, string phone, string altPhone,string address1, string address2,
            string state, string city, string zipcode)
        {
            RoladexContext db = new RoladexContext();
            db.Persons.Add(new Person() {LastName=lastName, FirstName=firstName, CompanyName=companyName, Email=email, Phone=phone, AltPhone=altPhone,
            Address1=address1, Address2=address2, State=state, City=city, Zipcode=zipcode});
            db.SaveChanges();
        }

        public List<Person> CheckForContact(string email, string phone, string altPhone)
        {

            RoladexContext db = new RoladexContext();

            List<Person> list = db.Persons.Where(p => p.Email == email || p.Phone == phone || p.AltPhone == altPhone).ToList();

            return list;
        }

        //Edit a person
        public void EditPerson(int personId, string lastName, string firstName, string companyName, string email, string phone, string altPhone, string address1, 
            string address2, string state, string city, string zipcode)
        {
            RoladexContext db = new RoladexContext();
            Person p = db.Persons.Find(personId);
            if (p != null)
            {
                p.PersonID = personId;
                p.LastName = lastName;
                p.FirstName = firstName;
                p.CompanyName = companyName;
                p.Email = email;
                p.Phone = phone;
                p.AltPhone = altPhone;
                p.Address1 = address1;
                p.Address2 = address2;
                p.State = state;
                p.City = city;
                p.Zipcode = zipcode;
                db.SaveChanges();
            } else
            {
                throw new ApplicationException("Can not find person to update.");
            }
        }

        //Delete a person
        public void DeletePerson(int personId)
        {
            RoladexContext db = new RoladexContext();
            Person p = db.Persons.Find(personId);
            if (p != null)
            {
                db.Persons.Remove(p);
                db.SaveChanges();
            }
            else
            {
                throw new ApplicationException("Can not find person to delete.");
            }

        }
    }
}