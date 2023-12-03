using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2.search
{
    public partial class driver : System.Web.UI.Page
    {
        private string connectionString = "Data Source=140.118.5.93,14433;Initial Catalog=TeamC;Persist Security Info=True;User ID=TeamCServer;Password=TeamC123@;Encrypt=False";
        private static DataSet search_Driver;
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            if (!IsPostBack)
            {
                PrepareDataSource();
                BindData();
                BindDropDownList();
            }
        }
        private void BindDropDownList()
        {
            string query = "SELECT DISTINCT price FROM Driver";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        // 綁定 DropDownList
                        DropDownList1.DataSource = reader;
                        DropDownList1.DataTextField = "price";
                        DropDownList1.DataValueField = "price";
                        DropDownList1.DataBind();
                    }
                }
            }
        }
        private void PrepareDataSource()
        {
            if (search_Driver == null)
            {
                search_Driver = new DataSet();
            }

            if (!search_Driver.Tables.Contains("Driver"))
            {
                DataTable productsTable = LoadProductsDataFromDatabase();
                search_Driver.Tables.Add(productsTable);
            }
        }
        private DataTable LoadProductsDataFromDatabase()
        {
            DataTable driverTable = new DataTable("Driver");

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (SqlDataAdapter adapter = new SqlDataAdapter("SELECT * FROM Driver", connection))
                {
                    adapter.Fill(driverTable);
                }
            }
            return driverTable;
        }
        private void BindData()
        {
            GridView2.DataSource = search_Driver.Tables["Driver"];
            GridView2.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            // 取得使用者輸入的搜尋條件
            int DriverId = string.IsNullOrEmpty(TextBox1.Text) ? 0 : Convert.ToInt32(TextBox1.Text);
            int age = string.IsNullOrEmpty(TextBox2.Text) ? 0 : Convert.ToInt32(TextBox2.Text);
            int price = string.IsNullOrEmpty(DropDownList1.SelectedValue) ? 0 : Convert.ToInt32(DropDownList1.SelectedValue);
            string phone = TextBox3.Text;

            // 使用LINQ進行搜尋
            var result = from row in search_Driver.Tables["Driver"].AsEnumerable()
                         where (DriverId == 0 || Convert.ToInt32(row["driver_id"]) == DriverId)
                            && (age == 0 || Convert.ToInt32(row["age"]) == age)
                            && (price == 0 || Convert.ToInt32(row["price"]) == Convert.ToInt32(price))
                         select row;

            // 如果所有條件都沒有輸入值，就顯示全部資料
            if (DriverId == 0 && age == 0 && string.IsNullOrEmpty(phone) && price == 0)
            {
                BindData(); // 重新綁定全部資料
            }
            else
            {
                // 建立一個新的DataTable來儲存搜尋結果
                DataTable searchResultTable = result.Any() ? result.CopyToDataTable() : search_Driver.Tables["Driver"].Clone();

                // 將結果顯示在GridView中
                GridView2.DataSource = searchResultTable;
                GridView2.DataBind();
            }
        }
    }
}