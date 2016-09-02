<%@ Page Title="" Language="C#" MasterPageFile="~/10_Security/tripMenu.master" AutoEventWireup="true" CodeFile="voteList.aspx.cs" Inherits="_10_Security_store_tripList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            font-size: xx-large;
            font-family: 標楷體;
        }
        .style5
        {
            height: 20px;
        }
        .style6
        {
            font-family: 微軟正黑體;
        }
        .style7
        {
            height: 20px;
            font-family: 微軟正黑體;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" Runat="Server">
<div class="body">
    <center>
        <div >
    
            <span class="style3"><strong>
            <br />
            投票</strong></span><span class="title"><span 
                class="style3"><strong>紀錄</strong></span><br />
        <br />
        </span>
        </div>
        <table>
            <tr>
                <td class="style7">
                    用戶名稱 :
                </td>
                <td class="style5">
                    <asp:Label ID="userLabel" runat="server" CssClass="style6"></asp:Label>
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td class="style7">
                    喜愛地點 :
                </td>
                <td class="style5">
                    <asp:Label ID="nameLabel" runat="server" CssClass="style6"></asp:Label>
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td class="style7">
                    投票時間 :
                </td>
                <td class="style5">
                    <asp:Label ID="timeLabel" runat="server" CssClass="style6"></asp:Label>
                </td>
            </tr>
        </table>
        <asp:HiddenField ID="smptServerHiddenField" runat="server" />
        <asp:HiddenField ID="schoolIdHiddenField" runat="server" />
        <br />
        <asp:SqlDataSource ID="voteListSqlDataSource" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SQL47ConnectionString %>" 
            
            
            
            SelectCommand="SELECT SchoolVote2.pollId, schoolvote.name, SchoolVote2.userName, SchoolVote2.time FROM schoolvote INNER JOIN SchoolVote2 ON schoolvote.schoolId = SchoolVote2.schoolId ORDER BY SchoolVote2.pollId DESC">
        </asp:SqlDataSource>
        <asp:GridView ID="tripListGridView" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
            DataKeyNames="pollId" DataSourceID="voteListSqlDataSource" 
            GridLines="Horizontal" BackColor="White" BorderColor="#336666" 
            BorderStyle="Double" BorderWidth="3px" style="font-family: 微軟正黑體">
            <Columns>
                <asp:BoundField DataField="pollId" HeaderText="序號" InsertVisible="False" 
                    ReadOnly="True" SortExpression="pollId" />
                <asp:BoundField DataField="name" HeaderText="美景名稱" SortExpression="name" />
                <asp:BoundField DataField="userName" HeaderText="投票者" 
                    SortExpression="userName" />
                <asp:BoundField DataField="time" HeaderText="投票時間" SortExpression="time" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    
    </div>
     </center>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="okButton" runat="server" Text="發送邀請函" 
            onclick="okButton_Click" />
        </asp:Content>

