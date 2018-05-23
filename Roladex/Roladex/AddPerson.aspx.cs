using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Roladex
{
    public partial class AddPerson : System.Web.UI.Page
    {

        string UNLIKELY_STRING = "UNLIKELY_STRING_qhuakldgkjnljaiieo#####DAFDF3346";
        string fname = "";
        string lname = "";
        string companyName = "";
        string email = "";
        string phone = "";
        string altPhone = "";
        string street1 = "";
        string street2 = "";
        string state = "";
        string city = "";
        string zip = "";

        protected void Page_Load(object sender, EventArgs e)
        {

            AddToRolodexButton.Visible = false;
            CancelButton.Visible = false;
            MessageLabel.Text = "";

            
            if (PreviousPage != null)
            {
                Label SourceLabel =
                    (Label)PreviousPage.FindControl("MessageLabel");
                if (SourceLabel != null)
                {
                    MessageLabel.Text = SourceLabel.Text;
                }
            }
            
        }

        protected void TestButton_Click(object sender, EventArgs e)
        {
            CRUD crud = new CRUD();
            fname = Request["FirstName"].Trim();
            lname = Request["LastName"];
            companyName = Request["CompanyName"];
            email = Request["Email"].Trim();
            phone = Request["Phone"].Trim();
            altPhone = Request["AltPhone"].Trim();
            street1 = Request["Address1"].Trim();
            street2 = Request["Address2"].Trim();
            state = Request["State"].Trim();
            city = Request["City"].Trim();
            zip = Request["Zipcode"].Trim();


            if (email == "")
            {
                email = UNLIKELY_STRING;
            }

            if (phone == "")
            {
                phone = UNLIKELY_STRING;
            }

            if (altPhone == "")
            {
                altPhone = UNLIKELY_STRING;
            }


            List<Person> persons = crud.CheckForContact(email, phone, altPhone);

            if ((persons != null) && (!persons.Any()))
            {
                AddToRolodex();
            }
            else
            {

                MessageLabel.Text = " <h3>Possible Duplicate Records. <br> </h3><h4>Contact to be added:</h4>  FirstName:" + fname +
                "<Br>LastName: " + lname +
                "<Br>CompanyName: " + companyName +
                "<Br>Email: " + email +
                "<Br>Phone: " + phone +
                "<Br>AltPhone: " + altPhone +
                "<Br>Address1: " + street1 +
                "<Br>Address2: " + street2 +
                "<Br>State: " + state +
                "<Br>City: " + city +
                "<Br>Zipcode: " + zip + " <Br><br> <h4>The email address or phone number was contained in the following contacts:</h4>";

                foreach (Person p in persons) {
                    MessageLabel.Text += "<br>" + p.FirstName + " " + p.LastName + "<Br> Email: " + p.Email + "<Br> Phone: " + p.Phone + "<Br> Alternate Phone " + p.AltPhone +"<br>";
                }
                MessageLabel.Text += "<br><h3> Confirm adding this contact to rolodex or cancel.</h3>";
                fname = Request["FirstName"];
                TablePanel.Visible = false;
                AddToRolodexButton.Visible = true;
                CancelButton.Visible = true;
                Session["FirstName"] = fname;
                Session["LastName"] = lname;
                Session["CompanyName"] = companyName;
                Session["Email"] = email;
                Session["Phone"] = phone;
                Session["AltPhone"] = altPhone;
                Session["Address1"] = street1;
                Session["Address2"] = street2;
                Session["State"] = state;
                Session["City"] = city;
                Session["Zipcode"] = zip;
            }



        }

        private void AddToRolodex()
        {
            if (phone == UNLIKELY_STRING) phone = "";
            if (altPhone == UNLIKELY_STRING) altPhone = "";
            if (email == UNLIKELY_STRING) email = "";

            CRUD crud = new CRUD(); 
            crud.CreatePerson(lname, fname, companyName, email, phone, altPhone, street1, street2, state, city, zip);

            MessageLabel.Text += fname + " " + lname + " has been added to the rolodex.";
            TablePanel.Visible = false;

        }

        protected void AddToRolodexButton_Click(object sender, EventArgs e)
        {
            if (Session["FirstName"] != null)
            {
                fname=Session["FirstName"].ToString();
                lname=Session["LastName"].ToString();
                companyName=Session["CompanyName"].ToString();
                email=Session["Email"].ToString();
                phone=Session["Phone"].ToString();
                altPhone=Session["AltPhone"].ToString();
                street1=Session["Address1"].ToString();
                street2=Session["Address2"].ToString();
                state=Session["State"].ToString();
                city=Session["City"].ToString();
                zip=Session["Zipcode"].ToString();
            }
            AddToRolodex();
            AddToRolodexButton.Visible = false;
            CancelButton.Visible = false;
            TablePanel.Visible = true;

        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            AddToRolodexButton.Visible = false;
            CancelButton.Visible = false;
            TablePanel.Visible = true;
        }

        private void ClearFormValues()
        {
            fname = "";
        }
    }
}