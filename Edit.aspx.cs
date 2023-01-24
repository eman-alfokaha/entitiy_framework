using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Policy;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace WebApplication52
{
    public partial class Edit : System.Web.UI.Page
    {
        taskentitesEntities tasks = new taskentitesEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var c = from City in tasks.Citys select City;
                DropDownList1.DataSource = c.ToList();
                DropDownList1.DataTextField = "CityName";
                DropDownList1.DataValueField = "CityID";
                DropDownList1.DataBind();
                if (Request.QueryString["id"] != null)
                {
                    int id = Convert.ToInt32(Request.QueryString["id"]);
                    var s = tasks.Customers.Find(id);
                    Image1.ImageUrl = s.Photo;
                    Label1.Text = s.CustomerName.ToString();
                    TxtPhone.Text = s.Phone.ToString();
                    TxtName.Text = s.CustomerName.ToString();
                    TxtAge.Text = s.Age.ToString();
                    TxtEmail.Text = s.Email.ToString();
                    DropDownList1.SelectedValue = s.City;

                }
                else { Response.Redirect("show.aspx"); }
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var x = DropDownList1.SelectedValue;

            if (x == "1") { Session["city"] = "Amman"; }
            else if (x == "2") { Session["city"] = "Ajloun"; }
            else if (x == "3") { Session["city"] = "Irbid"; }
            

            int id = Convert.ToInt32(Request.QueryString["id"]);
            var ss =tasks.Customers.Find(id);
            if (FileUpload1.HasFile) { ss.Photo = "Image\\" + FileUpload1.FileName; }
            ss.CustomerName = TxtName.Text;
            ss.Email = TxtEmail.Text;
            ss.City = Session["city"].ToString();
            ss.Phone = Convert.ToInt32(TxtPhone.Text);
            ss.Age = Convert.ToInt32(TxtAge.Text);
            tasks.SaveChanges();
            Response.Redirect("show.aspx");

        }
    }
}