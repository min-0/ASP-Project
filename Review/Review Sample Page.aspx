<%@ Page Title="" Language="C#" MasterPageFile="~/Home/home.Master" AutoEventWireup="true" CodeFile="Review Sample Page.aspx.cs" Inherits="Review_Review_Sample_Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 902px;
            height: 298px;
            margin-left: 101px;
        }
        .auto-style7 {
            height: 59px;
            width: 886px;
        }
        .auto-style8 {
            font-size: large;
        }
        .auto-style10 {
            width: 714px;
            height: 600px;
        }
        .auto-style11 {
            width: 826px;
            height: 48px;
        }
        .auto-style15 {
            width: 1595px;
            height: 68px;
            text-align: center;
        }
        .auto-style16 {
            width: 714px;
            height: 102px;
        }
        .auto-style17 {
            font-size: large;
        }
        .auto-style19 {
            width: 714px;
            height: 48px;
            text-align: right;
        }
        .auto-style20 {
            width: 714px;
            height: 24px;
            text-align: right;
        }
        .auto-style21 {
            width: 316px;
            height: 24px;
        }
        .auto-style22 {
            width: 225px;
            height: 68px;
            text-align: center;
        }
        .auto-style23 {
            height: 68px;
            width: -72;
        }
        .auto-style24 {
            font-size: large;
        }
        .auto-style25 {
            height: 68px;
            width: 40px;
        }
        .auto-style26 {
            width: 108px;
            height: 24px;
        }
        .auto-style27 {
            width: 316px;
            height: 68px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <table align="center" class="auto-style6">
        <tr>
            <td class="auto-style25" style="border-bottom-style: solid; border-bottom-width: medium; border-bottom-color: #D3BEAB">&nbsp;<asp:Image ID="Image3" runat="server" Height="50px" ImageUrl="~/Image/밥.PNG" />
                <asp:Label ID="Label5" runat="server" Text="name"></asp:Label>
            </td>
            <td class="auto-style25" style="border-bottom-style: solid; border-bottom-width: medium; border-bottom-color: #D3BEAB"><span class="auto-style17">
                <br />
                <asp:Label ID="Label7" runat="server" Text="food category"></asp:Label>
                </span>
                </td>
            <td class="auto-style23" colspan="2" style="border-bottom-style: solid; border-bottom-width: medium; border-bottom-color: #D3BEAB">
                <span class="auto-style17">
                <br />
                <asp:Label ID="Label2" runat="server" CssClass="auto-style17" Text="date"></asp:Label>
                </span>
                </td>
        </tr>
        <tr>
            <td class="auto-style11" colspan="2">
                <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text="nickname"></asp:Label>
            </td>
            <td class="auto-style19" colspan="2">&nbsp;
                <asp:Image ID="Image2" runat="server" Height="40px" ImageUrl="~/Image/settings.png" Width="40px" />
&nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10" colspan="4" style="border: medium solid #D3BEAB; text-align: center;">
                <br />
                <asp:Image ID="Image4" runat="server" style="text-align: center" />
                <br />
                <asp:Label ID="Label6" runat="server" Text="content"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;<asp:ImageButton ID="ImageButton2" runat="server" Height="96px" ImageUrl="~/Image/하트.PNG" Width="120px" />
            </td>
            <td class="auto-style26">&nbsp;
                <asp:ImageButton ID="ImageButton4" runat="server" Height="50px" ImageUrl="~/Image/star_0.png" Width="281px" />
                &nbsp;</td>
            <td class="auto-style20" colspan="2">&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton3" runat="server" Height="68px" ImageUrl="~/Image/bookmark.png" Width="66px" OnClick="ImageButton3_Click" />
&nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16" colspan="4">&nbsp;
                <br />
&nbsp;
                <asp:Label ID="Label3" runat="server" CssClass="auto-style8" Text="add_detail"></asp:Label>
                <br />
&nbsp;
                <asp:Label ID="Label4" runat="server" CssClass="auto-style8" Text="call_num"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style27" style="border-top-style: solid; border-top-width: medium; border-top-color: #D3BEAB">
                <asp:LinkButton ID="LinkButton4" runat="server" CssClass="auto-style24" PostBackUrl="~/MainPage/main.aspx">MAINPAGE</asp:LinkButton>
            </td>
            <td class="auto-style15" colspan="2" style="border-top-style: solid; border-top-width: medium; border-top-color: #D3BEAB">
                <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="~/즐겨찾기Page.aspx">BOOKMARK</asp:LinkButton>
            </td>
            <td class="auto-style22" style="border-top-style: solid; border-top-width: medium; border-top-color: #D3BEAB">
                <asp:LinkButton ID="LinkButton6" runat="server" PostBackUrl="~/MyPage/MyPage.aspx">MYPAGE</asp:LinkButton>
            </td>
        </tr>
    </table>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
