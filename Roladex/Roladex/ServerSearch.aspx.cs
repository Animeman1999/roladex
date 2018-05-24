using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Roladex
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Start with the gridview and message label not visable until somthing is searched.
            GridView1.Visible = false;
            MessageLabel.Text = "";
        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            //As somthing was searched make the gridview visable.
            GridView1.Visible = true;
        }

    }
}