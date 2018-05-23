using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Roladex
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public String getWileLoopData()
        {
            CRUD crud = new CRUD();
            var persons = crud.GetAllPersons();
            string htmlStr = "";
            foreach (var person in persons)
            {
                htmlStr += "<tr>" + td(person.FirstName) + td(person.LastName) + td(person.Email) + td(person.CompanyName) + td(person.Phone) + td(person.AltPhone) + td(person.Address1)
                   + td(person.Address2) + td(person.State) + td(person.City) + td(person.Zipcode)
                   + "</tr>";
            }


            return htmlStr;
        }

        private String td(string tdString)
        {
            return "<td>" + tdString + "</td>";
        }
    }
}