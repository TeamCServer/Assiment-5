using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_5_test.Service
{
    public partial class buycar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected string GetPurchaseUrl(object productId,object price)
        {
            bool isLoggedIn = Convert.ToBoolean(Session["LoggedIn"]);

            if (isLoggedIn)
            {
                
                string baseUrl = "~/Service/buycarform.aspx";
                string purchaseUrl = string.Format("{0}?product_id={1}&price={2}", ResolveUrl(baseUrl), productId, price);
                return purchaseUrl;

            }
            else
            {
                
                return ResolveUrl("~/LogOn.aspx");
            }
        }

    }
}