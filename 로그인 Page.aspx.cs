using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Security;

public partial class 로그인_Page : System.Web.UI.Page
{
    static string prevPage = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox2.Attributes.Add("onkeypress", "if(event.keyCode==13){" + this.Page.ClientScript.GetPostBackEventReference(Button1, null) + ";return false;}"); // 창에서 엔터를 눌렀을 때 어떤 버튼을 실행시킬 지
        if (!IsPostBack)
        { //페이지 처음 접속했을 때
            try
            {
                prevPage = Request.UrlReferrer.ToString();
                // 이전페이지 URL 값을 저장
            }
            catch
            {

            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
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
                    if (prevPage == null || prevPage.IndexOf("/회원가입Page.aspx")!=0)
                    {
                        Response.Redirect("./MainPage/main.aspx");
                    }
                    else
                    {
                        Response.Redirect(prevPage);
                    }
                    
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
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("../회원가입Page.aspx");
    }
}