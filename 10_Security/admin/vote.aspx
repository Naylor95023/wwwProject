<%@ Page Language="C#" AutoEventWireup="true" CodeFile="vote.aspx.cs" Inherits="_00_school_admin_1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
        }
        .style2
        {
            font-size: large;
        }
        .style3
        {
            font-size: xx-large;
            font-family: 標楷體;
        }
        .style4
        {
            font-size: xx-large;
            font-family: 標楷體;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <center>
    <div class="body">
    
        <div class="style4">
    
            <span class="style3">校園美景管理</span><span class="title"><br />
        </span>
        <br />
        <br />
        </div>
        <table class="style1">
            <tr>
                <td colspan="2">
        <asp:GridView ID="placeGridView" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
            DataKeyNames="schoolId" DataSourceID="schoolSqlDataSource" 
            GridLines="Horizontal" BackColor="White" BorderColor="#336666" BorderStyle="Double" 
                        BorderWidth="3px" CssClass="style2">
            <Columns>
                <asp:BoundField DataField="schoolId" HeaderText="序號" InsertVisible="False" 
                    ReadOnly="True" SortExpression="schoolId" />
                <asp:BoundField DataField="name" HeaderText="美景" SortExpression="name" />
                <asp:BoundField DataField="pictureId" HeaderText="圖片" 
                    SortExpression="pictureId" />
                <asp:BoundField DataField="youtubeId" HeaderText="影片" 
                    SortExpression="youtubeId" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ButtonType="Button" CancelText="取消" DeleteText="刪除" EditText="編輯" 
                    InsertText="新增" UpdateText="修改" />
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
                </td>
            </tr>
            <tr>
                <td>
        <asp:DetailsView ID="placeDetailsView" runat="server" AutoGenerateRows="False" 
            CellPadding="4" DataKeyNames="schoolId" DataSourceID="schoolSqlDataSource" 
            DefaultMode="Insert" GridLines="Horizontal" Height="50px" 
            Width="427px" BackColor="White" BorderColor="#336666" BorderStyle="Double" 
                        BorderWidth="3px" CssClass="style2">
            <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="schoolId" HeaderText="序號" InsertVisible="False" 
                    ReadOnly="True" SortExpression="schoolId" />
                <asp:BoundField DataField="name" HeaderText="美景" SortExpression="name" />
                <asp:BoundField DataField="pictureId" HeaderText="圖片" 
                    SortExpression="pictureId" />
                <asp:BoundField DataField="youtubeId" HeaderText="影片" 
                    SortExpression="youtubeId" />
                <asp:CommandField ShowInsertButton="True" ButtonType="Button" CancelText="取消" 
                    InsertText="新增" />
            </Fields>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
        </asp:DetailsView>
                </td>
                <td>
                    <table class="style1">
                        <tr>
                            <td colspan="2">
                               
                                <asp:HyperLink ID="backHyperLink" runat="server" BackColor="Yellow" 
                                    BorderColor="Yellow" BorderStyle="Dashed" ForeColor="Red" 
                                    NavigateUrl="~/10_Security/homePage.aspx" CssClass="style2">按我回首頁</asp:HyperLink>
                               
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <asp:SqlDataSource ID="schoolSqlDataSource" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SQL47ConnectionString %>" 
            DeleteCommand="DELETE FROM [schoolvote] WHERE [schoolId] = @schoolId" 
            InsertCommand="INSERT INTO [schoolvote] ([name], [pictureId], [youtubeId]) VALUES (@name, @pictureId, @youtubeId)" 
            SelectCommand="SELECT [schoolId], [name], [pictureId], [youtubeId] FROM [schoolvote]" 
            
            
            
            
            
            UpdateCommand="UPDATE [schoolvote] SET [name] = @name, [pictureId] = @pictureId, [youtubeId] = @youtubeId WHERE [schoolId] = @schoolId">
            <DeleteParameters>
                <asp:Parameter Name="schoolId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="pictureId" Type="String" />
                <asp:Parameter Name="youtubeId" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="pictureId" Type="String" />
                <asp:Parameter Name="youtubeId" Type="String" />
                <asp:Parameter Name="schoolId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </center>
    </form>
</body>
</html>
