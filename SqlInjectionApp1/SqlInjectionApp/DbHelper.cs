using System;
using System.Collections.Generic;

namespace SqlInjectionApp
{
	public static class DbHelper
	{
		public static string SanitizeSqlParameter(string vstup)
		{
			// double-quoting
			return vstup.Replace("'", "''");
		}
	}
}