<%@ Page Title="" Language="C#" MasterPageFile="~/Home/home.Master" AutoEventWireup="true" CodeFile="All Review.aspx.cs" Inherits="Review_All_Review" Debug="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .list {
            margin-top: 0px;
        }
        .auto-style9 {
            font-size: 40pt;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style9" style="font-family: '나눔스퀘어OTF ExtraBold'; ">All Review&nbsp;&nbsp;&nbsp;&nbsp; </p>
        <asp:DropDownList ID="DropDownList2" runat="server" Height="30px" Width="115px">
            <asp:ListItem>가게이름</asp:ListItem>
            <asp:ListItem>동</asp:ListItem>
            <asp:ListItem>종류</asp:ListItem>
    </asp:DropDownList>
        <asp:TextBox ID="TextBox1" runat="server" Width="200px" Height="25px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="검색" Height="30px" Width="110px" OnClick="Button1_Click" UseSubmitBehavior="False" />
    <p style="text-align: center; font-family: '나눔스퀘어OTF ExtraBold';">
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="30px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="120px">
            <asp:ListItem Value="최신순">최신순</asp:ListItem>
            <asp:ListItem>별점 높은 순</asp:ListItem>
        </asp:DropDownList>
       &nbsp;<asp:GridView ID="GridView1" runat="server" 
    CssClass="list" AllowPaging="True" AutoGenerateColumns="False" 
    PageSize="7" Width="900px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Height="335px" DataSourceID="SqlDataSource1">
           <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
    <HeaderStyle CssClass="header" BackColor="#333333" Font-Bold="True" ForeColor="White" />
    <RowStyle CssClass="row" />
    <PagerStyle CssClass="pager" BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
    <PagerSettings PageButtonCount="5" FirstPageText="처음" LastPageText="끝" />
    <Columns>
         <asp:BoundField HeaderText="순번" DataField="id" />
        <asp:BoundField HeaderText="작성자" DataField="nickname" />
        <asp:HyperLinkField HeaderText ="가게이름" DataTextField="name" 
            DataNavigateUrlFormatString="Review Sample Page.aspx?id={0}" DataNavigateUrlFields="id"/>
        <asp:BoundField HeaderText="종류" DataField="food_type" />
        <asp:BoundField HeaderText="동" DataField="add_dong" />
        <asp:BoundField HeaderText="별점" DataField="star" />
    </Columns>
           <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
           <SortedAscendingCellStyle BackColor="#F7F7F7" />
           <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
           <SortedDescendingCellStyle BackColor="#E5E5E5" />
           <SortedDescendingHeaderStyle BackColor="#242121" />
</asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EDB20ConnectionString12 %>" SelectCommand="SELECT [id], [nickname], [name], [food_type], [add_dong], [star] FROM [infoDB]"></asp:SqlDataSource>
        
        &nbsp;</p>
    <p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:ImageButton ID="ImageButton2" runat="server" Height="25px" ImageUrl="~/Image/btn_write.gif" PostBackUrl="~/Review/WriteReviewPage.aspx" Width="102px" style="text-align: right" />
    </p>
    <p>
        &nbsp;</p>
</asp:Content>

