using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace WebApplication2.search
{
    public partial class User : System.Web.UI.Page
    {
        private string connectionString = "Data Source=140.118.5.93,14433;Initial Catalog=TeamC;Persist Security Info=True;User ID=TeamCServer;Password=TeamC123@;Encrypt=False";
        private static DataSet search_User;
        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (!IsPostBack)
            {
                PrepareDataSource();
                BindData();
                BindDropDownList();
               
            }
        }
        
        private void BindDropDownList()
        {
            string query = "SELECT DISTINCT lastName FROM Users";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        // 綁定 DropDownList
                        DropDownList1.DataSource = reader;
                        DropDownList1.DataTextField = "lastName";
                        DropDownList1.DataValueField = "lastName";
                        DropDownList1.DataBind();
                    }
                }
            }
        }
        private void PrepareDataSource()
        {
            if (search_User == null)
            {
                search_User = new DataSet();
            }

            if (!search_User.Tables.Contains("Users"))
            {
                DataTable productsTable = LoadProductsDataFromDatabase();
                search_User.Tables.Add(productsTable);
            }
        }
        private DataTable LoadProductsDataFromDatabase()
        {
            DataTable userTable = new DataTable("Users");

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (SqlDataAdapter adapter = new SqlDataAdapter("SELECT * FROM Users", connection))
                {
                    adapter.Fill(userTable);
                }
            }
            return userTable;
        }
        private void BindData()
        {
            GridView3.DataSource = search_User.Tables["Users"];
            GridView3.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            // 取得使用者輸入的搜尋條件
            string first = TextBox19.Text;
            int userId = string.IsNullOrEmpty(TextBox18.Text) ? 0 : Convert.ToInt32(TextBox18.Text);
            string last = DropDownList1.SelectedValue;
            string email = TextBox20.Text;

            // 使用LINQ進行搜尋
            var result = from row in search_User.Tables["Users"].AsEnumerable()
                         where (string.IsNullOrEmpty(first) || row.Field<string>("firstName").Contains(first))
                            && (userId == 0 || row.Field<int>("user_id") == userId)
                            && (string.IsNullOrEmpty(last) || row.Field<string>("lastName").Contains(last))
                            && (string.IsNullOrEmpty(email) || row.Field<string>("email").Contains(email))
                         select row;

            // 如果所有條件都沒有輸入值，就顯示全部資料
            if (string.IsNullOrEmpty(first) && userId == 0 && string.IsNullOrEmpty(last) && string.IsNullOrEmpty(email))
            {
                BindData(); // 重新綁定全部資料
            }
            else
            {
                // 建立一個新的DataTable來儲存搜尋結果
                DataTable searchResultTable = result.Any() ? result.CopyToDataTable() : search_User.Tables["Users"].Clone();

                // 將結果顯示在GridView中
                GridView3.DataSource = searchResultTable;
                GridView3.DataBind();
            }
        }
    }
}