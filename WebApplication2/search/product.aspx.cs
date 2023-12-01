using System;
using System.Data;
using System.Web.UI.WebControls;
using System.Web.UI;
using System.Data.SqlClient;
using System.Linq;

namespace WebApplication2.search
{
    public partial class product : System.Web.UI.Page
    {
        private string connectionString = "Data Source=140.118.5.93,14433;Initial Catalog=TeamC;Persist Security Info=True;User ID=TeamCServer;Password=TeamC123@;Encrypt=False";
        private static DataSet search_Product;
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
            string query = "SELECT DISTINCT payment FROM Products";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        // 綁定 DropDownList
                        DropDownList1.DataSource = reader;
                        DropDownList1.DataTextField = "payment";
                        DropDownList1.DataValueField = "payment";
                        DropDownList1.DataBind();
                    }
                }
            }
        }
        private void PrepareDataSource()
        {
            // 确保 search_Product 存在并包含 "Products" 表
            if (search_Product == null)
            {
                // 初始化数据源
                search_Product = new DataSet(); // 假设 search_Product 是一个 DataSet
            }

            if (!search_Product.Tables.Contains("Products"))
            {
                // 创建 "Products" 表，或从数据库中加载数据
                DataTable productsTable = LoadProductsDataFromDatabase(); // 请自行实现 LoadProductsDataFromDatabase 方法
                search_Product.Tables.Add(productsTable);
            }
        }

        private DataTable LoadProductsDataFromDatabase()
        {
            DataTable productsTable = new DataTable("Products");

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // 打开数据库连接
                connection.Open();

                // 使用 SqlDataAdapter 从数据库中获取数据
                using (SqlDataAdapter adapter = new SqlDataAdapter("SELECT * FROM Products", connection))
                {
                    // 填充 DataTable
                    adapter.Fill(productsTable);
                }
            }

            return productsTable;
        }

        private void BindData()
        {
            GridView1.DataSource = search_Product.Tables["Products"];
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // 取得使用者輸入的搜尋條件
            string title = TextBox19.Text;
            int productId = string.IsNullOrEmpty(TextBox18.Text) ? 0 : Convert.ToInt32(TextBox18.Text);
            string payment = DropDownList1.SelectedValue;
            string location = TextBox20.Text;

            // 使用LINQ進行搜尋
            var result = from row in search_Product.Tables["Products"].AsEnumerable()
                         where (string.IsNullOrEmpty(title) || row.Field<string>("title").Contains(title))
                            && (productId == 0 || row.Field<int>("product_id") == productId)
                            && (string.IsNullOrEmpty(payment) || row.Field<string>("payment").Contains(payment))
                            && (string.IsNullOrEmpty(location) || row.Field<string>("location").Contains(location))
                         select row;

            // 如果所有條件都沒有輸入值，就顯示全部資料
            if (string.IsNullOrEmpty(title) && productId == 0 && string.IsNullOrEmpty(payment) && string.IsNullOrEmpty(location))
            {
                BindData(); // 重新綁定全部資料
            }
            else
            {
                // 建立一個新的DataTable來儲存搜尋結果
                DataTable searchResultTable = result.Any() ? result.CopyToDataTable() : search_Product.Tables["Products"].Clone();

                // 將結果顯示在GridView中
                GridView1.DataSource = searchResultTable;
                GridView1.DataBind();
            }
        }
    }
}