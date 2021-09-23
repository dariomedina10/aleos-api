using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace APIAleTennis.Tools
{
	public class Response<T>
	{
		private Dictionary<string,object> aditionalData;

		[JsonProperty(NullValueHandling = NullValueHandling.Ignore)]
		public Dictionary<string,object> AditionalData
		{
			get { return aditionalData; }
			set { aditionalData = value; }
		}

		private string _message;
		[JsonProperty(NullValueHandling = NullValueHandling.Ignore)]
		public string Message
		{
			get
			{
				return _message;
			}
			set
			{
				_message = value;
			}
		}

		private T _value;
		public T Value
		{
			get
			{
				return _value;
			}
			set
			{
				_value = value;
			}
		}

		private bool _success = false;
		public bool Success
		{
			get
			{
				return _success;
			}
			set
			{
				_success = value;
			}
		}

		
		private string _id;

		[JsonProperty(NullValueHandling = NullValueHandling.Ignore)]
		public string id
		{
			get { return _id; }
			set { _id = value; }
		}


		private string _token;
		[JsonProperty(NullValueHandling = NullValueHandling.Ignore)]
		public string Token
		{
			get
			{
				return _token;
			}
			set
			{
				_token = value;
			}
		}
	}
}