using DentistaFroms.Models;
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
    public partial class CreateEditFormPacientes : Form
    {
        public CreateEditFormPacientes()
        {
            InitializeComponent();

            tbnum.Visible = false;
            label2.Visible = false;

            this.DialogResult = DialogResult.Cancel;
        }

        private int num_paciente = 0;

        public void EditPaciente(Paciente paciente)
        {
            this.Text = "Editar Paciente";
            this.label1.Text = "Editar Paciente";

            this.tbmorada.Text = paciente.morada;
            this.tbtelemovel.Text = paciente.telemovel;
            this.tbcodpostal.Text = paciente.cod_postal;
            this.tbhistorial.Text = paciente.historial;
            this.tbnome.Text = paciente.nome;
            this.tbnif.Text = paciente.nif.ToString();
            this.dtpdatanasc.Value = DateTime.Parse(paciente.data_nasc);
            this.tbnum.Text = paciente.num_paciente.ToString();

            tbnum.Visible = true;
            label2.Visible = true;
            tbnum.ReadOnly = true;
            tbnome.ReadOnly = true;
            tbnif.ReadOnly = true;
            dtpdatanasc.Enabled = false; 

            this.num_paciente = paciente.num_paciente;
        }


        private void btnSave_Click(object sender, EventArgs e)
        {
            Paciente paciente = new Paciente();
            paciente.num_paciente = this.num_paciente;
            paciente.nome = this.tbnome.Text;
            paciente.morada = this.tbmorada.Text;
            paciente.nif = int.Parse(tbnif.Text);
            paciente.telemovel = this.tbtelemovel.Text;
            paciente.historial = this.tbhistorial.Text;
            paciente.cod_postal = this.tbcodpostal.Text;
            paciente.data_nasc = dtpdatanasc.Value.ToString("yyyy-MM-dd");

            var repo = new PacientesRepository();

            if (paciente.num_paciente == 0)
            {
                repo.CreatePaciente(paciente);

            }
            else
            {
                repo.UpdatePaciente(paciente);

            }

            this.DialogResult = DialogResult.OK;
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;

        }
    }
}
