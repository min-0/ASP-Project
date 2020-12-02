<%@ Page Language="C#" AutoEventWireup="true" CodeFile="로그인 Page.aspx.cs" Inherits="로그인_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style10 {
            font-size: medium;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style11 {
            font-size: x-large;
            color: #000000;
        }
        .auto-style9 {
            color: #9F7F6E;
            font-size: large;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            &nbsp;</p>
        <div>
            <p>
                &nbsp;</p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style10">
            <asp:ListItem>한국어</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p class="auto-style7">
        &nbsp;&nbsp;&nbsp;
        </p>
    <p style="text-align: center">
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Image/Title.png" PostBackUrl="~/MainPage/main.aspx" style="text-align: center" />
            </p>
    <p class="auto-style7">
&nbsp;<asp:TextBox ID="TextBox1" placeholder="ID" runat="server" Height="40px" Width="300px" CssClass="auto-style11"> </asp:TextBox>
    </p>
    <p class="auto-style7">
        &nbsp;</p>
    <p class="auto-style7">
        &nbsp;
        <asp:TextBox ID="TextBox2" placeholder="PASSWORD" runat="server" Height="40px" Width="300px" CssClass="auto-style11" TextMode="Password"></asp:TextBox>
    </p>
    <p class="auto-style7">
        &nbsp;</p>
    <p class="auto-style7">
        &nbsp;
        <asp:Button ID="Button1" runat="server" BackColor="#E2D3C6" CssClass="auto-style9" Font-Bold="True" Height="40px" Text="로그인" Width="300px" OnClick="Button1_Click" />
    </p>
            <p class="auto-style7">
                <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/MainPage/main.aspx" style="color: #666666">로그인 또는 회원가입 없이 둘러보기</asp:LinkButton>
    </p>
            <p class="auto-style7">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/회원가입Page.aspx" OnClick="LinkButton3_Click">회원가입</asp:LinkButton>
    </p>
    <p class="auto-style7">
        <asp:Label ID="Label1" runat="server"></asp:Label>
            </p>
    <p class="auto-style7">
        <asp:Image ID="Image2" runat="server" Height="40px" ImageUrl="~/Image/선.PNG" Width="500px" />
    </p>
    <br />
    <p>
    </p>
        </div>
    </form>
</body>
</html>
