using System;
using System.Collections.Generic;
using System.Text;
using System.Data.SqlClient;

namespace SqlInjectionApp
{
	public static class Program
	{
		public static void Main(string[] args)
		{
			Console.Write("Nazev uctu? ");
			string vstup = Console.ReadLine();

			string sql = "SELECT TOP 1 UcetID FROM Ucet WHERE Nazev LIKE '%" + vstup + "%'";
	
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
