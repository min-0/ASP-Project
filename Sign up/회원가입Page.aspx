<%@ Page Title="" Language="C#" MasterPageFile="~/Home/home.Master" AutoEventWireup="true" CodeFile="회원가입Page.aspx.cs" Inherits="회원가입Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .auto-style8 {
            font-size: small;
            text-align: center;
            height: 102px;
        }
    .auto-style13 {
        color: #FF3300;
    }
    .auto-style9 {
        width: 78%;
        height: 553px;
            font-size: xx-large;
            position: relative;
            left: 253px;
            top: -1px;
        }
        .auto-style21 {
            height: 11px;
        }
        .auto-style34 {
            height: 30px;
            width: 241px;
        }
    .auto-style10 {
        text-align: center;
        background-color: #E2D3C6;
            font-size: large;
            height: 49px;
        }
        .auto-style26 {
            background-color: #E2D9C7;
            font-size: large;
            height: 69px;
        }
        .auto-style30 {
            width: 243px;
            text-align: right;
            background-color: #E2D9C7;
            font-size: large;
        }
        .auto-style31 {
            width: 243px;
            text-align: right;
            background-color: #E2D9C7;
            height: 30px;
            font-size: large;
        }
        .auto-style18 {
            width: 243px;
            text-align: right;
            height: 11px;
        }
        .auto-style35 {
            font-size: medium;
        }
        .auto-style36 {
            font-size: large;
        }
        .auto-style37 {
            width: 109px;
        }
        .auto-style38 {
            width: 109px;
            height: 30px;
        }
        .auto-style39 {
            width: 109px;
            height: 11px;
        }
        .auto-style40 {
            width: 150px;
        }
        .auto-style41 {
            width: 150px;
            height: 30px;
        }
        .auto-style42 {
            width: 150px;
            height: 11px;
        }
        .auto-style51 {
            height: 49px;
            width: 241px;
        }
        .auto-style52 {
            width: 243px;
            text-align: right;
            background-color: #E2D9C7;
            font-size: large;
            height: 25px;
        }
        .auto-style53 {
            width: 150px;
            height: 25px;
        }
        .auto-style54 {
            width: 109px;
            height: 25px;
        }
        .auto-style55 {
            height: 25px;
            width: 241px;
        }
        .auto-style56 {
            width: 243px;
            text-align: right;
            background-color: #E2D9C7;
            font-size: large;
            height: 11px;
        }
        .auto-style57 {
            width: 150px;
            height: 11px;
            font-size: large;
        }
        .auto-style59 {
            height: 11px;
            color: #FF3300;
        }
        .auto-style60 {
            height: 30px;
            color: #FF3300;
        }
        .auto-style61 {
            height: 25px;
            color: #FF3300;
        }
        .auto-style62 {
            height: 49px;
            color: #FF3300;
        }
        .auto-style63 {
            width: 241px;
        }
        .auto-style64 {
            height: 11px;
            width: 241px;
        }
        .auto-style67 {
            font-size: large;
            color: #FF3300;
        }
        .auto-style68 {
            color: #000000;
        }
        .auto-style69 {
            color: #FF3300;
            height: 69px;
        }
        .auto-style70 {
            width: 241px;
            height: 69px;
        }
        .auto-style71 {
            width: 243px;
            text-align: right;
            background-color: #E2D9C7;
            font-size: large;
            height: 60px;
        }
        .auto-style72 {
            width: 150px;
            height: 60px;
        }
        .auto-style73 {
            width: 109px;
            height: 60px;
        }
        .auto-style74 {
            color: #FF3300;
            height: 60px;
        }
        .auto-style75 {
            width: 241px;
            height: 60px;
        }
        .auto-style76 {
            width: 243px;
            text-align: right;
            background-color: #E2D9C7;
            font-size: large;
            height: 86px;
        }
        .auto-style77 {
            width: 150px;
            height: 86px;
        }
        .auto-style78 {
            width: 109px;
            height: 86px;
        }
        .auto-style79 {
            color: #FF3300;
            height: 86px;
        }
        .auto-style80 {
            width: 241px;
            height: 86px;
        }
        .auto-style81 {
            text-align: center;
        }
        .auto-style83 {
            color: #000000;
            font-size: large;
        }
        .auto-style84 {
            color: #000000;
            font-size: large;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:Image ID="Image1" runat="server" Height="101px" ImageUrl="~/Image/KakaoTalk_20201109_182059462_03.jpg" Width="122px" />
        <asp:Image ID="Image2" runat="server" Height="101px" ImageUrl="~/Image/KakaoTalk_20201109_182059462_11.jpg" Width="123px" />
        <asp:Image ID="Image3" runat="server" Height="101px" ImageUrl="~/Image/KakaoTalk_20201109_182059462_16.jpg" Width="122px" />
        <asp:Image ID="Image4" runat="server" Height="101px" ImageUrl="~/Image/KakaoTalk_20201109_182059462_23.jpg" Width="121px" />
        <asp:Image ID="Image5" runat="server" Height="101px" ImageUrl="~/Image/KakaoTalk_20201109_182059462_20.jpg" Width="131px" />
        <asp:Image ID="Image6" runat="server" Height="101px" ImageUrl="~/Image/KakaoTalk_20201109_182059462_29.jpg" Width="119px" />
        <asp:Image ID="Image7" runat="server" Height="101px" ImageUrl="~/Image/KakaoTalk_20201109_182059462_13.jpg" Width="116px" />
        <asp:Image ID="Image8" runat="server" Height="101px" ImageUrl="~/Image/KakaoTalk_20201109_182059462_18.jpg" Width="119px" />
        <asp:Image ID="Image9" runat="server" Height="101px" ImageUrl="~/Image/KakaoTalk_20201109_182059462_22.jpg" Width="119px" />
        <asp:Image ID="Image10" runat="server" Height="101px" ImageUrl="~/Image/KakaoTalk_20201109_182059462_28.jpg" Width="109px" />
    </p>
    <p>
        &nbsp;<br />
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
    <p class="auto-style8">
        <strong><span class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style35">* </span> </span><span class="auto-style35">는 필수항목입니다.</span></strong></p>
    <table class="auto-style9" align="center">
        <tr>
            <td class="auto-style10" colspan="3"><strong>회원 가입 양식</strong></td>
            <td class="auto-style62"><span class="auto-style36"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</strong></td>
            <td class="auto-style51"></span></td>
        </tr>
        <tr>
            <td class="auto-style26" colspan="3">&nbsp; <strong>로그인 정보</strong>&nbsp;</td>
            <td class="auto-style69"><span class="auto-style36"></td>
            <td class="auto-style70"></span></td>
        </tr>
        <tr>
            <td class="auto-style52"><span class="auto-style13"><strong>*</strong></span> 이름 :&nbsp;&nbsp; </td>
            <td class="auto-style53">
                <asp:TextBox ID="TextBox13" runat="server" Height="23px" OnTextChanged="TextBox13_TextChanged"></asp:TextBox>
            </td>
            <td class="auto-style54">
                &nbsp;</td>
            <td class="auto-style61">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox13" ErrorMessage="*이름을 입력해주세요." style="font-size: large; font-weight: 700" EnableClientScript="False"></asp:RequiredFieldValidator>
                <span class="auto-style36"></span></td>
            <td class="auto-style55"></span></td>
        </tr>
        <tr>
            <td class="auto-style71"><span class="auto-style13"><strong>*</strong></span> 사용자 ID:&nbsp;&nbsp; </td>
            <td class="auto-style72">
                <asp:TextBox ID="TextBox1" runat="server" Height="23px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            </td>
            <td class="auto-style73">
                <asp:Button ID="Button3" runat="server" Text="중복 확인" Width="100px" CssClass="auto-style35" Height="30px" OnClick="Button3_Click" />
            </td>
            <td class="auto-style74"><span class="auto-style36"></span><strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style36" ErrorMessage="*사용자 ID를 입력해주세요." EnableClientScript="False"></asp:RequiredFieldValidator>
                </strong>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style84"></asp:Label>
            </td>
            <td class="auto-style75"></span></td>
        </tr>
        <tr>
            <td class="auto-style31"><span class="auto-style13"><strong>*</strong></span> 암호 :&nbsp;&nbsp; </td>
            <td class="auto-style41">
                <asp:TextBox ID="TextBox2" runat="server" Font-Underline="False" Height="23px" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style38"></td>
            <td class="auto-style60">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox2" EnableClientScript="False" ErrorMessage="*비밀번호를 입력해주세요." style="font-size: large; font-weight: 700"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style34"></span></td>
        </tr>
        <tr>
            <td class="auto-style30"><span class="auto-style13"><strong>*</strong></span> 암호 확인 :&nbsp;&nbsp; </td>
            <td class="auto-style40">
                <asp:TextBox ID="TextBox3" runat="server" Height="23px" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style37">
                &nbsp;</td>
            <td class="auto-style67"><strong>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" CssClass="auto-style13" ErrorMessage="*비밀번호가 일치하지 않습니다." EnableClientScript="False"></asp:CompareValidator>
                </strong></td>
            <td class="auto-style63"></span></td>
        </tr>
        <tr>
            <td class="auto-style76"><span class="auto-style13"><strong>* </strong></span>사용자 닉네임 :&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style77">
                <asp:TextBox ID="TextBox4" runat="server" Height="23px"></asp:TextBox>
            </td>
            <td class="auto-style78">
                <asp:Button ID="Button4" runat="server" Text="중복 확인" Width="100px" CssClass="auto-style35" OnClick="Button4_Click" />
            </td>
            <td class="auto-style79"><strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" CssClass="auto-style36" ErrorMessage="*사용자 닉네임을 입력해주세요." EnableClientScript="False"></asp:RequiredFieldValidator>
                </strong>
                <asp:Label ID="Label2" runat="server" CssClass="auto-style84"></asp:Label>
            </td>
            <td class="auto-style80">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style56"><span class="auto-style13"><strong>* </strong></span>이메일 :&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style57">
                &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox11" runat="server" Height="23px"></asp:TextBox>
            </td>
            <td class="auto-style39">
                <asp:Button ID="Button5" runat="server" Text="중복 확인" Width="100px" CssClass="auto-style35" OnClick="Button5_Click" />
            </td>
            <td class="auto-style59"><span class="auto-style36"></span><strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox11" CssClass="auto-style36" ErrorMessage="*이메일을 입력해주세요." EnableClientScript="False"></asp:RequiredFieldValidator>
                <asp:Label ID="Label3" runat="server" CssClass="auto-style83"></asp:Label>
                </strong></td>
            <td class="auto-style64"></span><strong>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox11" CssClass="auto-style67" ErrorMessage="*이메일 주소가 잘못되었습니다." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" EnableClientScript="False"></asp:RegularExpressionValidator>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style56"><span class="auto-style13"><strong>* </strong></span><span class="auto-style68">성별</span> :&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style57">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="auto-style36" Height="16px" RepeatDirection="Horizontal" Width="184px">
                    <asp:ListItem Value="F">여성</asp:ListItem>
                    <asp:ListItem Value="M">남성</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="auto-style39">&nbsp;</td>
            <td class="auto-style59"><strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass="auto-style36" ErrorMessage="*성별을 선택해주세요." ControlToValidate="RadioButtonList1" EnableClientScript="False"></asp:RequiredFieldValidator>
                </strong></td>
            <td class="auto-style64">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style42"></td>
            <td class="auto-style39"></td>
            <td class="auto-style21"></td>
            <td class="auto-style64"></td>
        </tr>
        </table>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p class="auto-style81">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" CssClass="auto-style17" Font-Bold="True" Height="40px" Text="가입하기" style="font-size: medium" Width="100px" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style16" Font-Bold="True" Height="40px" OnClick="Button1_Click" Text=" 비우기 " style="font-size: medium" Width="100px" />
        </strong>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

