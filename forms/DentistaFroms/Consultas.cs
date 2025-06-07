using DentistaFroms.Repositories;
using System.Data;
using System;
using System.Windows.Forms;

namespace DentistaFroms
{
    public partial class Consultas : Form
    {
        private Forms1 _mainForm;

        public Consultas(Forms1 mainForm)
        {
            InitializeComponent();
            _mainForm = mainForm;
            ReadConsultas();
        }

        private void ReadConsultas()
        {
            DataTable dataTable = new DataTable();

            dataTable.Columns.Add("DataConsulta");
            dataTable.Columns.Add("HoraConsulta");
            dataTable.Columns.Add("ID_Paciente");
            dataTable.Columns.Add("Nome_Paciente");
            dataTable.Columns.Add("ID_Medico");
            dataTable.Columns.Add("Nome_Medico");
            dataTable.Columns.Add("Especialidade_Medico");
            dataTable.Columns.Add("ID_Enfermeiro");
            dataTable.Columns.Add("Nome_Enfermeiro");

            var repo = new ConsultasRepository();
            var consultas = repo.GetConsultas();


            foreach (var consulta in consultas)
            {
                var row = dataTable.NewRow();

                row["DataConsulta"] = consulta.DataConsulta.ToString("yyyy-MM-dd");
                row["HoraConsulta"] = consulta.HoraConsulta.ToString(@"hh\:mm");
                row["ID_Paciente"] = consulta.ID_Paciente;
                row["Nome_Paciente"] = consulta.Nome_Paciente;
                row["ID_Medico"] = consulta.ID_Medico?.ToString() ?? "";
                row["Nome_Medico"] = consulta.Nome_Medico ?? "";
                row["Especialidade_Medico"] = consulta.Especialidade_Medico ?? "";
                row["ID_Enfermeiro"] = consulta.ID_Enfermeiro?.ToString() ?? "";
                row["Nome_Enfermeiro"] = consulta.Nome_Enfermeiro ?? "";

                dataTable.Rows.Add(row);
            }

            this.consultasTable.DataSource = dataTable;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
            _mainForm.Show();
        }
    }
}
