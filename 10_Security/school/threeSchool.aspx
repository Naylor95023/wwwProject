<%@ Page Title="" Language="C#" MasterPageFile="~/10_Security/tripMenu.master" AutoEventWireup="true" CodeFile="threeSchool.aspx.cs" Inherits="_10_Security_store_trip" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 71px;
            font-family: 微軟正黑體;
        }
        .style4
        {
            width: 100%;
            font-size: 36pt;
            font-family: 標楷體;
        }
        .style5
        {
            font-family: 微軟正黑體;
        }
        .style6
        {
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" Runat="Server">
    <center>
    <div class="body">
    
        <div class="style6">
    
        <strong><span class="style4">
        三校局勢</span></strong><br />
    
        </div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <table>
            <tr>
                <td class="style3">
                    用戶名稱:
                </td>
                <td>
                    <asp:Label ID="userLabel" runat="server" 
                        style="font-family: 微軟正黑體; text-align: center"></asp:Label>
                </td>
            </tr>
            </table>
    
    <asp:SqlDataSource ID="schoolSqlDataSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SQL47ConnectionString %>" 
        
        SelectCommand="SELECT [schoolId], [name], [badgeId], [motto], [present], [flickrId], [latitude], [longitude] FROM [school]">
    </asp:SqlDataSource>
        <br />
    <asp:RadioButtonList ID="schoolRadioButtonList" runat="server" 
        AutoPostBack="True" DataSourceID="schoolSqlDataSource" DataTextField="name" 
        DataValueField="schoolId" 
        onselectedindexchanged="RadioButtonList_SelectedIndexChanged" 
        RepeatDirection="Horizontal" style="font-family: 微軟正黑體; text-align: center">
    </asp:RadioButtonList>
    <div>
    
        <asp:FormView ID="schoolFormView" runat="server" DataKeyNames="schoolId" 
            DataSourceID="schoolSqlDataSource" Height="303px" Width="255px" 
            style="font-family: 微軟正黑體; text-align: center">
            <EditItemTemplate>
                schoolId:
                <asp:Label ID="schoolIdLabel1" runat="server" Text='<%# Eval("schoolId") %>' />
                <br />
                name:
                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                <br />
                badgeId:
                <asp:TextBox ID="badgeIdTextBox" runat="server" Text='<%# Bind("badgeId") %>' />
                <br />
                motto:
                <asp:TextBox ID="mottoTextBox" runat="server" Text='<%# Bind("motto") %>' />
                <br />
                present:
                <asp:TextBox ID="presentTextBox" runat="server" Text='<%# Bind("present") %>' />
                <br />
                flickrId:
                <asp:TextBox ID="flickrIdTextBox" runat="server" 
                    Text='<%# Bind("flickrId") %>' />
                <br />
                latitude:
                <asp:TextBox ID="latitudeTextBox" runat="server" 
                    Text='<%# Bind("latitude") %>' />
                <br />
                longitude:
                <asp:TextBox ID="longitudeTextBox" runat="server" 
                    Text='<%# Bind("longitude") %>' />
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
                badgeId:
                <asp:TextBox ID="badgeIdTextBox" runat="server" 
                    Text='<%# Bind("badgeId") %>' />
                <br />
                motto:
                <asp:TextBox ID="mottoTextBox" runat="server" 
                    Text='<%# Bind("motto") %>' />
                <br />
                present:
                <asp:TextBox ID="presentTextBox" runat="server" Text='<%# Bind("present") %>' />
                <br />
                flickrId:
                <asp:TextBox ID="flickrIdTextBox" runat="server" 
                    Text='<%# Bind("flickrId") %>' />
                <br />
                latitude:
                <asp:TextBox ID="latitudeTextBox" runat="server" 
                    Text='<%# Bind("latitude") %>' />
                <br />
                longitude:
                <asp:TextBox ID="longitudeTextBox" runat="server" 
                    Text='<%# Bind("longitude") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <br />
                校徽:
                <asp:Image ID="Image1" runat="server" Height="141px" 
                    ImageUrl='<%# Eval("badgeId","http://farm9.staticflickr.com/{0}") %>' 
                    Width="147px" />
                <br />
                <br />
                校訓:
                <asp:Label ID="mottoLabel" runat="server" Text='<%# Bind("motto") %>' />
                <br />
                <br />
                說明:
                <asp:Label ID="presentLabel" runat="server" Text='<%# Bind("present") %>' />
                <br />
                <br />
                剪影:
                <asp:Image ID="Image2" runat="server" Height="240px" 
                    ImageUrl='<%# Eval("flickrId","http://farm9.staticflickr.com/{0}") %>' 
                    Width="229px" />
                <asp:HiddenField ID="latHiddenField" runat="server" 
                    Value='<%# Eval("latitude") %>' />
                <asp:HiddenField ID="lngHiddenField" runat="server" 
                    Value='<%# Eval("longitude") %>' />
                <br />

            </ItemTemplate>
        </asp:FormView>




        <br />




        <span class="style5">Google地圖:</span><table class="style1">
            <tr>
                <td>
        
        
            
               
                   <div id="mapCanvas" style="width: 400px; height: 300px; text-align: center;">
                    </div>
              
                
                     </td>
                <td>
              
                
                     <div id="streetViewCanvas" style="width: 400px; height: 300px">
                                
                    </div>
               
           
        




                </td>
            </tr>
        </table>
        <br />
        
        
            
               



        <br />
    
    
    </div>
    <p>
        &nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Height="50px" onclick="Button1_Click" 
                    style="font-size: large; font-family: 微軟正黑體; text-align: center;" Text="前往選美比賽~" 
            Width="142px" />
    </p>




    <br/>
    </div>
    </center>
 <script type = "text/javascript" src="http://code.jquery.com/jquery-1.9.1.js"></script>
 <script type = "text/javascript" src="http://maps.google.com/maps/api/js?v=3.11&amp;sensor=false"></script>
  <script src="../../Javascript/orderMasterPageJQuery.js" type="text/javascript"></script>
</asp:Content>

