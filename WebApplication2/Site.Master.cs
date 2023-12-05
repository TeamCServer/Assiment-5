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
                    sUserLink.InnerText = "用戶資料";
                }
                else
                {
                    sUserLink.HRef = ResolveUrl("~/LogOn.aspx");
                    sUserLink.InnerText = "用戶資料";
                }
            }
            if (editUserLink != null)
            {
                if (isLoggedIn)
                {
                    editUserLink.HRef = ResolveUrl("~/edit/edit_user.aspx");
                    editUserLink.InnerText = "編輯用戶資料";
                }
                else
                {
                    editUserLink.HRef = ResolveUrl("~/LogOn.aspx");
                    editUserLink.InnerText = "編輯用戶資料";
                }
            }
            if (editDriverLink != null)
            {
                if (isLoggedIn)
                {
                    editDriverLink.HRef = ResolveUrl("~/edit/edit_driver.aspx");
                    editDriverLink.InnerText = "編輯司機資料";
                }
                else
                {
                    editDriverLink.HRef = ResolveUrl("~/LogOn.aspx");
                    editDriverLink.InnerText = "編輯司機資料";
                }
            }
            if (editProductLink != null)
            {
                if (isLoggedIn)
                {
                    editProductLink.HRef = ResolveUrl("~/edit/edit_driver.aspx");
                    editProductLink.InnerText = "編輯產品資訊";
                }
                else
                {
                    editProductLink.HRef = ResolveUrl("~/LogOn.aspx");
                    editProductLink.InnerText = "編輯產品資訊";
                }
            }
        }
    }
}