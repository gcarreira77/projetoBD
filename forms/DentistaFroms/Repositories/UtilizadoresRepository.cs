using DentistaFroms.Models;
using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DentistaFroms.Repositories
{
    public class UtilizadoresRepository
    {
        private readonly string connectionString = DatabaseConfig.ConnectionString;

        public List<Utilizador> GetUtilizadores()
        {
            var utilizadores = new List<Utilizador>();

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    string sql = @"SELECT * FROM vw_UtilizadoresComTipo ORDER BY ID_util DESC";

                    using (SqlCommand command = new SqlCommand(sql, connection))
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            Utilizador u = new Utilizador();
                            u.ID_util = reader.GetInt32(0);
                            u.morada = reader.GetString(1);
                            u.cod_postal = reader.GetString(2);
                            u.num_contribuinte = reader.GetInt32(3);
                            u.data_nasc = reader.GetDateTime(4).ToString("yyyy-MM-dd");
                            u.telemovel = reader.GetString(5);
                            u.nome = reader.GetString(6);
                            u.tipo = reader.GetString(7);
                            u.especialidade = reader.IsDBNull(8) ? "" : reader.GetString(8);

                            utilizadores.Add(u);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception: " + ex.ToString());
            }

            return utilizadores;
        }

        public Utilizador? GetUtilizador(int id_util)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    string sql = "SELECT * FROM vw_UtilizadoresComTipo WHERE ID_util = @ID_util";
                    using (SqlCommand command = new SqlCommand(sql, connection))
                    {
                        command.Parameters.AddWithValue("@ID_util", id_util);

                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                Utilizador u = new Utilizador();
                                u.ID_util = reader.GetInt32(0);
                                u.morada = reader.GetString(1);
                                u.cod_postal = reader.GetString(2);
                                u.num_contribuinte = reader.GetInt32(3);
                                u.data_nasc = reader.GetDateTime(4).ToString();
                                u.telemovel = reader.GetString(5);
                                u.nome = reader.GetString(6);
                                u.tipo = reader.GetString(7);
                                u.especialidade = reader.IsDBNull(8) ? "" : reader.GetString(8);

                                return u;
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception: " + ex.ToString());
            }

            return null;
        }

        public void CreateUtilizador(Utilizador utilizador)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    using (SqlCommand command = new SqlCommand("CriarUtilizador", connection))
                    {
                        command.CommandType = CommandType.StoredProcedure;

                        command.Parameters.AddWithValue("@morada", utilizador.morada);
                        command.Parameters.AddWithValue("@cod_postal", utilizador.cod_postal);
                        command.Parameters.AddWithValue("@num_contribuinte", utilizador.num_contribuinte);
                        command.Parameters.AddWithValue("@data_nasc", DateTime.Parse(utilizador.data_nasc));
                        command.Parameters.AddWithValue("@telemovel", utilizador.telemovel);
                        command.Parameters.AddWithValue("@nome", utilizador.nome);

                        command.Parameters.AddWithValue("@tipo", utilizador.tipo);
                        command.Parameters.AddWithValue("@especialidade",
                            utilizador.tipo == "Médico" ? utilizador.especialidade : DBNull.Value);

                        command.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception: " + ex.ToString());
            }
        }

        public void UpdateUtilizador(Utilizador utilizador)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    using (SqlCommand command = new SqlCommand("AtualizarUtilizador", connection))
                    {
                        command.CommandType = CommandType.StoredProcedure;

                        command.Parameters.AddWithValue("@ID_util", utilizador.ID_util);
                        command.Parameters.AddWithValue("@morada", utilizador.morada);
                        command.Parameters.AddWithValue("@cod_postal", utilizador.cod_postal);
                        command.Parameters.AddWithValue("@telemovel", utilizador.telemovel);

                        command.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception ex)
            { 
                Console.WriteLine("Exception: " + ex.ToString());
            }
        }

        public string DeleteUtilizador(int id_util)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    using (SqlCommand command = new SqlCommand("RemoverUtilizador", connection))
                    {
                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("@ID_util", id_util);

                        command.ExecuteNonQuery();
                        return null;
                    }
                }
            }
            catch (SqlException ex)
            {
                return "Erro ao remover utilizador: " + ex.Message;
            }
            catch (Exception ex)
            {
                return "Erro inesperado: " + ex.Message;
            }
        }
    }
}
