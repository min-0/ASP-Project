<%@ Page Title="" Language="C#" MasterPageFile="~/Home/home.Master" AutoEventWireup="true" CodeFile="New Type.aspx.cs" Inherits="FoodType_New_Type" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            font-size: 40pt;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;</p>
    <p class="auto-style9" style="font-family: '나눔스퀘어OTF ExtraBold';">
        Food Category</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" AutoPostBack="True">
            <asp:ListItem>한식</asp:ListItem>
            <asp:ListItem>중식</asp:ListItem>
            <asp:ListItem>분식</asp:ListItem>
            <asp:ListItem>치킨</asp:ListItem>
            <asp:ListItem>일식/회</asp:ListItem>
            <asp:ListItem>피자/양식</asp:ListItem>
            <asp:ListItem>카페/디저트</asp:ListItem>
            <asp:ListItem>족발/보쌈</asp:ListItem>
            <asp:ListItem>찜/탕</asp:ListItem>
            <asp:ListItem>야식</asp:ListItem>
            <asp:ListItem>도시락</asp:ListItem>
        </asp:RadioButtonList>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" style="font-size: x-large; text-align: center; color: #000099;"></asp:Label>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Height="230px" Width="900px">
            <Columns>
                <asp:BoundField DataField="name" HeaderText="가게 이름" SortExpression="name" />
                <asp:BoundField DataField="add_dong" HeaderText="동" SortExpression="add_dong" />
                <asp:BoundField DataField="food_type" HeaderText="음식 종류" SortExpression="food_type" />
                <asp:HyperLinkField DataNavigateUrlFields="food_type" DataNavigateUrlFormatString="add_detail.aspx?food_type={0}" HeaderText="상세 보기" Text="상세보기" NavigateUrl="~/FoodType/add_detail.aspx" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EDB20ConnectionString12 %>" SelectCommand="SELECT [name], [add_dong], [food_type] FROM [infoDB] WHERE ([food_type] = @food_type)">
            <SelectParameters>
                <asp:ControlParameter ControlID="RadioButtonList1" Name="food_type" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

