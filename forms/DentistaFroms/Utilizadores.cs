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
    public partial class Utilizadores : Form
    {
        private Forms1 _mainForm;

        public Utilizadores(Forms1 mainForm)
        {
            InitializeComponent();
            _mainForm = mainForm;

            ReadUtilizadores();
        }

        private void ReadUtilizadores()
        {
            DataTable dataTable = new DataTable();

            dataTable.Columns.Add("ID_util");
            dataTable.Columns.Add("nome");
            dataTable.Columns.Add("tipo");
            dataTable.Columns.Add("especialidade");
            dataTable.Columns.Add("num_contribuinte");
            dataTable.Columns.Add("morada");
            dataTable.Columns.Add("cod_postal");
            dataTable.Columns.Add("data_nasc");
            dataTable.Columns.Add("telemovel");

            var repo = new UtilizadoresRepository();
            var utilizadores = repo.GetUtilizadores();

            foreach (var utilizador in utilizadores)
            {
                var row = dataTable.NewRow();

                row["ID_util"] = utilizador.ID_util;
                row["nome"] = utilizador.nome;
                row["tipo"] = utilizador.tipo;
                row["especialidade"] = utilizador.especialidade;
                row["num_contribuinte"] = utilizador.num_contribuinte;
                row["morada"] = utilizador.morada;
                row["cod_postal"] = utilizador.cod_postal;
                row["data_nasc"] = utilizador.data_nasc;
                row["telemovel"] = utilizador.telemovel;

                dataTable.Rows.Add(row);
            }

            this.utilizadoresTable.DataSource = dataTable;
        }

        private void btnVoltar_Click(object sender, EventArgs e)
        {
            this.Close();
            _mainForm.Show();
        }

        private void btnAddUtilizador_Click(object sender, EventArgs e)
        {
            CreateEditFormUtils form = new CreateEditFormUtils();
            if (form.ShowDialog() == DialogResult.OK)
            {
                ReadUtilizadores();
            }
        }

        private void btnEditUtilizador_Click(object sender, EventArgs e)
        {
            var val = this.utilizadoresTable.SelectedRows[0].Cells[0].Value.ToString();
            if (val == null || val.Length == 0) return;

            int Id_util = int.Parse(val);

            var repo = new UtilizadoresRepository();
            var u = repo.GetUtilizador(Id_util);

            if (u == null) return;

            CreateEditFormUtils form = new CreateEditFormUtils();
            form.EditUtilizador(u);
            if (form.ShowDialog() == DialogResult.OK)
            {
                ReadUtilizadores();
            }

        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            if (utilizadoresTable.SelectedRows.Count == 0)
                return;

            var val = this.utilizadoresTable.SelectedRows[0].Cells[0].Value?.ToString();
            if (string.IsNullOrWhiteSpace(val)) return;

            int Id_util = int.Parse(val);

            DialogResult dialogResult = MessageBox.Show(
                "Quer mesmo eliminar este utilizador?",
                "Apagar Utilizador",
                MessageBoxButtons.YesNo,
                MessageBoxIcon.Warning
            );

            if (dialogResult == DialogResult.No)
                return;

            var repo = new UtilizadoresRepository();
            string error = repo.DeleteUtilizador(Id_util);

            if (!string.IsNullOrEmpty(error))
            {
                MessageBox.Show(error, "Erro ao Eliminar", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            ReadUtilizadores();
        }
    }
}
