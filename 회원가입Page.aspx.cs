using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class 회원가입Page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    static bool[] check = new bool[3] { false, false, false };
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        Label2.Text = "";
        Label3.Text = "";

        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox11.Text = "";
        TextBox13.Text = "";

        RequiredFieldValidator1.ErrorMessage = "";
        RequiredFieldValidator2.ErrorMessage = "";
        RequiredFieldValidator3.ErrorMessage = "";
        RequiredFieldValidator4.ErrorMessage = "";
        RequiredFieldValidator5.ErrorMessage = "";
        RequiredFieldValidator6.ErrorMessage = "";
        RegularExpressionValidator2.ErrorMessage = "";
        CompareValidator1.ErrorMessage = "";


        if (RadioButtonList1.SelectedIndex > -1)
            RadioButtonList1.SelectedItem.Selected = false;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        bool allPass = true;
        //가입하기 버튼 눌렀을 때
        Page.Validate();
        if (IsValid)
        {
            string name = TextBox13.Text;
            string id = TextBox1.Text;
            string password = TextBox2.Text;
            string nick_name = TextBox4.Text;
            string email = TextBox11.Text;
            string sex = RadioButtonList1.SelectedItem.Value;
            for(int i=0; i<3; i++){
                if(check[i] != true){
                    allPass = false;
                    break;
                }
                else
                {
                    allPass = true;
                }
            }
            if (allPass == false)
            {

                string script = "<script type='text/javascript'>alert('중복검사를 해주세요'); </script>";
                Response.Write(script);
            }
            else
            {
                string connectionString = @"server=(local)\SQLExpress;Integrated Security=true;database=EDB20";
                SqlConnection conn = new SqlConnection(connectionString);
                SqlCommand Cmd = new SqlCommand();
                Cmd.Connection = conn;
                conn.Open();
                Cmd.CommandText = "INSERT INTO DBuser (name, id, password, nick_name, email, sex) VALUES" +
                     "( '" + TextBox13.Text + "' ,  " + " '" + TextBox1.Text + "' ,  " + " '" + TextBox2.Text + "' ,  "
                    + " '" + TextBox4.Text + "' ,  '" + TextBox11.Text + "',  " + " '" + RadioButtonList1.SelectedItem.Value + "' ) ";
                try
                {
                    int rowAffected = Cmd.ExecuteNonQuery();
                    string script = "<script type='text/javascript'>alert('회원가입이 완료되었습니다.'); location.href='./로그인 Page.aspx';</script>";
                    Response.Write(script);
                    Response.End();
                }
                catch
                {

                }
                conn.Close();
            }
        }
                
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
         //ID 중복검사
        try
        {
            string id = TextBox1.Text;
            string connectionString = @"server=(local)\SQLExpress;Integrated Security=true;database=EDB20";
            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand Cmd = new SqlCommand();
            Cmd.Connection = conn;
            Cmd.CommandText = "SELECT * FROM DBuser WHERE id = '" + id + "' ";
            conn.Open();
            SqlDataReader reader = Cmd.ExecuteReader();

            
            if (reader.Read())
            {
                TextBox1.Text = reader["id"].ToString();
                Label1.Text = "중복된 ID 입니다.";
            }
            else
            {      
                check[0] = true;
                Label1.Text = "사용가능한 ID 입니다.";
            }
            conn.Close();
        }
        catch
        {

        }


    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        // 닉네임 중복검사
        try
        {
            string nick_name = TextBox4.Text;
            string connectionString = @"server=(local)\SQLExpress;Integrated Security=true;database=EDB20";
            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand Cmd = new SqlCommand();
            Cmd.Connection = conn;
            Cmd.CommandText = "SELECT * FROM DBuser WHERE nick_name = '" + nick_name + "' ";
            conn.Open();
            SqlDataReader reader = Cmd.ExecuteReader();

            if (reader.Read())
            {
                TextBox4.Text = reader["nick_name"].ToString();
                Label2.Text = "중복된 닉네임 입니다.";
            }
            else
            {
                check[1] = true;
                Label2.Text = "사용가능한 닉네임 입니다.";
            }
            conn.Close();
        }
        catch
        {

        }

    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        // 이메일 중복검사
        try
        {
            string email = TextBox11.Text;
            string connectionString = @"server=(local)\SQLExpress;Integrated Security=true;database=EDB20";
            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand Cmd = new SqlCommand();
            Cmd.Connection = conn;
            Cmd.CommandText = "SELECT * FROM DBuser WHERE nick_name = '" + email + "' ";
            conn.Open();
            SqlDataReader reader = Cmd.ExecuteReader();

            if (reader.Read())
            {
                TextBox4.Text = reader["email"].ToString();
                Label3.Text = "중복된 이메일 입니다.";
            }
            else
            {
                check[2] = true;
                Label3.Text = "사용가능한 이메일 입니다.";
            }
            conn.Close();
        }
        catch
        {

        }
    }
    protected void TextBox13_TextChanged(object sender, EventArgs e)
    {
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}