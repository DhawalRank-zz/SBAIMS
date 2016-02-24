using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Net.Mail;

/// <summary>
/// Summary description for Function
/// </summary>
public class Function
{
	public Function()
	{
		//
		// TODO: Add constructor logic here
		//

        
	}
    public static bool SendEmail(string To, string Subject, string Body)
    {
        var fromAddress = new MailAddress("sbaimsmanager@gmail.com", "S.B.A.I.M.S.");
        var toAddress = new MailAddress("10.arjun.parekh@gmail.com");
        string fromPassword = "sbaims2014";
        string subject = Subject;
        string body = Body;

        var smtp = new SmtpClient
        {
            Host = "smtp.gmail.com",
            Port = 587,
            EnableSsl = true,
            DeliveryMethod = SmtpDeliveryMethod.Network,
            UseDefaultCredentials = false,
            Credentials = new NetworkCredential(fromAddress.Address, fromPassword)
        };

        MailMessage message = new MailMessage(fromAddress, toAddress);
        message.Subject = subject;
        message.Body = body;
        message.IsBodyHtml = true;
        
        smtp.Send(message);
        
        return true;
    }
}