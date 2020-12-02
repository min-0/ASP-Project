<%@ Page Title="" Language="C#" MasterPageFile="~/Home/home.Master" AutoEventWireup="true" CodeFile="MyReview.aspx.cs" Inherits="MyPage_MyReview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            font-size: 40pt;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p class="auto-style9" style="font-family: '나눔스퀘어OTF ExtraBold'">
        My Reviews</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style8" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Width="955px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                <Columns>
                    <asp:BoundField DataField="name" HeaderText="가게 이름" SortExpression="name" />
                    <asp:BoundField DataField="add_dong" HeaderText="위치" SortExpression="add_dong" />
                    <asp:BoundField DataField="food_type" HeaderText="음식 종류" SortExpression="food_type" />
                    <asp:BoundField DataField="star" HeaderText="평점" SortExpression="star" />
                    <asp:BoundField DataField="time" HeaderText="작성 일자" SortExpression="time" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EDB20ConnectionString12 %>" SelectCommand="SELECT [name], [add_dong], [food_type], [star], [time] FROM [infoDB]"></asp:SqlDataSource>
    </p>
    <p>
        <strong>
        <asp:Label ID="Label1" runat="server" Text="* 아직 작성한 리뷰가 없습니다. " style="color: #0000CC; font-size: large"></asp:Label>
        </strong>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/MyPage/MyPage.aspx" style="font-size: large">Previous Page</asp:LinkButton>
    </p>
    <p>
    </p>
</asp:Content>

