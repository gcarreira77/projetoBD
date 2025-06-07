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
    public partial class CreateEditFormUtils : Form
    {
        public CreateEditFormUtils()
        {
            InitializeComponent();

            comboBox1.Items.Clear();
            comboBox1.Items.AddRange(new string[] { "Médico", "Enfermeiro", "Rececionista" });

            tbespecialidade.Visible = false;
            label10.Visible = false;

            tbID_util.Visible = false;
            label2.Visible = false;

            this.DialogResult = DialogResult.Cancel;
        }

        private int num_utilizador = 0;

        public void EditUtilizador(Utilizador utilizador)
        {
            this.Text = "Editar Utilizador";
            this.label1.Text = "Editar Utilizador";

            this.tbcod_postal.Text = utilizador.cod_postal;
            this.tbnome.Text = utilizador.nome;
            this.dtpdatanasc.Value = DateTime.Parse(utilizador.data_nasc);
            this.tbmorada.Text = utilizador.morada;
            this.tbnum_contribuinte.Text = utilizador.num_contribuinte.ToString();
            this.tbtelemovel.Text = utilizador.telemovel;
            this.tbID_util.Text = utilizador.ID_util.ToString();

            tbID_util.Visible = true;
            label2.Visible = true;
            tbID_util.ReadOnly = true;

            tbnome.ReadOnly = true;
            tbnum_contribuinte.ReadOnly = true;
            dtpdatanasc.Enabled = false;
            comboBox1.Enabled = false;

            comboBox1.SelectedItem = utilizador.tipo;

            if (utilizador.tipo == "Médico")
            {
                tbespecialidade.Text = utilizador.especialidade;
                tbespecialidade.Visible = true;
                label10.Visible = true;
                tbespecialidade.ReadOnly = true;
            }
            else
            {
                tbespecialidade.Visible = false;
                label10.Visible = false;
            }

            this.num_utilizador = utilizador.ID_util;
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            Utilizador u = new Utilizador();
            u.ID_util = this.num_utilizador;
            u.nome = this.tbnome.Text;
            u.morada = this.tbmorada.Text;
            u.cod_postal = this.tbcod_postal.Text;
            u.data_nasc = dtpdatanasc.Value.ToString("yyyy-MM-dd");
            u.num_contribuinte = int.Parse(tbnum_contribuinte.Text);
            u.telemovel = this.tbtelemovel.Text;

            u.tipo = comboBox1.SelectedItem.ToString();

            if (u.tipo == "Médico")
            {
                u.especialidade = tbespecialidade.Text;
            }

            var repo = new UtilizadoresRepository();

            if (u.ID_util == 0)
            {
                repo.CreateUtilizador(u);
            }
            else
            {
                var original = repo.GetUtilizador(u.ID_util);
                u.tipo = original.tipo;
                u.especialidade = original.especialidade;

                repo.UpdateUtilizador(u);
            }

            this.DialogResult = DialogResult.OK;
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void comboBox1_SelectedIndexChanged_1(object sender, EventArgs e)
        {
            if (comboBox1.SelectedItem.ToString() == "Médico")
            {
                tbespecialidade.Visible = true;
                label10.Visible = true;
            }
            else
            {
                tbespecialidade.Visible = false;
                label10.Visible = false;
            }
        }
    }
}
