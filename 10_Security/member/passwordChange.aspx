<%@ Page Title="" Language="C#" MasterPageFile="~/10_Security/tripMenu.master" AutoEventWireup="true" CodeFile="passwordChange.aspx.cs" Inherits="_10_Security_member_passwordChange" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" Runat="Server">
    <center>
    <div>
    
        <asp:ChangePassword ID="ChangePassword1" runat="server" 
            ContinueDestinationPageUrl="~/10_Security/homePage.aspx" 
            BackColor="#E3EAEB" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" 
            BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
            CancelButtonText="取消好了" ChangePasswordButtonText="確定修改" 
            ChangePasswordTitleText="修改密碼" ConfirmNewPasswordLabelText="確認新密碼" 
            ConfirmPasswordCompareErrorMessage="兩次入密碼必須相同" 
            ConfirmPasswordRequiredErrorMessage="請輸入確認密碼" Height="200px" 
            NewPasswordLabelText="新密碼" NewPasswordRegularExpressionErrorMessage="請輸入另一密碼" 
            NewPasswordRequiredErrorMessage="請輸入新密碼" PasswordLabelText="密碼" 
            PasswordRequiredErrorMessage="請輸入密碼" SuccessText="您的密碼已經修改成功囉!" 
            SuccessTitleText="密碼修改完成" UserNameLabelText="使用名稱" 
            UserNameRequiredErrorMessage="請輸入使用名稱" Width="307px" 
            style="font-family: 微軟正黑體">
            <CancelButtonStyle BackColor="White" BorderColor="#C5BBAF" 
                BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
                ForeColor="#1C5E55" />
            <ChangePasswordButtonStyle BackColor="White" BorderColor="#C5BBAF" 
                BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
                ForeColor="#1C5E55" />
            <ContinueButtonStyle BackColor="White" BorderColor="#C5BBAF" 
                BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
                ForeColor="#1C5E55" />
            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
            <PasswordHintStyle Font-Italic="True" ForeColor="#1C5E55" />
            <TextBoxStyle Font-Size="0.8em" />
            <TitleTextStyle BackColor="#1C5E55" Font-Bold="True" Font-Size="0.9em" 
                ForeColor="White" />
        </asp:ChangePassword>
    
    </div>
    </center>
</asp:Content>

