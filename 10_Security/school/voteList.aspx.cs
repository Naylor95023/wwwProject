using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _10_Security_store_tripList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        smptServerHiddenField.Value = "Yahoo";
        schoolIdHiddenField.Value = Session["schoolId"].ToString();
        userLabel.Text = Session["userName"].ToString();
        nameLabel.Text = Session["name"].ToString();
        timeLabel.Text = Session["time"].ToString();
    }
    protected void okButton_Click(object sender, EventArgs e)
    {
        string senderName = "ThreeSchoolWebsite Invite You~~";
        string senderAddress = "";
        switch (smptServerHiddenField.Value)
        {
            case "Google":
                senderAddress = "a8861673@gmail.com";
                break;
            case "Yahoo":
                senderAddress = "love95023@yahoo.com";
                break;
        }
        string receiverName = userLabel.Text;
        string receiverAddress = Session["email"].ToString();

        string subject = userLabel.Text + "您好，於 " + timeLabel.Text+"投的"+nameLabel.Text;
        string message = receiverName + ":<br><br>" + "感謝您的投票，誠摯邀請您來參觀!<br>地圖資訊請參考:<br>";
        string tripMap="";
         switch (schoolIdHiddenField.Value)
         {
             case "1":
                 tripMap = string.Format("北科地理位置<img src='http://maps.googleapis.com/maps/api/staticmap?center={0},{1}" + "&zoom=15" + "&size=400x300" + "&maptype=roadmap" + "&markers=color:red%7Ccolor:red%7Clabel:C%7C{0},{1}&sensor=false'/><br>{2}", "25.04408", "121.5331", senderName);
                 break;
             case "2":
                 tripMap = string.Format("北醫地理位置<img src='http://maps.googleapis.com/maps/api/staticmap?center={0},{1}" + "&zoom=15" + "&size=400x300" + "&maptype=roadmap" + "&markers=color:red%7Ccolor:red%7Clabel:C%7C{0},{1}&sensor=false'/><br>{2}", "25.02819", "121.563491", senderName);
                 break;
             case "3":
                 tripMap = string.Format("北大地理位置<img src='http://maps.googleapis.com/maps/api/staticmap?center={0},{1}" + "&zoom=15" + "&size=400x300" + "&maptype=roadmap" + "&markers=color:red%7Ccolor:red%7Clabel:C%7C{0},{1}&sensor=false'/><br>{2}", "25.057931", "121.5428", senderName);
                 break;
         }
        TravelWSReference.MailData mailData = new TravelWSReference.MailData();
        mailData.senderAddress = senderAddress;
        mailData.receiverAddress = receiverAddress;
        mailData.subject = subject;
        mailData.message = message + tripMap;

        TravelWSReference.TravelWS travelWS = new TravelWSReference.TravelWS();
        switch (smptServerHiddenField.Value)
        {
            case "Google":
                travelWS.sendMailByGoogle(mailData);
                break;
            case "Yahoo":
                travelWS.sendMailByYahoo(mailData);
                break;
        }
        Response.Redirect("hotSchool.aspx");
    }
}