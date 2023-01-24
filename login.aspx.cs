using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication52
{
    public partial class login : System.Web.UI.Page
    {
        taskentitesEntities tasks=new taskentitesEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var c = from City in tasks.Citys select City;
                cityList.DataSource = c.ToList();
                cityList.DataTextField = "CityName";
                cityList.DataValueField = "CityID";
                cityList.DataBind();
            }
        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string photo = "";
            if (userImg.HasFile)
            {
                photo = "/Image/" + userImg.FileName;
                userImg.SaveAs(Server.MapPath("/Image/") + userImg.FileName);
            }
            if(cityList.SelectedValue=="1") { Session["city"] = "Amman"; }
            else if(cityList.SelectedValue == "2") { Session["city"] = "Ajloun"; }
            else if (cityList.SelectedValue == "3") { Session["city"] = "Irbid"; }
            Customer add = new Customer();
            add.CustomerName = txtName.Text;
            add.Age = Convert.ToInt32(txtAge.Text);
            add.City =(String)Session["city"];
            add.Phone = Convert.ToInt32(txtPhone.Text);
            add.Email = txtEmail.Text;
            add.Photo = "/Image/" + userImg.FileName;
            
            tasks.Customers.Add(add);
            tasks.SaveChanges();

            Response.Redirect("Show.aspx");
        }
    }
}