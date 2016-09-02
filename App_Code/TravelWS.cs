using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Net.Mail;
using System.Text;
using System.Net.Mime;

/// <summary>
/// Summary description for TravelWS
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
 [System.Web.Script.Services.ScriptService]
public class TravelWS : System.Web.Services.WebService {

    public TravelWS () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public PlaceData getPlaceData(int placeId){
        placeDataSetTableAdapters.placeTableAdapter placeTableAdapter = new placeDataSetTableAdapters.placeTableAdapter();

        placeDataSet.placeDataTable dataTable = placeTableAdapter.getPlaceDataTable(placeId);
        placeDataSet.placeRow dataRow = (placeDataSet.placeRow)dataTable.Rows[0];

        PlaceData placeData = new PlaceData();

        placeData.price = Convert.ToInt16(dataRow.price);
        placeData.flickrId = dataRow.flickrId;
        placeData.youtubeId = dataRow.youtubeId;
        placeData.latitude = Convert.ToSingle(dataRow.latitude);
        placeData.longitude = Convert.ToSingle(dataRow.longitude);

        return placeData;
    }
    [WebMethod]
    public void sendMailByGoogle(MailData mailData)
    {
        string smtpServer = "smtp.gmail.com";
        int smtpPort = 587;
        string username = "a8861673@gmail.com";
        string password = "a8861673";

        MailMessage mailMessage = new MailMessage();

        mailMessage.From = new MailAddress(mailData.senderAddress);
        mailMessage.To.Add(new MailAddress(mailData.receiverAddress));

        mailMessage.Subject = mailData.subject;
        mailMessage.SubjectEncoding = Encoding.UTF8;

        ContentType mimeType = new ContentType("text/html");
        AlternateView alternate = AlternateView.CreateAlternateViewFromString(mailData.message, mimeType);
        mailMessage.AlternateViews.Add(alternate);

        SmtpClient smtpClient = new SmtpClient(smtpServer, smtpPort);

        smtpClient.Credentials = new System.Net.NetworkCredential(username, password);
        smtpClient.EnableSsl = true;

        smtpClient.Send(mailMessage);
    }

    [WebMethod]
    public void sendMailByYahoo(MailData mailData)
    {
        string smtpServer = "smtp.mail.yahoo.com";
        int smtpPort = 25;
        string username = "love95023@yahoo.com";
        string password = "a8861673";

        MailMessage mailMessage = new MailMessage();

        mailMessage.From = new MailAddress(mailData.senderAddress);
        mailMessage.To.Add(new MailAddress(mailData.receiverAddress));

        mailMessage.Subject = mailData.subject;
        mailMessage.SubjectEncoding = Encoding.UTF8;

        mailMessage.Headers.Add("MIME-Version", "1.0");
        mailMessage.Headers.Add("X-Mailer", "Microsoft.NET Framework 4.5 System.Net");
        mailMessage.Headers.Add("X-MimeOLE", "Microsoft.NET Framework 4.5 System.Net.Mime");

        ContentType mimeType = new ContentType("text/html");
        AlternateView alternate = AlternateView.CreateAlternateViewFromString(mailData.message, mimeType);
        mailMessage.AlternateViews.Add(alternate);

        SmtpClient smtpClient = new SmtpClient(smtpServer, smtpPort);

        smtpClient.Credentials = new System.Net.NetworkCredential(username, password);
        smtpClient.EnableSsl = false;

        smtpClient.Send(mailMessage);
    }
    
}

public class PlaceData
{
    public int price;
    public String flickrId;
    public String youtubeId;
    public Single latitude;
    public Single longitude;
}
public class MailData
{
    public string receiverName;
    public string receiverAddress;
    public string senderName;
    public string senderAddress;
    public string subject;
    public string message;
}