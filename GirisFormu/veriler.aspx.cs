using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GirisFormu
{
    public partial class veriler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.AdminTableAdapter td = new DataSet1TableAdapters.AdminTableAdapter();
            Repeater1.DataSource= td.adminlistele();
            Repeater1.DataBind();
        }
    }
}