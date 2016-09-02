<%@ Page Title="" Language="C#" MasterPageFile="~/10_Security/tripMenu.master" AutoEventWireup="true" CodeFile="homePage.aspx.cs" Inherits="_10_Security_homPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        width: 100%;
        font-size: xx-large;
        text-align: center;
        font-family: 標楷體;
    }
    .style3
    {
        color: #FF0000;
        }
    .style4
    {
        color: #000099;
    }
    .style5
    {
        font-size: larger;
    }
    .style6
    {
        font-size: larger;
        text-decoration: underline;
    }
        .style7
        {
            font-size: large;
            font-family: 微軟正黑體;
            color: #000000;
        }
        .style8
        {
            width: 74%;
            font-size: xx-large;
            font-family: 標楷體;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" Runat="Server">
    <p class="style8">
        <span class="style4"><span class="style5"><strong>三校</strong></span></span><span 
            class="style5"><span class="style3"><strong>鼎</strong></span></span><strong><span 
            class="style4"><span class="style5">立 </span><span class="style6">
        <br />
        </span></span> </strong><span class="style7">西元2009年北科、北大、北醫密謀組成<br />
        &quot;臺北聯合大學系統&quot;，三校各以科技、人文、醫學<br />
        制霸一方，並互相有學術、社團、體育上的切磋。<br />
        直到2011年教育部核正式核准統過<br />
        從此，我們進入了三校鼎立的時代.....</span></p>
    <p class="style1" style="width: 86%">
        <img alt="" 
            src="../star.jpg" 
            style="height: 272px; width: 574px; margin-left: 0px" /></p>
            <div id="fb-root"></div>
<script>    (function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/zh_TW/all.js#xfbml=1";
        fjs.parentNode.insertBefore(js, fjs);
    } (document, 'script', 'facebook-jssdk'));</script>

    <div class="fb-like" data-href="http://iweb.csie.ntut.edu.tw/www47/10_Security/homePage.aspx" data-send="true" data-width="450" data-show-faces="true"></div>
</asp:Content>

