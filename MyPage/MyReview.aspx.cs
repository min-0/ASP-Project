using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyPage_MyReview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["nickname"] != null)
            databindSQL();
        if (GridView1.Rows.Count != 0)
            Label1.Visible = false;
    }
    protected void databindSQL()
    {
        SqlDataSource1.SelectCommand = "SELECT [name], [add_dong], [food_type], [star], [time] FROM [infoDB] WHERE nickname ='" + Session["nickname"].ToString() + "'";
        GridView1.DataBind();
    }
}