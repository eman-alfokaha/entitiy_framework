using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication52
{
    public partial class DeletUser : System.Web.UI.Page
    {
        taskentitesEntities tasks = new taskentitesEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null) 
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);
                var s = tasks.Customers.Find(id);
                Image1.ImageUrl = s.Photo;
                Phone.Text = s.Phone.ToString();
                Name.Text = s.CustomerName.ToString();
                Age.Text = s.Age.ToString();
                Email.Text = s.Email.ToString();
                City.Text = s.City.ToString();

            }
            else { Response.Redirect("show.aspx"); }


        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);
                var s = tasks.Customers.Find(id);
                tasks.Customers.Remove(s);
                tasks.SaveChanges();
                Response.Redirect("show.aspx");

            }
            else { Response.Redirect("show.aspx"); }
        }
    }
}