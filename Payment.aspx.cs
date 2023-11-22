using System;
using System.Collections.Generic;
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
        }

        protected void payButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = C:\\Users\\Noel\\source\\repos\\MobileShoppingWebsite\\App_Data\\Database1.mdf; Integrated Security = True");
            SqlCommand q = new SqlCommand("SELECT * FROM Payment WHERE Card Number = '"+cardNumber.Text+"'",con);
            con.Open();
            SqlDataReader sdr = q.ExecuteReader();
            int count = 0;
            while (sdr.Read())
            {
                count++;
            }
            con.Close();
            if (count > 0)
            {
                Response.Write("<script>alert('Card already exists')</script>");

            }
            else
            {
                con.Open();
                SqlCommand cmdo = new SqlCommand("@INSERT INTO [dbo].[Payment]([Card Number],[Exp],[CVV]) Values ('" +cardNumber.Text + "','" + expiryDate.Text + "','" + cvv.Text + "')", con);
                SqlCommand book = new SqlCommand("SELECT * INTO Booking FROM Cart", con);
                SqlCommand clear = new SqlCommand("DELETE FROM Cart", con);
                cmdo.ExecuteNonQuery();
                book.ExecuteNonQuery();
                clear.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Mobile booked successfully!')</script>");
            }
            
        }
    }
}