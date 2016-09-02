<%@ Page Title="" Language="C#" MasterPageFile="~/10_Security/tripMenu.master" AutoEventWireup="true" CodeFile="hotSchool.aspx.cs" Inherits="_10_Security_admin_hotTours" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            font-size: xx-large;
            font-family: 標楷體;
        }
        .style4
        {
            text-align: center;
        }
        .title
        {
            font-family: 微軟正黑體;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" Runat="Server">
    <center>
    <div class="body">
    
        <div class="style4">
    
        <span class="title"><span class="style3"><strong>人氣票選結果</strong></span></div>
        <asp:SqlDataSource ID="hotschoolSqlDataSource" 
            runat="server" 
            ConnectionString="<%$ ConnectionStrings:SQL47ConnectionString %>" 
            
            
            SelectCommand="SELECT schoolvote.schoolId, schoolvote.name, COUNT(*) AS count, COUNT_BIG(*) AS max, schoolvote.pictureId, schoolvote.youtubeId FROM schoolvote INNER JOIN SchoolVote2 ON schoolvote.schoolId = SchoolVote2.schoolId GROUP BY schoolvote.schoolId, schoolvote.name, schoolvote.pictureId, schoolvote.youtubeId ORDER BY count DESC"></asp:SqlDataSource>
        <br />
        <table>
            <tr>
                <td class="body">
                    <asp:GridView ID="hotToursGridView" runat="server" AllowPaging="True" 
                        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                        CssClass="title" DataSourceID="hotschoolSqlDataSource" 
                        GridLines="Horizontal" BackColor="White" BorderColor="#336666" 
                        BorderStyle="Double" BorderWidth="3px" DataKeyNames="schoolId">
                        <Columns>
                            <asp:BoundField DataField="schoolId" HeaderText="排行" SortExpression="schoolId" 
                                InsertVisible="False" ReadOnly="True" />
                            <asp:BoundField DataField="name" HeaderText="美景名稱" 
                                SortExpression="name" />
                            <asp:BoundField DataField="count" HeaderText="得票數" 
                                ReadOnly="True" SortExpression="count" />
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
                    <asp:DataList ID="hotToursDataList" runat="server" CssClass="title" 
                        DataSourceID="hotschoolSqlDataSource" RepeatDirection="Horizontal" 
                        DataKeyField="schoolId">
                        <ItemTemplate>
                            &nbsp;<asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                            <br />
                            <asp:Image ID="Image1" runat="server" Height="200px" 
                                ImageUrl='<%# Eval("pictureId","http://farm9.staticflickr.com/{0}") %>' 
                                Width="198px" />
                            <br />
                            得票數:
                            <asp:Label ID="countLabel" runat="server" Text='<%# Eval("count") %>' />
                            <br />
                            <br />
                            <br />
                        </ItemTemplate>
                    </asp:DataList>
                    <table class="style1">
                        <tr>
                            <td>
                                <asp:Chart ID="colChart" runat="server" DataSourceID="hotschoolSqlDataSource" 
                                    IsMapEnabled="False">
                                    <Series>
                                        <asp:Series Name="Series1" XValueMember="name" YValueMembers="count">
                                        </asp:Series>
                                    </Series>
                                    <ChartAreas>
                                        <asp:ChartArea Name="ChartArea1">
                                            <AxisY Title="得票">
                                            </AxisY>
                                            <AxisX Title="美景">
                                            </AxisX>
                                        </asp:ChartArea>
                                    </ChartAreas>
                                </asp:Chart>
                                <asp:Chart ID="pieChart" runat="server" DataSourceID="hotschoolSqlDataSource">
                                    <Series>
                                        <asp:Series ChartType="Pie" IsValueShownAsLabel="True" Legend="Legend1" 
                                            Name="Series1" XValueMember="name" YValueMembers="count">
                                        </asp:Series>
                                    </Series>
                                    <ChartAreas>
                                        <asp:ChartArea Name="ChartArea1">
                                        </asp:ChartArea>
                                    </ChartAreas>
                                    <Legends>
                                        <asp:Legend Name="Legend1" Title="美景">
                                        </asp:Legend>
                                    </Legends>
                                </asp:Chart>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Chart ID="radarChart" runat="server" DataSourceID="hotschoolSqlDataSource">
                                    <Series>
                                        <asp:Series ChartType="Radar" Name="Series1" XValueMember="name" 
                                            YValueMembers="count">
                                        </asp:Series>
                                    </Series>
                                    <ChartAreas>
                                        <asp:ChartArea Name="ChartArea1">
                                        </asp:ChartArea>
                                    </ChartAreas>
                                </asp:Chart>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
        </span>
    
    </div>
    </center>
</asp:Content>

