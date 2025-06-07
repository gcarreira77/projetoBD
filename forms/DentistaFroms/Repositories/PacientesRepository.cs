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
    public class PacientesRepository
    {
        private readonly string connectionString = DatabaseConfig.ConnectionString;

        public List<Paciente> GetPacientes()
        {
            var pacientes = new List<Paciente>();

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    string sql = "SELECT * FROM Paciente ORDER BY num_paciente DESC";
                    using (SqlCommand command = new SqlCommand(sql, connection))
                    {
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                Paciente paciente = new Paciente();
                                paciente.num_paciente = reader.GetInt32(0);
                                paciente.morada = reader.GetString(1);
                                paciente.nif = reader.GetInt32(2);
                                paciente.data_nasc = reader.GetDateTime(3).ToString();
                                paciente.nome = reader.GetString(4);
                                paciente.cod_postal = reader.GetString(5);
                                paciente.telemovel = reader.GetString(6);
                                paciente.historial = reader.GetString(7);

                                pacientes.Add(paciente);
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception: " + ex.ToString());
            }

            return pacientes;
        }

        public Paciente? GetPaciente(int num_paciente)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    string sql = "SELECT * FROM Paciente WHERE num_paciente=@num_paciente";
                    using (SqlCommand command = new SqlCommand(sql, connection))
                    {
                        command.Parameters.AddWithValue("@num_paciente", num_paciente);
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                Paciente paciente = new Paciente();
                                paciente.num_paciente = reader.GetInt32(0);
                                paciente.morada = reader.GetString(1);
                                paciente.nif = reader.GetInt32(2);
                                paciente.data_nasc = reader.GetDateTime(3).ToString();
                                paciente.nome = reader.GetString(4);
                                paciente.cod_postal = reader.GetString(5);
                                paciente.telemovel = reader.GetString(6);
                                paciente.historial = reader.GetString(7);

                                return paciente;
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

        public void CreatePaciente(Paciente paciente)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    using (SqlCommand command = new SqlCommand("CriarPaciente", connection))
                    {
                        command.CommandType = CommandType.StoredProcedure;

                        command.Parameters.AddWithValue("@morada", paciente.morada);
                        command.Parameters.AddWithValue("@nif", paciente.nif);
                        command.Parameters.AddWithValue("@data_nasc", DateTime.Parse(paciente.data_nasc));
                        command.Parameters.AddWithValue("@nome", paciente.nome);
                        command.Parameters.AddWithValue("@cod_postal", paciente.cod_postal);
                        command.Parameters.AddWithValue("@telemovel", paciente.telemovel);
                        command.Parameters.AddWithValue("@historial", paciente.historial ?? string.Empty);

                        command.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception: " + ex.ToString());
            }
        }

        public void UpdatePaciente(Paciente paciente)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    using (SqlCommand command = new SqlCommand("AtualizarPaciente", connection))
                    {
                        command.CommandType = CommandType.StoredProcedure;

                        command.Parameters.AddWithValue("@num_paciente", paciente.num_paciente);
                        command.Parameters.AddWithValue("@morada", paciente.morada);
                        command.Parameters.AddWithValue("@cod_postal", paciente.cod_postal);
                        command.Parameters.AddWithValue("@telemovel", paciente.telemovel);
                        command.Parameters.AddWithValue("@historial", paciente.historial ?? string.Empty);

                        command.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception: " + ex.ToString());
            }
        }

        public string DeletePaciente(int num_paciente)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    using (SqlCommand command = new SqlCommand("RemoverPaciente", connection))
                    {
                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("@num_paciente", num_paciente);

                        command.ExecuteNonQuery();
                        return null;
                    }
                }
            }
            catch (SqlException ex)
            {
                return "Erro ao remover paciente: " + ex.Message;
            }
            catch (Exception ex)
            {
                return "Erro inesperado: " + ex.Message;
            }
        }

    }
}
