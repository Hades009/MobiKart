using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MobileShoppingWebsite
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Server.Transfer("ForgotPswd.aspx");
        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            Server.Transfer("RegisterPage.aspx");
        }
    }
}