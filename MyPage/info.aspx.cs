using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class MyPage_info : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connectionString = @"Server=localhost\SQLEXPRESS;Database=EDB20;Trusted_Connection=True;";
        SqlConnection Con = new SqlConnection(connectionString);
        string id = "";
        string name = "";
        string sex = "";
        string email = "";
        string nickname = "";

        // SQL COMMAND OBJECT를 만들고  SQL COMMAND 넣기
        SqlCommand Cmd = new SqlCommand();
        Cmd.Connection = Con;
        Cmd.CommandText = "select * from DBuser where id = '" + Session["id"] + "'";

        // SQL COMMAND 수행하기
        Con.Open();
        try
        {
            SqlDataReader reader = Cmd.ExecuteReader();
            while (reader.Read())
            {

                if (reader["id"].ToString() != "")
                {
                    id = reader["id"].ToString();
                    name = reader["name"].ToString();
                    nickname = reader["nick_name"].ToString();
                    email = reader["email"].ToString();
                    sex = reader["sex"].ToString();
                    break;
                }

            }
        }
        catch (Exception ee)
        {
            Label1.Text = ee.Message;
        }
        Label1.Text = name;
        Label2.Text = id;
        Label5.Text = sex;
        Con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Page.Validate();
        // 자신 PC의 SQLEXPRESS를 DB서버로 지정하고 사용 데이터베이스를 지정
        string connectionString = @"server=(local)\SQLExpress;Integrated Security=true;database=EDB20";
        SqlConnection Con = new SqlConnection(connectionString);

        // SQL COMMAND OBJECT를 만들고  SQL COMMAND 넣기
        SqlCommand Cmd = new SqlCommand();
        Cmd.Connection = Con;
        Cmd.CommandText = "UPDATE DBuser SET password='" + TextBox3.Text + "', nick_name= '" +
            TextBox1.Text + "',  email= '" + TextBox2.Text + "' WHERE id ='" + Session["id"].ToString() + "'";
        Con.Open();

        if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "")
        {
            string script = "<script type='text/javascript'>alert('양식을 모두 채워주세요'); </script>";
            Response.Write(script);
        }
        else
        {
            try
            {
                Session["nickname"] = TextBox1.Text;
                Cmd.ExecuteNonQuery();
                string script = "<script type='text/javascript'>alert('회원정보 수정이 완료되었습니다.'); location.href='MyPage.aspx';</script>";
                Response.Write(script);
                Response.End();
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }
        Con.Close();
    }
}