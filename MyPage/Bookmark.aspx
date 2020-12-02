<%@ Page Title="" Language="C#" MasterPageFile="~/Home/home.Master" AutoEventWireup="true" CodeFile="즐겨찾기Page.aspx.cs" Inherits="즐겨찾기Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style8 {
            color: #0033CC;
            font-size: x-large;
            height: 345px;
        }
        .auto-style22 {
            font-size: medium;
        }
        .auto-style23 {
            font-size: 40pt;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p class="auto-style8">
        <strong class="auto-style23" style="font-family: '나눔스퀘어OTF ExtraBold'; color: #000000;">MY BOOKMARK<asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" style="font-size: large" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="83px" Width="700px">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                <asp:HyperLinkField HeaderText ="가게이름" DataTextField="name" 
            DataNavigateUrlFormatString="../Review/Review Sample Page.aspx?id={0}" DataNavigateUrlFields="id"/>
                <asp:BoundField DataField="food_type" HeaderText="종류" SortExpression="food_type" />
                <asp:BoundField DataField="star" HeaderText="별점" SortExpression="star" />
                <asp:BoundField DataField="writer" HeaderText="작성자" SortExpression="writer" />
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
        </strong>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EDB20ConnectionString12 %>" SelectCommand="SELECT [id], [name], [food_type], [star], [writer] FROM [Bookmark] WHERE ([nickname] = @nickname)">
            <SelectParameters>
                <asp:SessionParameter Name="nickname" SessionField="nickname" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
</p>
    <p class="auto-style22">
        <strong>
        <asp:Label ID="Label1" runat="server" Text="* 아직 즐겨찾기한 리뷰가 없습니다. " style="font-size: large"></asp:Label>
        </strong></p>
    <p class="auto-style22">
        &nbsp;</p>
    <p class="auto-style22">
        &nbsp;</p>
    <p>
        <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/MyPage/MyPage.aspx" style="font-size: large">Previous Page</asp:LinkButton>
        <br />
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
