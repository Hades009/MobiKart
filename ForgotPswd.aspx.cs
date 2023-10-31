using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

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

        protected void Verify_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\shrey\\source\\repos\\MobiKart\\App_Data\\Database1.mdf;Integrated Security=True");
            SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM RegTable WHERE Email='" + txtEmail.Text + "'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Npass.Visible = true;
                CNpass.Visible = true;
                txtPass.Visible = true;
                txtCPass.Visible = true;
                Conf.Visible = true;
            }
            else
            {
                Response.Write("<script>Email Invalid or not found</script>");
            }
        }

        protected void Conf_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\shrey\\source\\repos\\MobiKart\\App_Data\\Database1.mdf;Integrated Security=True");
            SqlDataAdapter pswd = new SqlDataAdapter("UPDATE RegTable WHERE Password='" + txtPass + "' AND CPassword='" + txtCPass + "'", con);
        }
    }
}