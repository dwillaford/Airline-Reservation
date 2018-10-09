using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Airline_Reservation
{
    public partial class Flights : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //SqlConnection con = new SqlConnection(@"Data Source= LADITSNDWILLAFO\SQLEXPRESS1;Initial Catalog=Flight_Reservation_Date;Integrated Security=True");
            //con.Open();
            //SqlCommand cmd = new SqlCommand("Select* from Flight_Schedules", con);
            //SqlDataReader rdr = cmd.ExecuteReader();
            //GV_Grid.DataSource = rdr;
            //GV_Grid.DataBind();
            //con.Close();

           /* SqlConnection con = new SqlConnection(@"Data Source= LADITSNDWILLAFO\SQLEXPRESS1;Initial Catalog=Airline Reservation;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("Select* from Flight_Schedules", con);
            SqlDataReader rdr = cmd.ExecuteReader();
            GV_Grid.DataSource = rdr;
            GV_Grid.DataBind();
            con.Close();*/
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox1.Text = Calendar1.SelectedDate.ToShortDateString();
           // TextBox1.Text = Calendar1.ToString("MMMM dd, yyyy");
          // DateTime myDateTime = DateTime.Selected
            Calendar1.Visible = false;
        }
    }
}