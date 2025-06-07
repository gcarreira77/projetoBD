using DentistaFroms.Models;
using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Data;

namespace DentistaFroms.Repositories
{
    public class ConsultasRepository
    {
        private readonly string connectionString = DatabaseConfig.ConnectionString;

        public List<Consulta> GetConsultas()
        {
            var consultas = new List<Consulta>();

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    string sql = "SELECT * FROM vw_Consulta ORDER BY DataConsulta DESC, HoraConsulta DESC";

                    using (SqlCommand command = new SqlCommand(sql, connection))
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            var consulta = new Consulta
                            {
                                DataConsulta = reader.GetDateTime(reader.GetOrdinal("DataConsulta")),
                                HoraConsulta = reader.GetTimeSpan(reader.GetOrdinal("HoraConsulta")),

                                ID_Paciente = reader.GetInt32(reader.GetOrdinal("ID_Paciente")),
                                Nome_Paciente = reader.GetString(reader.GetOrdinal("Nome_Paciente")),

                                ID_Medico = reader.IsDBNull(reader.GetOrdinal("ID_Medico")) ? null : reader.GetInt32(reader.GetOrdinal("ID_Medico")),
                                Nome_Medico = reader.IsDBNull(reader.GetOrdinal("Nome_Medico")) ? null : reader.GetString(reader.GetOrdinal("Nome_Medico")),
                                Especialidade_Medico = reader.IsDBNull(reader.GetOrdinal("Especialidade_Medico")) ? null : reader.GetString(reader.GetOrdinal("Especialidade_Medico")),

                                ID_Enfermeiro = reader.IsDBNull(reader.GetOrdinal("ID_Enfermeiro")) ? null : reader.GetInt32(reader.GetOrdinal("ID_Enfermeiro")),
                                Nome_Enfermeiro = reader.IsDBNull(reader.GetOrdinal("Nome_Enfermeiro")) ? null : reader.GetString(reader.GetOrdinal("Nome_Enfermeiro"))
                            };

                            consultas.Add(consulta);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Erro ao obter consultas: " + ex.Message);
            }

            return consultas;
        }
    }
}
