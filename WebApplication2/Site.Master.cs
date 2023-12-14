using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UpdateNavigationLinks();
        }

        private void UpdateNavigationLinks()
        {
            bool isLoggedIn = Convert.ToBoolean(Session["LoggedIn"]);
            HtmlAnchor sUserLink = (HtmlAnchor)FindControl("sUser");
            HtmlAnchor editUserLink = (HtmlAnchor)FindControl("editUser");
            HtmlAnchor editDriverLink = (HtmlAnchor)FindControl("editDriver");
            HtmlAnchor editProductLink = (HtmlAnchor)FindControl("editProduct");
            
            if (sUserLink != null)
            {
                if (isLoggedIn)
                {
                    sUserLink.HRef = ResolveUrl("~/search/User.aspx");
                    sUserLink.InnerText = "User";
                }
                else
                {
                    sUserLink.HRef = ResolveUrl("~/LogOn.aspx");
                    sUserLink.InnerText = "User";
                }
            }
            if (editUserLink != null)
            {
                if (isLoggedIn)
                {
                    editUserLink.HRef = ResolveUrl("~/edit/edit_user.aspx");
                    editUserLink.InnerText = "Edit User";
                }
                else
                {
                    editUserLink.HRef = ResolveUrl("~/LogOn.aspx");
                    editUserLink.InnerText = "Edit User";
                }
            }
            if (editDriverLink != null)
            {
                if (isLoggedIn)
                {
                    editDriverLink.HRef = ResolveUrl("~/edit/edit_driver.aspx");
                    editDriverLink.InnerText = "Edit Driver";
                }
                else
                {
                    editDriverLink.HRef = ResolveUrl("~/LogOn.aspx");
                    editDriverLink.InnerText = "Edit Driver";
                }
            }
            if (editProductLink != null)
            {
                if (isLoggedIn)
                {
                    editProductLink.HRef = ResolveUrl("~/edit/edit_driver.aspx");
                    editProductLink.InnerText = "Edit Product";
                }
                else
                {
                    editProductLink.HRef = ResolveUrl("~/LogOn.aspx");
                    editProductLink.InnerText = "Edit Product";
                }
            }
        }
    }
}