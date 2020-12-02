using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class MyPage_MyPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ImageButton11.Attributes.Add("OnClick", "javascript:fConfirm();");
    }

    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {
        
    }
    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("../즐겨찾기Page.aspx");
    }
    protected void ImageButton10_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("./info.aspx");
    }
    protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
    {
        if (this.hddValue.Value == "true")
        {
            string connectionString = @"server=(local)\SQLExpress;Integrated Security=true;database=EDB20";
            SqlConnection Con = new SqlConnection(connectionString);
            SqlCommand Cmd = new SqlCommand();
            Cmd.Connection = Con;
            Cmd.CommandText = "DELETE FROM DBuser WHERE nick_name = '" + Session["nickname"].ToString() + "'";
            Con.Open();
            int userAffected = Cmd.ExecuteNonQuery();
            Con.Close();
            Cmd.CommandText = "DELETE FROM infoDB WHERE nickname= '" + Session["nickname"].ToString() + "'";
            Con.Open();
            int infoAffected = Cmd.ExecuteNonQuery();
            Con.Close();
            Cmd.CommandText = "DELETE FROM Bookmark WHERE nickname= '" + Session["nickname"].ToString() + "'";
            Con.Open();
            int bookmarkAffected = Cmd.ExecuteNonQuery();
            Con.Close();
            Session.Clear();
            Response.Redirect("../로그인 Page.aspx");
        }
    }
}