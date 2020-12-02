<%@ Page Title="" Language="C#" MasterPageFile="~/Home/home.Master" AutoEventWireup="true" CodeFile="WriteReviewPage.aspx.cs" Inherits="ReviewPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style11 {
            width: 85%;
            height: 179px;
            margin-right: 100px;
        }
        .auto-style13 {
            height: 41px;
            text-align: center;
            font-weight: bold;
        }
        .auto-style17 {
            height: 41px;
            width: 1000px;
        }
        .auto-style19 {
            background-color: #FFFFFF;
            text-align: center;
            z-index: 1;
            left: 1016px;
            top: 1144px;
            position: absolute;
            right: 92px;
            font-weight: 700;
        }
        .auto-style20 {
            width: 400px;
            height: 49px;
            text-align: center;
            font-weight: bold;
        }
        .auto-style21 {
            height: 49px;
            margin: 0px;
            width: 1000px;
        }
        .auto-style22 {
            font-weight: bold;
        }
        .auto-style23 {
            height: 49px;
            margin: 0px;
            width: 1000px;
            text-align: justify;
        }
        #TextArea1 {
            height: 178px;
            width: 725px;
        }
        .auto-style24 {
            font-size: 40pt;
        }
        .auto-style25 {
            height: 49px;
            margin: 0px;
            width: 177px;
            text-align: center;
        }
        .auto-style26 {
            height: 49px;
            margin: 0px;
            width: 1084px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <p class="auto-style9" style="font-family: '나눔스퀘어OTF ExtraBold'; "><span class="auto-style24">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Write Review</span>&nbsp;&nbsp;&nbsp;&nbsp; </p>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <table border="1" class="auto-style11" align="center">
        <tr>
            <td class="auto-style20">작성자</td>
            <td class="auto-style26">
                &nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server"></asp:Label>
            </td>
            <td class="auto-style25">
                <strong style="text-align: center">작성 일자</strong></td>
            <td class="auto-style21">
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label7" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">가게 이름&nbsp;&nbsp; </td>
            <td class="auto-style21" colspan="3">&nbsp;
                <asp:TextBox ID="TextBox4" runat="server" Height="25px" Width="700px"></asp:TextBox>
                &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Height="36px" Width="100px">
                    <asp:ListItem>종류 선택</asp:ListItem>
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
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">동 &amp; 상세주소&nbsp; </td>
            <td class="auto-style21" colspan="3">&nbsp; <asp:Label ID="Label3" runat="server" CssClass="auto-style22" Text="동"></asp:Label>
                &nbsp;
                <asp:TextBox ID="TextBox6" runat="server" Height="25px" Width="130px"></asp:TextBox>
                &nbsp;<asp:Label ID="Label4" runat="server" CssClass="auto-style22" Text="상세주소"></asp:Label>
                <asp:TextBox ID="TextBox8" runat="server" Height="25px" Width="446px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">가게 전화번호<td class="auto-style23" colspan="3">
                &nbsp; <asp:TextBox ID="TextBox7" runat="server" Height="25px" Width="700px"></asp:TextBox>
                &nbsp;<asp:Label ID="Label1" runat="server" Text="예시) 055-123-1234"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style20">내용</td>
            <td class="auto-style21" colspan="3">
&nbsp;&nbsp;<br />
                <br />
&nbsp;<asp:TextBox ID="TextBox2" runat="server" Height="300px" Width="1000px" EnableTheming="True" Rows="10" MaxLength="500" style="margin-bottom: 0px" OnTextChanged="TextBox2_TextChanged" TextMode="MultiLine"></asp:TextBox>
            &nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Height="36px" OnClick="Button3_Click" Text="글자수 확인" Width="100px" />
            <asp:Label ID="Label2" runat="server"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style13">별점&nbsp;    <td class="auto-style17" colspan="3"><br />
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Image/star_0.png" OnClick="ImageButton2_Click" Width="230px" />
            <asp:Label ID="Label5" runat="server"></asp:Label>
            <br />
            <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style13">이미지&nbsp; </td>
            <td class="auto-style17" colspan="3">&nbsp; 
                <asp:FileUpload ID="FileUpload1" runat="server" />
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13" colspan="4">&nbsp;</td>
        </tr>
        </table>
    <br />
    <br />
            <br />
                <asp:Button ID="Button2" runat="server" CssClass="auto-style19" Height="40px" Text="업로드 하기" Width="100px" OnClick="Button2_Click" />
            </asp:Content>

