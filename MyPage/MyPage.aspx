<%@ Page Title="" Language="C#" MasterPageFile="~/Home/home.Master" AutoEventWireup="true" CodeFile="MyPage.aspx.cs" Inherits="MyPage_MyPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style20 {
            width: 749px;
            font-size: x-large;
            height: 708px;
        position: relative;
        top: 0px;
        left: -46px;
    }
        .auto-style22 {
            height: 354px;
            width: 373px;
            text-align: center;
        }
        .auto-style23 {
            height: 354px;
            width: 374px;
            text-align: center;
        }
    .auto-style24 {
        height: 354px;
        text-align: center;
    }
        .auto-style25 {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <input id="hddValue" runat="server" type=hidden />
    <script language="javascript">
        function fConfirm() {
            if (confirm('정말로 계정을 삭제하시겠습니까?')) {
                var hddValue = document.getElementById("<%=hddValue.ClientID %>");
                hddValue.value = "true"
            }
            else {
                var hddValue = document.getElementById("<%=hddValue.ClientID %>");
                hddValue.value = "false"
            }
        }
    </script>
    <p>
        <table align="center" class="auto-style20">
            <tr>
                <td class="auto-style22">
                    <asp:ImageButton ID="ImageButton7" runat="server" Height="120px" ImageUrl="~/Image/consulting-message.png" OnClick="ImageButton7_Click" Width="120px" PostBackUrl="~/MyPage/MyReview.aspx" />
                    <br />
                    <br />
                    REVIEW</td>
                <td class="auto-style23">
                    <asp:ImageButton ID="ImageButton8" runat="server" Height="119px" ImageUrl="~/Image/bookmark.png" OnClick="ImageButton8_Click" Width="121px" />
                    <br />
                    <br />
                    BOOKMARK</td>
            </tr>
            <tr>
                <td class="auto-style24">
                    <asp:ImageButton ID="ImageButton10" runat="server" Height="120px" ImageUrl="~/Image/settings.png" OnClick="ImageButton10_Click" Width="120px" />
                    <br />
                    <br />
                    INFORMATION</td>
                <td class="auto-style24">
                    <asp:ImageButton ID="ImageButton11" runat="server" Height="126px" ImageUrl="~/Image/attention.png" OnClick="ImageButton11_Click" />
                    <br />
                    <br />
                    <span class="auto-style25">DELETE ACCOUNT</span></td>
            </tr>
        </table>
        <br />
    </p>
</asp:Content>

