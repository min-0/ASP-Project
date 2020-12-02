<%@ Page Title="" Language="C#" MasterPageFile="~/Home/home.Master" AutoEventWireup="true" CodeFile="add_detail.aspx.cs" Inherits="FoodType_add_detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            font-size: 40pt;
        }
        .auto-style10 {
            width: 1101px;
            height: 61px;
        }
        .auto-style12 {
            height: 20px;
            text-align: center;
            width: 366px;
        }
        .auto-style13 {
            text-align: center;
            width: 367px;
        }
        .auto-style14 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;</p>
    <p class="auto-style9" style="font-family: '나눔스퀘어OTF ExtraBold'; font-size: 40px">
        Detial View</p>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource1" Height="188px" Width="992px" style="text-align: center" OnPageIndexChanging="DetailsView1_PageIndexChanging">
            <Fields>
                <asp:BoundField DataField="name" HeaderText="가게 이름" SortExpression="name" />
                <asp:BoundField DataField="add_dong" HeaderText="동" SortExpression="add_dong" />
                <asp:BoundField DataField="call_num" HeaderText="가게 번호" SortExpression="call_num" />
                <asp:BoundField DataField="add_detail" HeaderText="상세 주소" SortExpression="add_detail" />
                <asp:BoundField DataField="food_type" HeaderText="종류" SortExpression="food_type" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EDB20ConnectionString13 %>" SelectCommand="SELECT DISTINCT [call_num], [add_dong], [add_detail], [food_type], [name] FROM [infoDB] WHERE ([food_type] = @food_type)">
            <SelectParameters>
                <asp:QueryStringParameter Name="food_type" QueryStringField="food_type" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <table class="auto-style10">
        <tr>
            <td class="auto-style12">
                <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/FoodType/New Type.aspx" CssClass="auto-style14">Previous Page</asp:LinkButton>
            </td>
            <td class="auto-style12">
                <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="~/MainPage/main.aspx" CssClass="auto-style14">Main Page</asp:LinkButton>
            </td>
            <td class="auto-style13">
                <asp:LinkButton ID="LinkButton6" runat="server" PostBackUrl="~/Review/WriteReviewPage.aspx" CssClass="auto-style14">Write Review</asp:LinkButton>
            </td>
        </tr>
    </table>
    <p>
    </p>
</asp:Content>

