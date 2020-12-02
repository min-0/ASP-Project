using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FoodType_New_Type : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (RadioButtonList1.SelectedIndex >= 0)
        {
            Label1.Text = "";
        }
        else
        {
            Label1.Text = "음식 종류를 선택해주세요 !";
        }
    }
}