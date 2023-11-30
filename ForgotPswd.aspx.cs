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
            
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\Noel Joseph\\source\\repos\\MobileShoppingWebsite\\App_Data\\Database1.mdf\";Integrated Security=True");
            SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM RegTable WHERE Username='" + txtUser.Text + "'", con);
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
            SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\Noel Joseph\\source\\repos\\MobileShoppingWebsite\\App_Data\\Database1.mdf\";Integrated Security=True");
            conn.Open();
            SqlDataAdapter sdaa = new SqlDataAdapter("UPDATE RegTable SET Password ='"+Npass.Text+"', CPassword = '"+CNpass.Text+"' WHERE Username='" + txtUser.Text + "'", conn);
            conn.Close();
            Response.Write("<script>alert('Password changed successfully!')</script>");
            Response.Redirect("LoginPage.aspx");
        }
    }
}