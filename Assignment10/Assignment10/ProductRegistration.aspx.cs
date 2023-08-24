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
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!Page.IsPostBack)
            {
                DdlCategory.Items.Add("Laptops");
                DdlCategory.Items.Add("Cars");
                DdlCategory.Items.Add("Mobile Phones");
                DdlCategory.Items.Add("Bikes");
                DdlCategory.Items.Add("Face Wash");
            }

        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            LblInfo.Visible=true;
            LblInfo.Text = "Registration Success";
            LblInfo.Text += "<br> Product Name: "+TxtPName.Text;
            LblInfo.Text += "<br> Category: " + DdlCategory.Text;
            LblInfo.Text += "<br> Price: " + TxtPrice.Text;
            LblInfo.Text += "<br> Description: " + TxtDescription.Text;
            LblInfo.Text += "<br> Date: " + CalRD.SelectedDate;
            
        }
    }
}