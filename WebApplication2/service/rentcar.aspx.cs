using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_5_test.Service
{
    public partial class rentcar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected string GetPurchaseUrl(object productId, object category)  //讀取產品跟category_id
        {
            bool isLoggedIn = Convert.ToBoolean(Session["LoggedIn"]);

            if (isLoggedIn)
            {

                string baseUrl = "~/Service/rentcarform.aspx";
                string purchaseUrl = string.Format("{0}?product_id={1}&category={2}", ResolveUrl(baseUrl), productId, category);
                return purchaseUrl;

            }
            else
            {

                return ResolveUrl("~/LogOn.aspx");
            }
        }
    }
}