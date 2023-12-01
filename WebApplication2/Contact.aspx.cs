using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "資料已成功提交！";
            lblMessage.Visible = true;
            ClearForm();
        }
        private void ClearForm()
        {

            TextBox txtName = (TextBox)panelContactForm.FindControl("Name");
            TextBox txtEmail = (TextBox)panelContactForm.FindControl("email");
            TextBox txtPhoneNumber = (TextBox)panelContactForm.FindControl("phoneNumber");
            TextBox txtContent = (TextBox)panelContactForm.FindControl("content");

            if (txtName != null)
                txtName.Text = "";

            if (txtEmail != null)
                txtEmail.Text = "";

            if (txtPhoneNumber != null)
                txtPhoneNumber.Text = "";

            if (txtContent != null)
                txtContent.Text = "";
        }
    }
}