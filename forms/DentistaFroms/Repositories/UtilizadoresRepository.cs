using DentistaFroms.Models;
using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Data;

namespace DentistaFroms.Repositories
{
    public class UtilizadoresRepository
    {
        private readonly string connectionString = "Data Source=PCGC;Initial Catalog=Dentista;Integrated Security=True;Trust Server Certificate=True";

        public List<Utilizador> GetUtilizadores()
        {
            var utilizadores = new List<Utilizador>();

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    string sql = "SELECT * FROM Utilizador ORDER BY ID_util DESC";
                    using (SqlCommand command = new SqlCommand(sql, connection))
                    {
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                Utilizador u = new Utilizador();
                                u.ID_util = reader.GetInt32(0);
                                u.morada = reader.GetString(1);
                                u.cod_postal = reader.GetString(2);
                                u.num_contribuinte = reader.GetInt32(3);
                                u.passwd = reader.GetString(4);
                                u.data_nasc = reader.GetDateTime(5).ToString("yyyy-MM-dd");
                                u.telemovel = reader.GetString(6);
                                u.nome = reader.GetString(7);

                                utilizadores.Add(u);
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Erro ao obter utilizadores: " + ex.ToString());
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

                    string sql = "SELECT * FROM Utilizador WHERE ID_util = @ID_util";
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
                                u.passwd = reader.GetString(4);
                                u.data_nasc = reader.GetDateTime(5).ToString("yyyy-MM-dd");
                                u.telemovel = reader.GetString(6);
                                u.nome = reader.GetString(7);

                                return u;
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Erro ao obter utilizador: " + ex.ToString());
            }

            return null;
        }

        public int? CreateUtilizador(Utilizador utilizador)
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
                        command.Parameters.AddWithValue("@passwd", utilizador.passwd);
                        command.Parameters.AddWithValue("@data_nasc", DateTime.Parse(utilizador.data_nasc));
                        command.Parameters.AddWithValue("@telemovel", utilizador.telemovel);
                        command.Parameters.AddWithValue("@nome", utilizador.nome);

                        var result = command.ExecuteScalar();
                        return result != null ? Convert.ToInt32(result) : null;
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Erro ao criar utilizador: " + ex.ToString());
                return null;
            }
        }

        public bool UpdateUtilizador(Utilizador utilizador)
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
                        command.Parameters.AddWithValue("@num_contribuinte", utilizador.num_contribuinte);
                        command.Parameters.AddWithValue("@passwd", utilizador.passwd);
                        command.Parameters.AddWithValue("@data_nasc", DateTime.Parse(utilizador.data_nasc));
                        command.Parameters.AddWithValue("@telemovel", utilizador.telemovel);
                        command.Parameters.AddWithValue("@nome", utilizador.nome);

                        command.ExecuteNonQuery();
                        return true;
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Erro ao atualizar utilizador: " + ex.ToString());
                return false;
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
