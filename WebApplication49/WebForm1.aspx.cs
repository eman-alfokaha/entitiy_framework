using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication49
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        taskentitesEntities db=new taskentitesEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            //var MyList = from c in db.Customers select new {c.CustomerName,c.Age,c.Phone,c.Photo,c.Email};
            //GridView1.DataSource= MyList.ToList();
            //GridView1.DataBind();
            if (!IsPostBack)
            {
                var x = from City in db.Citys select City;
                DropDownList1.DataSource = x.ToList();
                DropDownList1.DataTextField = "CName";
                DropDownList1.DataValueField = "id";
                DropDownList1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //var Info = new Customer
            //{
            //    CustomerName = TextBox1.Text.ToString(),
            //Age = int.Parse(TextBox1.Text.ToString()),



            //};
            //if (Textname.Text == "" || TextEmail.Text == "" || Textphone.Text == "" || TextAge.Text == "" || DropDownList1.SelectedValue == "" || Label2.Text == "")
            //{
            //    Textphone.Visible = true;
            //}
            //else
            //{
            //    Customer ins = new Customer();
            //    ins.CustomerName = Textname.Text;
            //    ins.Email = TextEmail.Text;
            //    ins.phone = Convert.ToInt32(Textphone.Text);
            //    ins.Age = Convert.ToInt32(TextAge.Text);

            //    ins.City = Convert.ToInt32(DropDownList1.SelectedValue);
            //    ins.photo = Label2.Text;

            //    obj.Customers.Add(ins);
            //    obj.SaveChanges();
            //}
            if (Textname.Text == "" || TextEmail.Text == "" || Textphone.Text == "" || TextAge.Text == "" || DropDownList1.SelectedValue == "" || Label2.Text == "")
            {
                Label4.Visible = true;
            }
            else
            {
                Customer ins = new Customer();
                ins.CustomerName = Textname.Text;
                ins.Email = TextEmail.Text;
                ins.Phone = Convert.ToInt32(Textphone.Text);
                ins.Age = Convert.ToInt32(TextAge.Text);

                ins.City =DropDownList1.SelectedValue;
                ins.Photo = Label2.Text;

                db.Customers.Add(ins);
                db.SaveChanges();
            }
        }

        protected void TextBox7_TextChanged(object sender, EventArgs e)
        {

        }

        //protected void Button2_Click(object sender, EventArgs e)
        //{
        //    TextBox7.Text = "";
        //    var MyList = from c in db.Customers where c.City == TextBox7.Text select new { c.CustomerName, c.Age, c.Phone, c.Photo, c.Email };
        //    GridView1.DataSource = MyList.ToList();
        //    GridView1.DataBind();
        //}

        //protected void Button3_Click(object sender, EventArgs e)
        //{
        //    TextBox7.Text = "";
        //    var MyList = from c in db.Customers select new { c.CustomerName, c.Age, c.Phone, c.Photo, c.Email };
        //    GridView1.DataSource = MyList.ToList();
        //    GridView1.DataBind();

        //}

        //protected void Button4_Click(object sender, EventArgs e)
        //{
        //    var MyList = from c in db.Customers orderby c.Age ascending select c;
        //    GridView1.DataSource = MyList.ToList();
        //    GridView1.DataBind();
        //}

        protected void ButtonShow_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm2.aspx");
        }

        protected void upload_Click(object sender, EventArgs e)
        {
            string folderPath = Server.MapPath("~/images/");

            //Check whether Directory (Folder) exists.
            if (!Directory.Exists(folderPath))
            {
                //If Directory (Folder) does not exists Create it.
                Directory.CreateDirectory(folderPath);
            }

            //Save the File to the Directory (Folder).
            FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));
            Label2.Text = ("~/images/" + FileUpload1.FileName);
        }
    }
}