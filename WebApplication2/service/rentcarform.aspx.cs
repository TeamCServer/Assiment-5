using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
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

                if (Request.QueryString["product_id"] != null && Request.QueryString["category"] != null)
                {
                    string product_id = Request.QueryString["product_id"];
                    string category = Request.QueryString["category"];
                    category1.Text = category;
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


        protected void calculate_Click(object sender, EventArgs e)
        {
            int days = int.Parse(days1.Text.ToString());
            int product_id = int.Parse(product_id1.Text.ToString());
            // 連接資料庫獲取產品金額
            float productPrice = GetProductPrice(product_id);
            // 計算金額
            float driverPrice = 0;
            if (rblDriver.SelectedValue == "1")///需要司機
            {
                driverPrice = days * 160;//一天160美金
            }

            float totalPrice = (productPrice / 300) * days + driverPrice;
            price1.Text = totalPrice.ToString();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //我需要id (product_id category_id)  是否司機 天數 金額

            // 我要自動填寫id seller_id staus = 0(關閉)
            //司機用勾選的 天數用輸入的再轉字串
            //讀取product_id category_id

            int product_id = int.Parse(product_id1.Text.ToString());  //product_id 完成
            int category = int.Parse(category1.Text.ToString());  //category_id
            int driver = int.Parse(rblDriver.SelectedValue.ToString());
            int day = int.Parse(days1.Text.ToString());  //period
            float price = float.Parse(category1.Text.ToString());  //金額
            int id;  //id
            do
            {
                id = Guid.NewGuid().GetHashCode();
            } while (id < 0);


            //連接資料庫
            string connectionString = ConfigurationManager.ConnectionStrings["TeamCConnectionString3"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = "INSERT INTO Rental_Service (id, product_id, category_id,driver,period, price) " +
                       "VALUES (@id, @product_id, @category_id,@driver, @period,  @price)";
                using (SqlCommand command = new SqlCommand(query, connection))
                {

                    command.Parameters.AddWithValue("@id", id);
                    command.Parameters.AddWithValue("@product_id", product_id);
                    command.Parameters.AddWithValue("@category_id", category);
                    command.Parameters.AddWithValue("@driver", driver);
                    command.Parameters.AddWithValue("@period", day);
                    command.Parameters.AddWithValue("@Price", price);



                    command.ExecuteNonQuery();

                }
            }

            Label1.Text = "訂單成立！ 購買訂單編號為 : " + id ;
            Label1.Visible = true;
            ClearForm();

        }



        private float GetProductPrice(int product_id)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["TeamCConnectionString3"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string query = "SELECT price FROM Products WHERE product_id = @product_id";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@product_id", product_id);

                    // 執行查詢
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            return float.Parse(reader["price"].ToString());
                        }
                    }
                }
            }

            // 若找不到相應的產品金額，返回 0
            return 0;
        }
    }
}
