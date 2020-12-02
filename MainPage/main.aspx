<%@ Page Title="" Language="C#" MasterPageFile="~/Home/home.Master" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="MainPage_main"Debug="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style7 {
        width: 400px;
        height: 200px;
            text-align: center;
        }
    .auto-style9 {
        font-weight: bold;
        font-size: large;
    }
        .auto-style10 {
            text-align: center;
        }
        .auto-style12 {
            font-weight: bold;
            font-size: large;
            width: 183px;
            text-align: center;
            height: 300px;
        }
        .auto-style13 {
            font-weight: bold;
            font-size: large;
            width: 149px;
            height: 300px;
        }
        .auto-style20 {
        height: 71px;
        width: 200px;
        text-align: center;
    }
    .auto-style21 {
        height: 100px;
        width: 200px;
        text-align: center;
    }
    .auto-style22 {
        height: 30px;
        width: 200px;
        text-align: center;
    }
    .auto-style23 {
        height: 77px;
        width: 200px;
    }
        .auto-style24 {
            width: 135px;
            height: 300px;
            text-align: center;
        }
        .auto-style25 {
            font-weight: bold;
            font-size: large;
            width: 111px;
            text-align: center;
            height: 300px;
        }
        .auto-style27 {
            height: 35px;
            width: 200px;
            text-align: left;
        }
        .auto-style44 {
            font-size: large;
        }
        .auto-style46 {
            height: 77px;
            width: 77px;
        }
        .auto-style47 {
            height: 71px;
            width: 77px;
            text-align: center;
        }
        .auto-style49 {
            height: 100px;
            width: 77px;
            text-align: center;
        }
        .auto-style50 {
            height: 30px;
            width: 77px;
            text-align: center;
        }
        .auto-style51 {
            height: 35px;
            width: 200px;
            text-align: left;
        }
        .auto-style52 {
            height: 35px;
            width: 77px;
            text-align: center;
        }
        .auto-style55 {
            height: 35px;
            width: 200px;
            text-align: left;
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1" style="height: 300px; width: 90%;">
        <tr>
            <td class="auto-style12">
                <asp:ImageButton ID="ImageButton2" runat="server" Height="85px" ImageUrl="~/Image/Food Category.png" Width="220px" style="position: relative; top: 10px; left: 8px" PostBackUrl="~/FoodType/New Type.aspx" />
                &nbsp;
                <br />
                <br />
                <asp:TextBox ID="TextBox3" placeholder="가게 이름을 검색해 주세요!" runat="server" Height="45px" style="position: relative; top: 43px; left: 165px" Width="280px"></asp:TextBox>
            </td>
            <td class="auto-style25">
                <asp:Button ID="Button3" runat="server" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Size="20pt" Height="90px" OnClick="Button3_Click" style="z-index: 1; left: 1256px; top: 327px; position: absolute" Text="Sign in" Width="145px" />
                &nbsp;<br />
                <asp:ImageButton ID="ImageButton3" runat="server" Height="85px" ImageUrl="~/Image/All Review.png" Width="220px" style="position: relative; top: 25px; left: -44px" PostBackUrl="~/Review/All Review.aspx" />
                <br />
                <br />
                <br />
                <br />
                <asp:Button ID="Button4" runat="server" Height="50px" OnClick="Button4_Click" style="font-size: large; font-weight: 700; position: relative; top: 8px; left: 128px" Text="Search" Width="200px" />
            </td>
            <td class="auto-style13">
                <asp:ImageButton ID="ImageButton4" runat="server" Height="85px" ImageUrl="~/Image/Write Review.png" Width="220px" OnClick="ImageButton4_Click" PostBackUrl="~/Review/WriteReviewPage.aspx" style="position: relative; top: 13px; left: -17px" />
                <br />
                <br />
                <br />
                <br />
            </td>
            <td class="auto-style24">
                <asp:Panel ID="Panel2" runat="server" BorderColor="#D9A711" BorderStyle="Solid" BorderWidth="7px" Height="200px" Width="400px">
                    <table class="auto-style1" style="height: 200px">
                        <tr>
                            <td colspan="2" style="text-align: left">&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: left">&nbsp;&nbsp;
                                <asp:Label ID="Label4" runat="server" CssClass="auto-style9" Text="ID : "></asp:Label>
                                <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="170px"></asp:TextBox>
                                <asp:Label ID="Label2" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: left">&nbsp;
                                <asp:Label ID="Label5" runat="server" CssClass="auto-style9" Text="PW :"></asp:Label>
                                <asp:TextBox ID="TextBox2" runat="server" Height="30px" TextMode="Password" Width="170px"></asp:TextBox>
                                <asp:Label ID="Label3" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10">
                                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="11pt" Height="40px" PostBackUrl="~/MyPage/MyPage.aspx" Text="MyPage" Width="130px" />
                            </td>
                            <td class="auto-style10">
                                <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="11pt" Height="40px" OnClick="Button2_Click" Text="Sign out" Width="130px" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        </table>
    <table class="auto-style1" style="height: 464px; margin-top: 27px; width: 96%;" align="right">
        <tr>
            <td class="auto-style55" style="font-family: '나눔스퀘어OTF ExtraBold';">
                <strong>*최신순*</strong></td>
            <td class="auto-style27">
            </td>
            <td class="auto-style52">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="auto-style44" PostBackUrl="~/Review/All Review.aspx">더보기 &gt;</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="auto-style23">
                <asp:Panel ID="Panel3" runat="server" Height="280px" BorderColor="#666666" BorderStyle="Solid" BorderWidth="2px" VerticalAlign="Center" style="text-align: center; vertical-align:middle;" Width="332px">
                    <asp:Image ID="Image2" runat="server" Height="275px" Width="327px" />
                </asp:Panel>
            </td>
            <td class="auto-style23">
                <asp:Panel ID="Panel4" runat="server" Height="280px" BorderColor="#666666" BorderStyle="Solid" BorderWidth="2px" style="text-align: center" Width="332px">
                    <asp:Image ID="Image3" runat="server" Height="275px" Width="327px" />
                </asp:Panel>
            </td>
            <td class="auto-style46">
                <asp:Panel ID="Panel5" runat="server" Height="280px" BorderColor="#666666" BorderStyle="Solid" BorderWidth="2px" style="text-align: center" Width="332px">
                    <asp:Image ID="Image4" runat="server" Height="275px" Width="327px" />
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">
                <asp:Panel ID="Panel6" runat="server" BorderColor="#666666" BorderStyle="Solid" BorderWidth="2px" Height="75px" Width="332px">
                    <asp:Label ID="Label6" runat="server"></asp:Label>
                    <br />
                    <br />
                </asp:Panel>
            </td>
            <td class="auto-style20">
                <asp:Panel ID="Panel7" runat="server" BorderColor="#666666" BorderStyle="Solid" BorderWidth="2px" Height="75px" Width="332px">
                    <asp:Label ID="Label7" runat="server"></asp:Label>
                    <br />
                    <br />
                </asp:Panel>
            </td>
            <td class="auto-style47">
                <asp:Panel ID="Panel8" runat="server" BorderColor="#666666" BorderStyle="Solid" BorderWidth="2px" Height="75px" Width="332px">
                    <asp:Label ID="Label8" runat="server"></asp:Label>
                    <br />
                    <br />
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="auto-style51">
                </td>
            <td class="auto-style51">
            </td>
            <td class="auto-style52">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td class="auto-style55" style="font-family: '나눔스퀘어OTF ExtraBold'">
                <strong>*별점 높은 순*</strong></td>
            <td class="auto-style51">
                &nbsp;</td>
            <td class="auto-style52">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:LinkButton ID="LinkButton2" runat="server" CssClass="auto-style44" OnClick="LinkButton2_Click">더보기 &gt;</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="auto-style21">
                <asp:Panel ID="Panel9" runat="server" Height="280px" BorderColor="#666666" BorderStyle="Solid" BorderWidth="2px" style="text-align: center" Width="332px">
                    <asp:Image ID="Image5" runat="server" Height="275px" Width="327px" />
                </asp:Panel>
            </td>
            <td class="auto-style21">
                <asp:Panel ID="Panel10" runat="server" Height="280px" BorderColor="#666666" BorderStyle="Solid" BorderWidth="2px" style="text-align: center" Width="332px">
                    <asp:Image ID="Image6" runat="server" Height="275px" Width="327px" />
                </asp:Panel>
            </td>
            <td class="auto-style49">
                <asp:Panel ID="Panel11" runat="server" Height="280px" BorderColor="#666666" BorderStyle="Solid" BorderWidth="2px" style="text-align: center" Width="332px">
                    <asp:Image ID="Image7" runat="server" Height="275px" Width="327px" />
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="auto-style22">
                <asp:Panel ID="Panel12" runat="server" BorderColor="#666666" BorderStyle="Solid" BorderWidth="2px" Height="75px" Width="332px">
                    <asp:Label ID="Label9" runat="server"></asp:Label>
                    <br />
                </asp:Panel>
            </td>
            <td class="auto-style22">
                <asp:Panel ID="Panel13" runat="server" BorderColor="#666666" BorderStyle="Solid" BorderWidth="2px" Height="75px" Width="332px">
                    <asp:Label ID="Label10" runat="server"></asp:Label>
                    <br />
                </asp:Panel>
            </td>
            <td class="auto-style50">
                <asp:Panel ID="Panel14" runat="server" BorderColor="#666666" BorderStyle="Solid" BorderWidth="2px" Height="75px" Width="332px">
                    <asp:Label ID="Label11" runat="server"></asp:Label>
                    <br />
                </asp:Panel>
            </td>
        </tr>
    </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
</asp:Content>

