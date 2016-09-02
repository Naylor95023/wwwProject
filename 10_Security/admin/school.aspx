<%@ Page Language="C#" AutoEventWireup="true" CodeFile="school.aspx.cs" Inherits="_00_school_admin_1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 536px;
            font-size: xx-large;
            font-family: 標楷體;
        }
        .style3
        {
            width: 517px;
            text-align: center;
        }
        .style4
        {
            width: 443px;
        }
        .style5
        {
            font-size: xx-large;
            font-family: 標楷體;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <center>
    <div class="body">
    
        <div class="style3">
    
            <span class="style5"><strong>校園資訊</strong></span><span class="title"><span class="style2"><strong>管理</strong></span><br />
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
                        BorderWidth="3px">
            <Columns>
                <asp:BoundField DataField="schoolId" HeaderText="序號" InsertVisible="False" 
                    ReadOnly="True" SortExpression="schoolId" />
                <asp:BoundField DataField="name" HeaderText="校名" SortExpression="name" />
                <asp:BoundField DataField="badgeId" HeaderText="校徽" 
                    SortExpression="badgeId" />
                <asp:BoundField DataField="motto" HeaderText="校訓" 
                    SortExpression="motto" />
                <asp:BoundField DataField="present" HeaderText="簡介" SortExpression="present" />
                <asp:BoundField DataField="flickrId" HeaderText="剪影" 
                    SortExpression="flickrId" />
                <asp:BoundField DataField="latitude" HeaderText="經度" 
                    SortExpression="latitude" />
                <asp:BoundField DataField="longitude" HeaderText="緯度" 
                    SortExpression="longitude" />
                <asp:CommandField ButtonType="Button" CancelText="取消" DeleteText="刪除" 
                    EditText="編輯" InsertText="新增" ShowDeleteButton="True" ShowEditButton="True" 
                    UpdateText="修改" />
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
                    <table class="style1">
                        <tr>
                            <td class="style4">
        <asp:DetailsView ID="placeDetailsView" runat="server" AutoGenerateRows="False" 
            CellPadding="4" DataKeyNames="schoolId" DataSourceID="schoolSqlDataSource" 
            DefaultMode="Insert" GridLines="Horizontal" Height="50px" 
            Width="427px" BackColor="White" BorderColor="#336666" BorderStyle="Double" 
                        BorderWidth="3px">
            <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="schoolId" HeaderText="序號" InsertVisible="False" 
                    ReadOnly="True" SortExpression="schoolId" />
                <asp:BoundField DataField="name" HeaderText="校名" SortExpression="name" />
                <asp:BoundField DataField="badgeId" HeaderText="校徽" 
                    SortExpression="badgeId" />
                <asp:BoundField DataField="motto" HeaderText="校訓" 
                    SortExpression="motto" />
                <asp:BoundField DataField="present" HeaderText="簡介" SortExpression="present" />
                <asp:BoundField DataField="flickrId" HeaderText="剪影" 
                    SortExpression="flickrId" />
                <asp:BoundField DataField="latitude" HeaderText="經度" 
                    SortExpression="latitude" />
                <asp:BoundField DataField="longitude" HeaderText="緯度" 
                    SortExpression="longitude" />
                <asp:CommandField ButtonType="Button" CancelText="取消" InsertText="新增" 
                    ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
        </asp:DetailsView>
                            </td>
                            <td>
                                <asp:HyperLink ID="backHyperLink" runat="server" BackColor="Yellow" 
                                    BorderColor="Yellow" BorderStyle="Dashed" ForeColor="Red" 
                                    NavigateUrl="~/10_Security/homePage.aspx">按我回首頁</asp:HyperLink>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table class="style1">
                        <tr>
                            
                        </tr>
                        <tr>
                            <td colspan="2">
                               
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <asp:SqlDataSource ID="schoolSqlDataSource" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SQL47ConnectionString %>" 
            DeleteCommand="DELETE FROM [school] WHERE [schoolId] = @schoolId" 
            InsertCommand="INSERT INTO [school] ([name], [badgeId], [motto], [present], [flickrId], [latitude], [longitude]) VALUES (@name, @badgeId, @motto, @present, @flickrId, @latitude, @longitude)" 
            SelectCommand="SELECT [schoolId], [name], [badgeId], [motto], [present], [flickrId], [latitude], [longitude] FROM [school]" 
            
            
            
            
            UpdateCommand="UPDATE [school] SET [name] = @name, [badgeId] = @badgeId, [motto] = @motto, [present] = @present, [flickrId] = @flickrId, [latitude] = @latitude, [longitude] = @longitude WHERE [schoolId] = @schoolId">
            <DeleteParameters>
                <asp:Parameter Name="schoolId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="badgeId" Type="String" />
                <asp:Parameter Name="motto" Type="String" />
                <asp:Parameter Name="present" Type="String" />
                <asp:Parameter Name="flickrId" Type="String" />
                <asp:Parameter Name="latitude" Type="Double" />
                <asp:Parameter Name="longitude" Type="Double" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="badgeId" Type="String" />
                <asp:Parameter Name="motto" Type="String" />
                <asp:Parameter Name="present" Type="String" />
                <asp:Parameter Name="flickrId" Type="String" />
                <asp:Parameter Name="latitude" Type="Double" />
                <asp:Parameter Name="longitude" Type="Double" />
                <asp:Parameter Name="schoolId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </center>
    </form>
</body>
</html>
