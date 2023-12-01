using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MobileShoppingWebsite
{
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cancelButton_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Are you sure?')</script>");
            Response.Write("<script>alert('Booking cancelled successfully!')</script>");
            Server.Transfer("Cart.aspx");
        }

        protected void payButton_Click(object sender, EventArgs e)
        {
            string model = Session["model"].ToString();
            int i = 1;
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\shrey\\source\\repos\\MobiKart\\App_Data\\Database1.mdf;Integrated Security=True");
            con.Open();
            SqlCommand cmdo = new SqlCommand(@"INSERT INTO [dbo].[Payment]([CardNumber],[Exp],[CVV]) Values ('" +cardNumber.Text + "','" + expiryDate.Text + "','" + cvv.Text + "')", con);
            SqlCommand cmds = new SqlCommand(@"UPDATE Stock SET Quantity = Quantity - '" + i + "' WHERE ModelName = '" + model + "'", con);
            SqlCommand clear = new SqlCommand("DELETE FROM Cart", con);
            cmdo.ExecuteNonQuery();
            clear.ExecuteNonQuery();
            cmds.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Mobile booked successfully!')</script>");
            Server.Transfer("Cart.aspx");
        }    
    }
}