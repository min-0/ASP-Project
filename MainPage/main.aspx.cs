using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.SqlClient;

public partial class MainPage_main : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox2.Attributes.Add("onkeypress", "if(event.keyCode==13){" + this.Page.ClientScript.GetPostBackEventReference(Button3, null) + ";return false;}"); // TextBox2에서 enter시 실행되는 Button3
        TextBox3.Attributes.Add("onkeypress", "if(event.keyCode==13){" + this.Page.ClientScript.GetPostBackEventReference(Button4, null) + ";return false;}"); // TextBox3에서 enter시 실행되는 Button4
        if (this.Page.User.Identity.IsAuthenticated)
        {
            Label1.Text = Session["nickname"].ToString() + " 님 환영환영 *^^*"; // nickname 님 환영합니다.
            Label2.Text = "접속일시 : " + DateTime.Now.ToString(); // 접속일시 : 2020-11-27 오후 5:44:04
            Label3.Text = "내가 쓴 리뷰 : "; // 내가 쓴 리뷰 n 개
            Label4.Visible = false; // ID
            Label5.Visible = false; // PW
            Button1.Visible = true; // MyPage
            Button2.Visible = true; // Sign out
            Button3.Visible = false; // Sign in
            TextBox1.Visible = false; //Id textbox
            TextBox2.Visible = false; // Pw
        }
        else
        {
            Label1.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
            Label4.Visible = true;
            Label5.Visible = true;
            Button1.Visible = false;
            Button2.Visible = false;
        }

                string connectionString = @"server=(local)\SQLExpress;Integrated Security=true;database=EDB20";
                SqlConnection conn = new SqlConnection(connectionString);

                SqlCommand Cmd = new SqlCommand();
                Cmd.Connection = conn;
                Cmd.CommandText = "select * from infoDB ORDER BY [id] DESC"; // 순번 내림차순으로 정렬

                conn.Open();
                try
                {
                    SqlDataReader reader = Cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        if (reader["id"].ToString() != "")
                        {
                            if (Label6.Text == "")
                            {
                                Label6.Text = reader["name"].ToString() + "<br/>" + "#" + reader["food_type"].ToString() + "<br/>" + "★" + reader["star"].ToString();
                                Image2.ImageUrl = reader["image"].ToString();
                            }
                            else if (Label7.Text == "")
                            {
                                Label7.Text = reader["name"].ToString() + "<br/>" + "#" + reader["food_type"].ToString() + "<br/>" + "★" + reader["star"].ToString();
                                Image3.ImageUrl = reader["image"].ToString();
                            }
                            else if (Label8.Text == "")
                            {
                                Label8.Text = reader["name"].ToString() + "<br/>" + "#" + reader["food_type"].ToString() + "<br/>" + "★" + reader["star"].ToString();
                                Image4.ImageUrl = reader["image"].ToString();
                            }
                        }

                    }
                    conn.Close();
                    Cmd.CommandText = "select * from infoDB ORDER BY [star] DESC"; // 별점 내림차순으로 정렬
                    conn.Open();
                    reader = Cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        if (reader["id"].ToString() != "")
                        {
                            if (Label9.Text == "")
                            {
                                Label9.Text = reader["name"].ToString() + "<br/>" + "#" + reader["food_type"].ToString() + "<br/>" + "★" + reader["star"].ToString();
                                Image5.ImageUrl = reader["image"].ToString();
                            }
                            else if (Label10.Text == "")
                            {
                                Label10.Text = reader["name"].ToString() + "<br/>" + "#" + reader["food_type"].ToString() + "<br/>" + "★" + reader["star"].ToString();
                                Image6.ImageUrl = reader["image"].ToString();
                            }
                            else if (Label11.Text == "")
                            {
                                Label11.Text = reader["name"].ToString() + "<br/>" + "#" + reader["food_type"].ToString() + "<br/>" + "★" + reader["star"].ToString();
                                Image7.ImageUrl = reader["image"].ToString();
                            }
                        }
                    }
                    conn.Close();
                    Cmd.CommandText = "select count(*) from infoDB WHERE [nickname] = '" + Session["nickname"] + "'";
                    conn.Open();
                    reader = Cmd.ExecuteReader();
                    if (reader.Read())
                    {
                        Label3.Text += reader.GetInt32(0)+"개";
                    }
                   
                    conn.Close();
                }
                catch(Exception ee)
                {
                    Label3.Text = ee.Message; 
                }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        // MainPage의 로그인
        Page.Validate();
        if (Page.IsValid)
        {
            string id = TextBox1.Text;
            string password = TextBox2.Text;
            string nickname = "";
            bool isUser = false;
            string connectionString = @"server=(local)\SQLExpress;Integrated Security=true;database=EDB20";
            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand Cmd = new SqlCommand();
            Cmd.Connection = conn;
            Cmd.CommandText = "SELECT * FROM DBuser WHERE id = '" + id + "' and password = '" + password + "'";
            conn.Open();
            SqlDataReader reader = Cmd.ExecuteReader();

            try
            {
                if (reader.Read())
                {
                    if (reader["password"].ToString() != "")
                    {
                        isUser = true;
                        nickname = reader["nick_name"].ToString();
                    }
                }
                reader.Close();
                if (isUser)
                {
                    FormsAuthentication.SetAuthCookie(id, false);
                    //세션  id = id;
                    Session["id"] = id;
                    Session["nickname"] = nickname;

                    Response.Redirect("main.aspx");
                }
                else
                {
                    // 로그인 정보가 잘못되었습니다.
                    ClientScript.RegisterStartupScript
                       (typeof(Page), "alert", "<script language=JavaScript>alert('로그인 정보가 잘못되었거나 회원이 아닙니다.');</script>");
                }
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
            conn.Close();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("main.aspx");
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("../Review/All Review.aspx/?order=star");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        if (TextBox3.Text != "")
            Response.Redirect("../Review/All Review.aspx/?name="+TextBox3.Text);
        else
            Response.Redirect("../Review/All Review.aspx/");
    }   
}