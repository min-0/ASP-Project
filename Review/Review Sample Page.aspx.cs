using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Review_Review_Sample_Page : System.Web.UI.Page
{
    static string rate;
    static bool bookmarked = false;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request["id"] != null)
            {
                string connectionString = @"server=(local)\SQLExpress;Integrated Security=true;database=EDB20";
                SqlConnection conn = new SqlConnection(connectionString);

                SqlCommand Cmd = new SqlCommand();
                Cmd.Connection = conn;
                Cmd.CommandText = "select * from infoDB where id = " + int.Parse(Request["id"]) + ""; // 순번을 가지고 불러오는 조건문

                conn.Open();
                try
                {
                    SqlDataReader reader = Cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        if (reader["id"].ToString() != "")
                        {
                            Label5.Text = reader["name"].ToString();
                            Label1.Text = "작성자 : " + reader["nickname"].ToString();
                            Label2.Text = reader["time"].ToString();
                            Label3.Text = reader["add_detail"].ToString();
                            Label4.Text = reader["call_num"].ToString();
                            rate = reader["star"].ToString();
                            Label6.Text = reader["content"].ToString();
                            Label7.Text = reader["food_type"].ToString();
                            Image4.ImageUrl = reader["image"].ToString();
                            switch (rate)
                            {
                                case "0":
                                ImageButton4.ImageUrl = "~/image/star_0.png";
                                break;
                                case "0.5":
                                ImageButton4.ImageUrl = "~/image/star_0.5.png";
                                break;
                                case "1":
                                ImageButton4.ImageUrl = "~/image/star_1.png";
                                break;
                                case "1.5":
                                ImageButton4.ImageUrl = "~/image/star_1.5.png";
                                break;
                                case "2":
                                ImageButton4.ImageUrl = "~/image/star_2.png";
                                break;
                                case "2.5":
                                ImageButton4.ImageUrl = "~/image/star_2.5.png";
                                break;
                                case "3":
                                ImageButton4.ImageUrl = "~/image/star_3.png";
                                break;
                                case "3.5":
                                ImageButton4.ImageUrl = "~/image/star_3.5.png";
                                break;
                                case "4":
                                ImageButton4.ImageUrl = "~/image/star_4.png";
                                break;
                                case "4.5":
                                ImageButton4.ImageUrl = "~/image/star_4.5.png";
                                break;
                                case "5":
                                ImageButton4.ImageUrl = "~/image/star_5.png";
                                break;
                            }
                            break;
                        }

                    }
                    conn.Close();
                    Cmd.CommandText = "select * from Bookmark where id = " + int.Parse(Request["id"]) + "AND nickname = '"+ Session["nickname"] +"';"; // 순번을 가지고 불러오는 조건문

                    conn.Open();
                    reader = Cmd.ExecuteReader();
                    if (reader.Read())
                    {
                        ImageButton3.ImageUrl = "~/Image/bookmarked.png";
                        bookmarked = true;
                    }
                    conn.Close();
                }
                catch(Exception ee)
                {
                    Label1.Text = ee.Message;
                }
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        string connectionString = @"server=(local)\SQLExpress;Integrated Security=true;database=EDB20";
        SqlConnection conn = new SqlConnection(connectionString);
        SqlCommand Cmd = new SqlCommand();
        Cmd.Connection = conn;
        conn.Open();
        if (!bookmarked)
        {
            Cmd.CommandText = "INSERT INTO Bookmark (id, nickname, name, food_type, star, writer) VALUES" +

                 "( '" + Request["id"] + "' ,  " + " '" + Session["nickname"] + "' ,  " + " '" + Label5.Text + "' ,  " + " '" + Label7.Text + "' ,  "
                 + " '" + rate + "',  " + " '" + Label1.Text.Substring(Label1.Text.IndexOf(":")+2) + "' )";
            try
            {
                bookmarked = true;
                int rowAffected = Cmd.ExecuteNonQuery();
                string script = "<script type='text/javascript'>alert('BOOKMARK에 추가 되었습니다.'); location.href='./Review Sample Page.aspx?id=" + Request["id"] + "';</script>";
                Response.Write(script);
                Response.End();
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
            
        }
        else
        {
            bookmarked = false;
            Cmd.CommandText = "delete from Bookmark where id = " + int.Parse(Request["id"]) + "AND nickname = '" + Session["nickname"] + "';";
            try
            {
                int rowAffected = Cmd.ExecuteNonQuery();
                string script = "<script type='text/javascript'>alert('BOOKMARK가 삭제 되었습니다.'); location.href='./Review Sample Page.aspx?id=" + Request["id"] + "';</script>";
                Response.Write(script);
                Response.End();
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }
        conn.Close();
        
    }
}