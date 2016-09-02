<%@ Page Title="" Language="C#" MasterPageFile="~/10_Security/tripMenu.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="_10_Security_guest_register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" Runat="Server">
    <center>
    <div>
    
        <asp:CreateUserWizard ID="tripCreateUserWizard" runat="server" 
            BackColor="#E3EAEB" BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="1px" 
            CancelDestinationPageUrl="~/10_Security/homePage.htm" 
            ContinueDestinationPageUrl="~/10_Security/homePage.aspx" Font-Names="Verdana" 
            Font-Size="0.8em" oncreateduser="CreateUserWizard1_CreatedUser" 
            AnswerLabelText="安全問答:" AnswerRequiredErrorMessage="請輸入安群問答" 
            CompleteSuccessText="您的帳號已經可以使用囉!!" 
            ConfirmPasswordCompareErrorMessage="兩次輸入密碼必須相同" 
            ConfirmPasswordLabelText="確認密碼:" ConfirmPasswordRequiredErrorMessage="請輸入確認密碼" 
            CreateUserButtonText="創建帳號" DuplicateEmailErrorMessage="您輸入的郵件已經有人使用囉!請重新輸入" 
            DuplicateUserNameErrorMessage="請重新輸入使用名稱" EmailLabelText="電子郵件:" 
            EmailRegularExpressionErrorMessage="請輸入另一個電子郵件" 
            EmailRequiredErrorMessage="請輸入電子郵件" InvalidAnswerErrorMessage="請輸入另一安全問答" 
            InvalidEmailErrorMessage="請輸入正確郵件地址" InvalidQuestionErrorMessage="請輸入另一安全問題" 
            PasswordLabelText="輸入密碼:" PasswordRegularExpressionErrorMessage="請輸入另一密碼" 
            PasswordRequiredErrorMessage="請輸入密碼" QuestionLabelText="安全問題:" 
            QuestionRequiredErrorMessage="請輸入安全問題" UnknownErrorMessage="創立帳號失敗! 請再試一次" 
            UserNameLabelText="使用名稱:" UserNameRequiredErrorMessage="請輸入使用名稱">
            <ContinueButtonStyle BackColor="White" BorderColor="#C5BBAF" 
                BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                ForeColor="#1C5E55" />
            <CreateUserButtonStyle BackColor="White" BorderColor="#C5BBAF" 
                BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                ForeColor="#1C5E55" />
            <TitleTextStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <WizardSteps>
                <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server" />
                <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server" />
            </WizardSteps>
            <HeaderStyle BackColor="#666666" BorderStyle="Solid" Font-Bold="True" 
                Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" 
                BorderColor="#E6E2D8" BorderWidth="2px" />
            <NavigationButtonStyle BackColor="White" BorderColor="#C5BBAF" 
                BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                ForeColor="#1C5E55" />
            <SideBarButtonStyle ForeColor="White" />
            <SideBarStyle BackColor="#1C5E55" Font-Size="0.9em" 
                VerticalAlign="Top" />
            <StepStyle BorderWidth="0px" />
        </asp:CreateUserWizard>
    
    </div>
    </center>
</asp:Content>

