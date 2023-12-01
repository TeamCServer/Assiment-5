using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Service
{
    public partial class rentcarform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if (Request.QueryString["product_id"] != null && Request.QueryString["price"] != null)
                {
                    string product_id = Request.QueryString["product_id"];
                    string price = Request.QueryString["price"];
                    price1.Text = price;
                    product_id1.Text = product_id;
                    users_id1.Text = Session["UserId"].ToString();
                    email.Text = Session["UserEmail"].ToString();


                }
            }
        }

        private void ClearForm()
        {
            TextBox nameTextBox = (TextBox)panelContactForm.FindControl("Name");
            TextBox productIdTextBox = (TextBox)panelContactForm.FindControl("product_id");
            TextBox emailTextBox = (TextBox)panelContactForm.FindControl("email");
            TextBox contentTextBox = (TextBox)panelContactForm.FindControl("content");


            if (nameTextBox != null)
                nameTextBox.Text = "";

            if (productIdTextBox != null)
                productIdTextBox.Text = "";

            if (emailTextBox != null)
                emailTextBox.Text = "";

            if (contentTextBox != null)
                contentTextBox.Text = "";
        }
        protected string GetPurchaseUrl(object productId, object price)
        {
            string baseUrl = "~/Categories/first_one.aspx";
            string purchaseUrl = string.Format("{0}?product_id={1}&price={2}", ResolveUrl(baseUrl), productId, price);
            return purchaseUrl;
        }
    }
}