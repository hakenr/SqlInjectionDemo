﻿using System;
using System.Collections.Generic;
using System.Text;
using System.Data.SqlClient;

namespace SqlInjectionApp
{
	public static class Program
	{
		public static void Main(string[] args)
		{
			// Vypíšeme počet účtů, které mají zůstatek vyšší než X.

			Console.Write("Minimalni zustatek? ");
			string vstup = Console.ReadLine();

			string sql = "SELECT COUNT(*) FROM Ucet WHERE Zustatek > " + DbHelper.SanitizeSqlParameter(vstup);
	
			using (SqlConnection conn = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=SqlDemo;Integrated Security=True"))
			{
				conn.Open();
				SqlCommand cmd = new SqlCommand(sql, conn);

				Console.WriteLine(cmd.ExecuteScalar());
			}

			Console.ReadLine();
		}
	}
}
