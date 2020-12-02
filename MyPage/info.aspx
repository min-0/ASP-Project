<%@ Page Title="" Language="C#" MasterPageFile="~/Home/home.Master" AutoEventWireup="true" CodeFile="info.aspx.cs" Inherits="MyPage_info" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style6 {
            text-align: center;
        font-size: large;
        background-color: #FFCC99;
            height: 78px;
        }
        .auto-style19 {
            width: 34px;
            font-size: large;
            font-weight: bold;
            height: 64px;
            background-color: #FFFFFF;
            text-align: center;
        }
        .auto-style20 {
            height: 64px;
            background-color: #FEFFFF;
            width: 310px;
            text-align: left;
        }
        .auto-style12 {
            height: 64px;
            width: 310px;
            text-align: left;
        }
        .auto-style22 {
            height: 65px;
            width: 310px;
            text-align: left;
        }
        .auto-style23 {
            width: 310px;
            text-align: left;
        }
        .auto-style26 {
            text-align: center;
            width: 310px;
        }
        .auto-style27 {
            width: 34px;
            font-size: large;
            font-weight: bold;
            height: 64px;
            background-color: #FFFFCC;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    </p>
    <p>
    </p>
    <table class="auto-style1" style="width: 50%; height: 670px; margin-top: 0px; margin-left : 300px; position: relative; top: 0px; left: 77px;">
        <tr>
            <td class="auto-style6" colspan="2"><strong style="font-family: '나눔스퀘어OTF ExtraBold'; font-size: 24px">&nbsp;MY INFORMATION</strong></td>
        </tr>
        <tr>
            <td class="auto-style27" style="font-family: '나눔스퀘어OTF ExtraBold'; font-size: 19px">NAME</td>
            <td class="auto-style20"text-align: center;">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style27" style="font-family: '나눔스퀘어OTF ExtraBold'; font-size: 19px">ID</td>
            <td class="auto-style23">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style27" style="font-family: '나눔스퀘어OTF ExtraBold'; font-size: 19px">NICKNAME</td>
            <td class="auto-style12">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style27" style="font-family: '나눔스퀘어OTF ExtraBold'; font-size: 19px">EMAIL</td>
            <td class="auto-style22">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="250px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" EnableClientScript="False" ErrorMessage="이메일 형식이 올바르지 않습니다." style="color: #CC3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style27" style="font-family: '나눔스퀘어OTF ExtraBold'; font-size: 19px">SEX</td>
            <td class="auto-style23">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style27" style="font-family: '나눔스퀘어OTF ExtraBold'; font-size: 19px">PASSWORD</td>
            <td class="auto-style23">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" runat="server" Height="25px" Width="250px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style27" style="font-family: '나눔스퀘어OTF ExtraBold'; font-size: 19px">PASSWORD CHECK</td>
            <td class="auto-style23">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox4" runat="server" Height="25px" Width="250px" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="비밀번호가 일치하지 않습니다." style="color: #CC3300" EnableClientScript="False"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style19" style="font-family: '나눔스퀘어OTF ExtraBold'; font-size: 19px">&nbsp;</td>
            <td class="auto-style26">
                <asp:Button ID="Button1" runat="server" Text="수정 완료" Height="40px" OnClick="Button1_Click" style="font-size: large; font-weight: 700" Width="139px" />
            </td>
        </tr>
    </table>
    <p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/MyPage/MyPage.aspx" style="font-size: large">Previous Page</asp:LinkButton>
    </p>
    <p>
    </p>
</asp:Content>

