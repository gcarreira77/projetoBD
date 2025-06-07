using DentistaFroms.Repositories;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DentistaFroms
{
    public partial class Pacients : Form
    {
        private Forms1 _mainForm;

        public Pacients(Forms1 mainForm)
        {
            InitializeComponent();
            _mainForm = mainForm;

            ReadPacientes();
        }

        private void ReadPacientes()
        {
            DataTable dataTable = new DataTable();

            dataTable.Columns.Add("num_paciente");
            dataTable.Columns.Add("nome");
            dataTable.Columns.Add("morada");
            dataTable.Columns.Add("nif");
            dataTable.Columns.Add("data_nasc");
            dataTable.Columns.Add("cod_postal");
            dataTable.Columns.Add("telemovel");
            dataTable.Columns.Add("historial");

            var repo = new PacientesRepository();
            var pacientes = repo.GetPacientes();

            foreach (var paciente in pacientes)
            {
                var row = dataTable.NewRow();

                row["num_paciente"] = paciente.num_paciente;
                row["nome"] = paciente.nome;
                row["morada"] = paciente.morada;
                row["nif"] = paciente.nif;
                row["data_nasc"] = paciente.data_nasc;
                row["cod_postal"] = paciente.cod_postal;
                row["telemovel"] = paciente.telemovel;
                row["historial"] = paciente.historial;

                dataTable.Rows.Add(row);
            }

            this.pacientesTable.DataSource = dataTable;
        }

        private void btnAddPaciente_Click_1(object sender, EventArgs e)
        {
            CreateEditFormPacientes form = new CreateEditFormPacientes();
            if (form.ShowDialog() == DialogResult.OK)
            {
                ReadPacientes();
            }
        }

        private void btnEditPaciente_Click(object sender, EventArgs e)
        {
            var val = this.pacientesTable.SelectedRows[0].Cells[0].Value.ToString();
            if (val == null || val.Length == 0) return;

            int num_paciente = int.Parse(val);

            var repo = new PacientesRepository();
            var paciente = repo.GetPaciente(num_paciente);

            if (paciente == null) return;

            CreateEditFormPacientes form = new CreateEditFormPacientes();
            form.EditPaciente(paciente);
            if (form.ShowDialog() == DialogResult.OK)
            {
                ReadPacientes();
            }
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            if (pacientesTable.SelectedRows.Count == 0)
                return;

            var val = pacientesTable.SelectedRows[0].Cells[0].Value?.ToString();
            if (string.IsNullOrWhiteSpace(val)) return;

            int num_paciente = int.Parse(val);

            DialogResult dialogResult = MessageBox.Show(
                "Quer mesmo eliminar este paciente?",
                "Apagar Paciente",
                MessageBoxButtons.YesNo,
                MessageBoxIcon.Warning
            );

            if (dialogResult == DialogResult.No)
                return;

            var repo = new PacientesRepository();
            string error = repo.DeletePaciente(num_paciente);

            if (!string.IsNullOrEmpty(error))
            {
                MessageBox.Show(error, "Erro ao Eliminar", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            ReadPacientes();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
            _mainForm.Show(); 
        }
    }
}
