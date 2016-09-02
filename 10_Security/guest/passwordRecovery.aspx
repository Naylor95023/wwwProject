<%@ Page Title="" Language="C#" MasterPageFile="~/10_Security/tripMenu.master" AutoEventWireup="true" CodeFile="passwordRecovery.aspx.cs" Inherits="_10_Security_guest_passwordChange" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" Runat="Server">
    <center>
    
    <div>
    
        <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" BackColor="#E3EAEB" 
            BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" 
            Font-Names="Verdana" Font-Size="0.8em" 
            SuccessPageUrl="~/10_Security/homePage.aspx" Height="115px" 
            SubmitButtonText="送出" SuccessText="密碼已經送出囉^_^" 
            UserNameFailureText="我們無法辨識您的帳號，請再試一次" UserNameInstructionText="輸入您的使用名稱以取得密碼" 
            UserNameLabelText="使用名稱" UserNameTitleText="糟糕!忘記密碼了!?" Width="243px" 
            QuestionFailureText="請再試一次" QuestionInstructionText="回答以下問題以取得密碼" 
            QuestionLabelText="問題:" QuestionTitleText="安全問題">
            <SubmitButtonStyle BackColor="White" BorderColor="#C5BBAF" 
                BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
                ForeColor="#1C5E55" />
            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
            <QuestionTemplate>
                <table cellpadding="4" cellspacing="0" style="border-collapse: collapse;">
                    <tr>
                        <td>
                            <table cellpadding="0" style="height: 115px; width: 243px;">
                                <tr>
                                    <td align="center" colspan="2" 
                                        style="color: White; background-color: #1C5E55; font-size: 0.9em; font-weight: bold;">
                                        Identity Confirmation</td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="color: Black; font-style: italic;">
                                        Answer the following question to receive your password.</td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        使用名稱</td>
                                    <td>
                                        <asp:Literal ID="UserName" runat="server"></asp:Literal>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        Question:</td>
                                    <td>
                                        <asp:Literal ID="Question" runat="server"></asp:Literal>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">Answer:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="Answer" runat="server" Font-Size="0.8em"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" 
                                            ControlToValidate="Answer" ErrorMessage="Answer is required." 
                                            ToolTip="Answer is required." ValidationGroup="PasswordRecovery1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="color: Red;">
                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="2">
                                        <asp:Button ID="SubmitButton" runat="server" BackColor="White" 
                                            BorderColor="#C5BBAF" BorderStyle="Solid" BorderWidth="1px" 
                                            CommandName="Submit" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#1C5E55" 
                                            Text="送出" ValidationGroup="PasswordRecovery1" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </QuestionTemplate>
            <SuccessTextStyle Font-Bold="True" ForeColor="#1C5E55" />
            <TextBoxStyle Font-Size="0.8em" />
            <TitleTextStyle BackColor="#1C5E55" Font-Bold="True" Font-Size="0.9em" 
                ForeColor="White" />
        </asp:PasswordRecovery>
    
    </div>
    </center>
</asp:Content>

