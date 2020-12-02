using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Review_All_Review : System.Web.UI.Page
{
    string orderString = " ORDER BY [id] DESC"; // 정렬 명령문 기본 최신순
    string whereString = ""; // 조건 명령문
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Attributes.Add("onkeypress", "if(event.keyCode==13){" + this.Page.ClientScript.GetPostBackEventReference(Button1, null) + ";return false;}"); // 창에서 엔터를 눌렀을 때 어떤 버튼을 실행시킬 지
        SqlDataSource1.ConnectionString = "Data Source=(local)\\SQLEXPRESS;Initial Catalog=EDB20;Integrated Security=True";
        GridView1.DataSourceID = SqlDataSource1.ID; // 그리드 뷰 연결, 데이터 바인딩 설정
        
        if (Request["order"] == "star")
        {
            DropDownList1.SelectedIndex = 1;
            orderString = " ORDER BY [star] DESC";
        }

        if (Request["name"] != null) // 가게이름 검색
            whereString = " WHERE name LIKE '%"+Request["name"]+"%'"; // 조건문 추가 포함만 되어 있으면 허용 %가 있어서 가능
        else if (Request["food_type"] != null)// 종류 검색
            whereString = " WHERE [food_type] LIKE'%" + Request["food_type"] + "%'";
        else if (Request["add_dong"] != null)
            whereString = " WHERE [add_dong] LIKE '%" + Request["add_dong"] + "%'";
        databindSQL(); // 데이터 동기화
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "") // 검색창 공백일 때
        {
            Response.Redirect("/Review/All Review.aspx/");
        }
        if( DropDownList2.SelectedValue=="가게이름")
            Response.Redirect("/Review/All Review.aspx/?name=" + TextBox1.Text);
        else if (DropDownList2.SelectedValue=="동")
            Response.Redirect("/Review/All Review.aspx/?add_dong=" + TextBox1.Text);
        else if (DropDownList2.SelectedValue=="종류")
            Response.Redirect("/Review/All Review.aspx/?food_type=" + TextBox1.Text);
       
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        switch (DropDownList1.SelectedIndex)
        {
            case 0: // 최신순
                orderString = " ORDER BY [id] DESC";
                break;
            case 1: //별점 높은 순
                orderString = " ORDER BY [star] DESC";
                break;
        }
        databindSQL();
    }
    protected void databindSQL()
    {
        
            SqlDataSource1.SelectCommand = "SELECT [id], [nickname], [name], [food_type], [add_dong], [star] FROM [infoDB]" + whereString + orderString + ";"; // DB에서 가져올 데이터 명령문
            GridView1.DataBind(); // 데이터 동기화
        
    }
}