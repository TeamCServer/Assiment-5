using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_5_test
{
    public partial class LogON : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Userid = Textbox1.Text;
            string UserfirstName = Textbox2.Text;
            if (Userid == "123" && UserfirstName == "admin")
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "ShowLoginSuccessAlert", "alert('登入成功'); window.location.href = 'Default.aspx';", true);
                Session["LoggedIn"] = true;
                Session["UserId"] = 123;
                Session["UserFirstName"] = UserfirstName;
                Response.Write("<script>window.alert(\"BOSS\");</script>");
            }
            else
            {
                string connectionString = ConfigurationManager.ConnectionStrings["TeamCConnectionString3"].ConnectionString;
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    string query = "SELECT * FROM Users WHERE user_id = @Userid AND firstName = @UserfirstName";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@Userid", Userid);
                        command.Parameters.AddWithValue("@UserfirstName", UserfirstName);
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                // 登入成功的處理，可以導向到其他頁面
                                ScriptManager.RegisterStartupScript(this, GetType(), "ShowLoginSuccessAlert", "alert('登入成功'); window.location.href = 'Default.aspx';", true);
                                Session["LoggedIn"] = true;

                                // 將資料庫中的 Users_id 與 email 存入 Session
                                Session["UserId"] = reader["user_id"].ToString();
                                Session["UserEmail"] = reader["email"].ToString();
                            }
                            else
                            {
                                Response.Write("<script>window.alert(\"帳號或密碼錯誤\");</script>");
                            }
                        }
                    }
                }
            }
        }

       
    }
}