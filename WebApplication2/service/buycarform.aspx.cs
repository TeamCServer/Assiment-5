using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Assignment_5_test.Service
{
    public partial class buycarform : System.Web.UI.Page
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
        private string GetSellerId(int buyerId)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["TeamCConnectionString3"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = "SELECT TOP 1 user_id FROM Users WHERE user_id <> @BuyerId ORDER BY NEWID();\r\n";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@BuyerId", buyerId);

                    // 執行查詢
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            return reader["user_id"].ToString();
                        }
                    }
                }
            }
            // 都找不到的話 回傳seller_id = 0;
            return "0";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            //我要自動填寫transaction_id seller_id   staus=0(關閉) 
            //讀取product_id price buyer_id(user_id)
            int product_id = int.Parse(product_id1.Text.ToString());  //product_id
            float price = float.Parse(price1.Text.ToString());  //金額
            int buyer = int.Parse(users_id1.Text.ToString());  //buyer_id
            int transaction_id;
            do
            {
                transaction_id = Guid.NewGuid().GetHashCode();
            } while (transaction_id < 0);

            int seller_id = int.Parse(GetSellerId(buyer).ToString());
            if (seller_id == 0)
            {
                Label1.Text = "訂單失敗！";
                Label1.Visible = true;
            }
            //連接資料庫
            string connectionString = ConfigurationManager.ConnectionStrings["TeamCConnectionString3"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = "INSERT INTO Transactions (transaction_id, seller_id, product_id, price, status, buyer_id) " +
                       "VALUES (@TransactionId, @SellerId, @ProductId, @Price, 0, @BuyerId)";
                using (SqlCommand command = new SqlCommand(query, connection))
                {

                    command.Parameters.AddWithValue("@TransactionId", transaction_id);
                    command.Parameters.AddWithValue("@SellerId", seller_id);
                    command.Parameters.AddWithValue("@ProductId", product_id);
                    command.Parameters.AddWithValue("@Price", price);
                    command.Parameters.AddWithValue("@Status", 0); // 已被租出
                    command.Parameters.AddWithValue("@BuyerId", buyer);


                    command.ExecuteNonQuery();

                }
            }

            Label1.Text = "訂單成立！ 購買訂單編號為 : " + transaction_id;
            Label1.Visible = true;
            ClearForm();
        }
    }
}