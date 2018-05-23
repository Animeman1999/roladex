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
            GridView1.Visible = false;
            MessageLabel.Text = "";
        }

        

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;

            //GridView1.DataBind();
            //if (GridView1.Rows.Count == 0)
            //{
            //    StartGrid.Visible = true;
            //}else
            //{
            //    StartGrid.Visible = false;
            //}

          //  MessageLabel.Text = "row = " + GridView1.Rows.Count;
        
}

    }
}