using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace dentista_forms
{
    public partial class PacientesForm : Form
    {
        public PacientesForm()
        {
            InitializeComponent();
        }

        private void PacientesForm_Load(object sender, EventArgs e)
        {
            CarregarPacientes();
        }

        private void CarregarPacientes()
        {
            string query = "SELECT num_paciente, nome, nif, morada, cod_postal, telemovel, data_nasc, historial FROM Paciente";
            DataTable dt = DBHelper.ExecuteQuery(query);
            dgvPacientes.DataSource = dt;
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged_1(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged_2(object sender, EventArgs e)
        {

        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void dtpDataNasc_ValueChanged(object sender, EventArgs e)
        {

        }

        private void txtNIF_TextChanged(object sender, EventArgs e)
        {

        }

        private void txtCodPostal_TextChanged(object sender, EventArgs e)
        {

        }

        private void txtMorada_TextChanged(object sender, EventArgs e)
        {

        }

        private void txtHistorial_TextChanged(object sender, EventArgs e)
        {

        }

        private void btnInserir_Click(object sender, EventArgs e)
        {

        }

        private void dgvPacientes_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}
