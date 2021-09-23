using APIAleTennis.Tools;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;

namespace APIAleTennis.Process
{
	public static class UtilsProcess
	{
		/// <summary>
		/// Envio de email generico
		/// </summary>
		/// <param name="Title">Titulo del correo</param>
		/// <param name="Text">Texto del correo</param>
		/// <param name="link">Link si lo tiene.</param>
		/// <param name="Image">Image si la tiene.</param>
		/// <param name="Mails">Mails a los que se enviara el correo.</param>
		/// <returns>Retorna booleando que indica si se envio el correo sin problemas</returns>
		public static Response<bool> SendMailGeneric(string Title, string Text, string Mails, string link = @"", string TextLink = @"", string NameUser = "estimado usuario ", string Image = @"http://via.placeholder.com/725x275")
		{
			Response<bool> Result = new Response<bool>();
			Result.Value = false;
			Result.Success = false;
			try
			{
				using (MailMessage mm = new MailMessage("noreply@aleosapp.com", Mails))
				{
					mm.Subject = Title;
					string body = "<table class='MsoNormalTable'border='0'cellpadding='0'width='100%'style='width:100.0%;background:#e5e5e5'><tbody><tr ><td style='padding:.75pt.75pt.75pt.75pt'><div align='center'><table class='MsoNormalTable'border='0'cellspacing='0'cellpadding='0'width='700'style='width:525.0pt;background:white'><tbody><tr ><td width='700'style='width:525.0pt;padding:0cm0cm0cm0cm'><p class='MsoNormal'>";
					//Imagen
					body += "<img width='725'height='275' src='" + Image + "'alt='Reddington' data-image-whitelisted tabindex='0'>";
					body += "</p></td></tr><tr style='height:131.25pt'><td style='padding:0cm0cm0cm0cm;height:131.25pt'><div align='center'><table class='MsoNormalTable'border='0'cellspacing='15'cellpadding='0'width='640'style='width:480.0pt'><tbody><tr style='height:108.75pt'><td width='610'style='width:457.6pt;padding:0cm0cm0cm0cm;height:108.75pt'>";
					//Texto
					body += "<p><strong><span style='font-size:11.5pt;font-family:&quot;SegoeUI&quot;sans-serif;color:#51aabf'> " + NameUser + "!</span></strong></p><p><span style='font-size:11.5pt;font-family:&quot;SegoeUI&quot;,sans-serif;color:#444444'>" + Text + "</span></p>";
					if (link != @"" && TextLink != @"")
					{
						body += "<p><span style='font-size:11.5pt;font-style:italic;font-family:&quot;SegoeUI&quot;,sans-serif;color:#444444'><strong><a href='" + link + "' target='_blank'>" + TextLink + "</a></strong></span></p>";
					} else if (TextLink != @"")
					{
						body += "<p><span style='font-size:11.5pt;font-style:italic;font-family:&quot;SegoeUI&quot;,sans-serif;color:#444444'><strong>" + TextLink + "</strong></span></p>";
					}
					body += "<palign='center'style='text-align:center'></p></td></tr></tbody></table></div></td></tr></tbody></table></div></td></tr></tbody></table>";
					mm.Body = body;
					mm.IsBodyHtml = true;
					SmtpClient smtp = new SmtpClient(@"aleosapp.com", 587);
					smtp.EnableSsl = false;
					NetworkCredential NetworkCred = new NetworkCredential(@"noreply@aleosapp.com", @"m3Q7a#7e");
					smtp.UseDefaultCredentials = false;
					smtp.Credentials = NetworkCred;
					smtp.Send(mm);
				}
				Result.Value = true;
				Result.Success = true;
				Result.Message = "";
			}
			catch (Exception ex)
			{
				Result.Value = false;
				Result.Success = false;
				Result.Message = ex.ToString();
			}
			return Result;
		}

		/// <summary>
		/// Metodo que permite generar una contraseña
		/// </summary>
		/// <param name="longitud"></param>
		/// <returns></returns>
		public static string GenerarPassword(int longitud)
		{
			string contraseña = string.Empty;
			string[] letras = { "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "ñ", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z",
								"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"};
			Random EleccionAleatoria = new Random();

			for (int i = 0; i < longitud; i++)
			{
				int LetraAleatoria = EleccionAleatoria.Next(0, 100);
				int NumeroAleatorio = EleccionAleatoria.Next(0, 9);

				if (LetraAleatoria < letras.Length)
				{
					contraseña += letras[LetraAleatoria];
				}
				else
				{
					contraseña += NumeroAleatorio.ToString();
				}
			}
			return contraseña;
		}


	}
}