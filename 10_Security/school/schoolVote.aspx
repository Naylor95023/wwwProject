<%@ Page Title="" Language="C#" MasterPageFile="~/10_Security/tripMenu.master" AutoEventWireup="true" CodeFile="schoolVote.aspx.cs" Inherits="_10_Security_store_order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
            height: 59px;
        }
        .style4
        {
            height: 22px;
        }
        .style5
        {
            width: 44%;
            height: 22px;
        }
        .style6
        {
            font-size: xx-large;
            font-family: 標楷體;
        }
        .style7
        {
            font-family: 微軟正黑體;
        }
        .style8
        {
            width: 44%;
            height: 22px;
            font-family: 微軟正黑體;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" Runat="Server">
    <center>
    <div class="style3">
    
        <strong><span class="style6">人氣校園比一比</span></strong><br />
    
        <table >
            <tr>
                <td>
        <table style="height: 61px; width: 202px">
            <tr>
                <td class="style5">
                    用戶名稱: </td>
                <td class="style4">
                    <asp:Label ID="userLabel" runat="server"></asp:Label>
                </td>
            </tr>
                </table>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButtonList ID="schoolRadioButtonList" runat="server" 
                        AutoPostBack="True" DataSourceID="voteSqlDataSource" DataTextField="name" 
                        DataValueField="schoolId" 
                        onselectedindexchanged="schoolRadioButtonList_SelectedIndexChanged1" 
                        RepeatDirection="Horizontal">
                    </asp:RadioButtonList>
                    <asp:SqlDataSource ID="voteSqlDataSource" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:SQL47ConnectionString %>" 
                        SelectCommand="SELECT [schoolId], [name], [pictureId], [youtubeId] FROM [schoolvote]">
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
        <table class="style1">
            <tr>
                <td>
                    <asp:SqlDataSource ID="pollSqlDataSource" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:SQL47ConnectionString %>" 
                        DeleteCommand="DELETE FROM [SchoolVote2] WHERE [pollId] = @pollId" 
                        InsertCommand="INSERT INTO [SchoolVote2] ([schoolId], [userName], [time]) VALUES (@schoolId, @userName, @time)" 
                        SelectCommand="SELECT [pollId], [schoolId], [userName], [time] FROM [SchoolVote2]" 
                        
                        UpdateCommand="UPDATE [SchoolVote2] SET [schoolId] = @schoolId, [userName] = @userName, [time] = @time WHERE [pollId] = @pollId">
                        <DeleteParameters>
                            <asp:Parameter Name="pollId" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="schoolRadioButtonList" Name="schoolId" 
                                PropertyName="SelectedValue" Type="Int32" />
                            <asp:ControlParameter ControlID="userLabel" Name="userName" PropertyName="Text" 
                                Type="String" />
                            <asp:ControlParameter ControlID="timeLabel" Name="time" PropertyName="Text" 
                                Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="schoolId" Type="Int32" />
                            <asp:Parameter Name="userName" Type="String" />
                            <asp:Parameter Name="time" Type="String" />
                            <asp:Parameter Name="pollId" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
        <asp:FormView ID="schoolFormView" runat="server" DataKeyNames="schoolId" 
            DataSourceID="voteSqlDataSource" 
                        onpageindexchanging="schoolFormView_PageIndexChanging" 
                        style="font-family: 微軟正黑體">
            <EditItemTemplate>
                schoolId:
                <asp:Label ID="schoolIdLabel1" runat="server" Text='<%# Eval("schoolId") %>' />
                <br />
                name:
                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                <br />
                pictureId:
                <asp:TextBox ID="pictureIdTextBox" runat="server" 
                    Text='<%# Bind("pictureId") %>' />
                <br />
                youtubeId:
                <asp:TextBox ID="youtubeIdTextBox" runat="server" 
                    Text='<%# Bind("youtubeId") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                name:
                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                <br />
                pictureId:
                <asp:TextBox ID="pictureIdTextBox" runat="server" 
                    Text='<%# Bind("pictureId") %>' />
                <br />
                youtubeId:
                <asp:TextBox ID="youtubeIdTextBox" runat="server" 
                    Text='<%# Bind("youtubeId") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                美景名稱:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' />
                <br />
                <br />
                <asp:Image ID="Image1" runat="server" Height="228px" 
                    ImageUrl='<%# Eval("pictureId","http://farm9.staticflickr.com/{0}") %>' 
                    Width="214px" />
                <br />
                <asp:HiddenField ID="youtubeIdHiddenField" runat="server" 
                    onvaluechanged="youtubeIdHiddenField_ValueChanged" 
                    Value='<%# Eval("youtubeId") %>' />
                <br />
                <br />
                <br />
                <br />
            </ItemTemplate>
        </asp:FormView>
                </td>
                <td>
        <div ID="youtubeCanvas" style="height: 264px; width: 296px;" __designer:mapid="92a">
        </div>
                    <br />
                </td>
            </tr>
        </table>




                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        Text="我喜歡這間學校!" 
            style="font-family: 微軟正黑體; font-size: x-large;" Height="57px" Width="183px" />
                    目前時間:<asp:Label ID="timeLabel" runat="server"></asp:Label>
                <br />
        <br />




        <table>
            <tr>
                <td class="style7">
                    從此出發：</td>
                <td>
                    <asp:TextBox ID="addressTextBox" runat="server" 
                        ontextchanged="addressTextBox_TextChanged" CssClass="style7"></asp:TextBox>
                    <asp:Button ID="locationButton" runat="server" 
                        onclientclick="codeAddress(); return false ;" Text="給我座標" Height="23px" 
                        Width="68px" CssClass="style7" />
                </td>
            </tr>
            <tr>
                <td class="style8">
                    經度：</td>
                <td class="style5">
                    <asp:Label ID="lngLabel" runat="server" CssClass="style7"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    緯度：</td>
                <td>
                    <asp:Label ID="latLabel" runat="server" CssClass="style7"></asp:Label>
                </td>
            </tr>
        </table>
        <div id="mapCanvas" style="width: 400px; height: 300px">
        </div>
    
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
    </center>
    <script src="../../Javascript/youtubevoteJScript.js" type="text/javascript"></script>
    <script src="https://www.youtube.com/iframe_api" type="text/javascript"></script>
<br />
<br />
<br />
<script type = "text/javascript" src="http://maps.google.com/maps/api/js?v=3.11&amp;sensor=false"></script>
<script src="../../Javascript/locationMapJQuery.js" type="text/javascript"></script>
</asp:Content>

