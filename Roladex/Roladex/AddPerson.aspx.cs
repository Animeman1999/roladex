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
        protected void Page_Load(object sender, EventArgs e)
        {
            MessageLabel.Text = "New Page";
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
            crud.CreatePerson(Request["LastName"], Request["FirstName"], Request["CompanyName"], Request["Email"], Request["Phone"],
                Request["AltPhone"], Request["Address1"], Request["Address2"], Request["State"], Request["City"], Request["Zipcode"]);
            MessageLabel.Text = Request["FirstName"]  + " " + Request["LastName"] + " has been added to the roladex";
        }
    }
}