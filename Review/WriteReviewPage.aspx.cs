using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

public partial class ReviewPage : System.Web.UI.Page
{

    static int x = 0;
    static double rating = 0;

    protected void Page_LoadComplete(object sender, EventArgs e){
        if (!this.Page.User.Identity.IsAuthenticated)
        {
            Response.Write("<script type='text/javascript'>alert('로그인 후 리뷰 작성이 가능합니다!'); location.href='../로그인 Page.aspx';</script>");
            Response.End();
        }
        string connectionString = @"server=(local)\SQLExpress;Integrated Security=true;database=EDB20";
        SqlConnection conn = new SqlConnection(connectionString);
        string nickname = "";

        SqlCommand Cmd = new SqlCommand();
        Cmd.Connection = conn;
        Cmd.CommandText = "select * from DBuser where nick_name = '" + Session["nickname"] + "'";

        conn.Open();
        try
        {
            SqlDataReader reader = Cmd.ExecuteReader();
            while (reader.Read())
            {
                if (reader["nick_name"].ToString() != "")
                {
                    nickname = reader["nick_name"].ToString();
                    break;
                }
            }
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
        Label6.Text = nickname;
        Label7.Text = DateTime.Now.ToString().Substring(0, 10);
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        Page.LoadComplete +=new EventHandler(Page_LoadComplete);

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
        x = TextBox2.Text.Length;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Page.Validate();
        string image = "";
        Label7.Text = DateTime.Now.ToString();

        if (FileUpload1.HasFile)
        {
            string str = FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Upload/") + str);
            image = "~/Upload/" + str.ToString();
        }

        string connectionString = @"server=(local)\SQLExpress;Integrated Security=true;database=EDB20";
        SqlConnection conn = new SqlConnection(connectionString);
        SqlCommand Cmd = new SqlCommand();
        Cmd.Connection = conn;
        conn.Open();
        Cmd.CommandText = "INSERT INTO infoDB (nickname, name, call_num, add_dong, add_detail, food_type, star, content, image, time) VALUES" +

             "( '" + Label6.Text +"' ,  " + " '" + TextBox4.Text + "' ,  " + " '" + TextBox7.Text + "' ,  " + " '" + TextBox6.Text + "' ,  "
             + " '" + TextBox8.Text + "',  " + " '" + DropDownList1.SelectedItem.Text + "' ,  " + " " + rating + ",  " + " '" + TextBox2.Text +
             "',  " + " '" + image + "',  " + " '" + Label7.Text + "' )";

        if (TextBox4.Text == "" || TextBox7.Text == "" || TextBox6.Text == "" || TextBox8.Text == "" || DropDownList1.SelectedIndex == 0 || TextBox2.Text == "")
        {
            string script = "<script type='text/javascript'>alert('양식을 모두 채워주세요'); </script>";
            Response.Write(script);
        }
        else
        {
            try
            {
                int rowAffected = Cmd.ExecuteNonQuery();
                string script = "<script type='text/javascript'>alert('리뷰 작성이 완료되었습니다.'); location.href='../MainPage/main.aspx';</script>";
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
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        //별점 이미지
        if (e.X == 0)
        {
            ImageButton2.ImageUrl = "~/image/star_0.png";
            rating = 0;
        }
        else if (e.X < 23)
        {
            ImageButton2.ImageUrl = "~/image/star_0.5.png";
            rating = 0.5;
        }
        else if (e.X < 46)
        {
            ImageButton2.ImageUrl = "~/image/star_1.png";
            rating = 1;
        }
        else if (e.X < 69)
        {
            ImageButton2.ImageUrl = "~/image/star_1.5.png";
            rating = 1.5;
        }
        else if (e.X < 92)
        {
            ImageButton2.ImageUrl = "~/image/star_2.png";
            rating = 2;
        }
        else if (e.X < 115)
        {
            ImageButton2.ImageUrl = "~/image/star_2.5.png";
            rating = 2.5;
        }
        else if (e.X < 138)
        {
            ImageButton2.ImageUrl = "~/image/star_3.png";
            rating = 3;
        }
        else if (e.X < 161)
        {
            ImageButton2.ImageUrl = "~/image/star_3.5.png";
            rating = 3.5;
        }
        else if (e.X < 184)
        {
            ImageButton2.ImageUrl = "~/image/star_4.png";
            rating = 4;
        }
        else if (e.X < 207)
        {
            ImageButton2.ImageUrl = "~/image/star_4.5.png";
            rating = 4.5;
        }
        else
        {
            ImageButton2.ImageUrl = "~/image/star_5.png";
            rating = 5;
        }

        Label5.Text = rating.ToString();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (TextBox2.Text.Length > 500)
        {
            Label2.Text = "(" + TextBox2.Text.Length + "/500) 500자이내 업로드 가능합니다.";
        }
        else
        {
            Label2.Text = "(" + TextBox2.Text.Length + "/500)";
        }

    }

}