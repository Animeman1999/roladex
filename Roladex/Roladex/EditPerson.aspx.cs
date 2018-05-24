using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Roladex
{
    public partial class _Default : Page
    {
        CRUD crud = new CRUD();
        protected void Page_Load(object sender, EventArgs e)
        {
      
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
        
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {

        }
    }
}