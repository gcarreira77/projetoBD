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
    public partial class CreateEditFormsUtilizadores : Form
    {
        public CreateEditFormsUtilizadores()
        {
            InitializeComponent();
            this.DialogResult = DialogResult.Cancel;
        }

        private int id_util = 0;

        public void EditUtilizador(Utilizador utilizador)
        {
            this.Text = "Editar Utilizador";
            this.label1.Text = "Editar Utilizador";

            this.tbmorada.Text = utilizador.morada;
            this.tbtelemovel.Text = utilizador.telemovel;
            this.tbcodpostal.Text = utilizador.cod_postal;
            this.tbnome.Text = utilizador.nome;
            this.tbnumcontribuinte.Text = utilizador.num_contribuinte.ToString();
            this.dtpdatanasc.Value = DateTime.Parse(utilizador.data_nasc);

            this.id_util = utilizador.ID_util;
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            Utilizador utilizador = new Utilizador();
            utilizador.ID_util = this.id_util;
            utilizador.nome = this.tbnome.Text;
            utilizador.morada = this.tbmorada.Text;
            utilizador.num_contribuinte = int.Parse(tbnumcontribuinte.Text);
            utilizador.telemovel = this.tbtelemovel.Text;
            utilizador.cod_postal = this.tbcodpostal.Text;
            utilizador.data_nasc = dtpdatanasc.Value.ToString("yyyy-MM-dd");

            var repo = new UtilizadoresRepository();

            if (utilizador.ID_util == 0)
            {
                repo.CreateUtilizador(utilizador);
            }
            else
            {
                repo.UpdateUtilizador(utilizador);
            }

            this.DialogResult = DialogResult.OK;
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
        }




        private void CreateEditFormsUtilizadores_Load(object sender, EventArgs e)
        {
        }
    }
}
