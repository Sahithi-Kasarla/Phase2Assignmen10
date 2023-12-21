using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment10
{
    public partial class ProductRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LblMsg.Visible = false;
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            LblMsg.Visible = true;
            LblMsg.Text = "<br>Product Name: " + PName.Text;
            LblMsg.Text += "<br>Category: " + DdProduct.Text;
            LblMsg.Text += "<br>Price: " + PPrice.Text;
            LblMsg.Text += "<br>Description: " + Description.Text;
            LblMsg.Text += "<br>Release Date: " + Calendar.SelectedDate.ToShortDateString();
            LblMsg.Text = "Registration Success!!!" + LblMsg.Text;
        }
    }
}