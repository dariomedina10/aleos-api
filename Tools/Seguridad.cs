using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace APIAleTennis.Tools
{
	public static class Seguridad
	{

		/// <summary>
		/// Metodo para encriptar a base64
		/// </summary>
		/// <param name="_string">Cadena a encriptar</param>
		/// <returns>Retorna cadena encriptada</returns>
		public static string Base64Encode(this string _string)
		{
			string result = string.Empty;
			byte[] encryted = Encoding.Unicode.GetBytes(_string);
			result = Convert.ToBase64String(encryted);
			return result;
		}

		/// <summary>
		/// Metodo para desencriptar base64
		/// </summary>
		/// <param name="_string">Cadena a desencriptar</param>
		/// <returns>Retorna cadena desencriptada</returns>
		public static string Base64Decode(this string _string)
		{
			string result = string.Empty;
			byte[] decryted = Convert.FromBase64String(_string);
			result = Encoding.Unicode.GetString(decryted, 0, decryted.ToArray().Length);
			return result;
		}

		/// <summary>
		/// Metodo para desencriptar bae64 cadena y deserializar objeto JSON.
		/// </summary>
		/// <param name="_string">Cadena a desencriptar y deserializar.</param>
		/// <returns>Retorna un objeto de tipo diccionario</returns>
		public static Dictionary<string,object> Base64DecodeJSON(this string _string)
		{
			Dictionary<string, object> result = new Dictionary<string, object>();
			byte[] decryted = Convert.FromBase64String(_string.Replace("--", "==").Replace(".", "+").Replace("_", "/").Replace("-", "="));
			result = Newtonsoft.Json.JsonConvert.DeserializeObject<Dictionary<string, object>>(Encoding.Unicode.GetString(decryted, 0, decryted.ToArray().Length));
			return result;
		}

		/// <summary>
		/// Metodo para serializar json y encriptar base64.
		/// </summary>
		/// <param name="_object">objeto a serializar y encriptar.</param>
		/// <returns>Retorna un string serializado y encriptado</returns>
		public static string Base64EncodeJSON(this Dictionary<string, object> _object)
		{
			string serialice = Newtonsoft.Json.JsonConvert.SerializeObject(_object);
			string result = string.Empty;
			byte[] encryted = Encoding.Unicode.GetBytes(serialice);
			result = Convert.ToBase64String(encryted);
			return result.Replace("==", "--").Replace("+", ".").Replace("/", "_").Replace("=", "-");
		}
	}
}
