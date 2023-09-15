using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MobileShoppingWebsite
{
    public partial class ForgotPswd : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Npass.Visible = false;
            CNpass.Visible = false;
            txtPass.Visible= false;
            txtCPass.Visible= false;
            Conf.Visible= false;
        }

        protected void SendResetLink_Click(object sender, EventArgs e)
        {
            
        }
    }
}