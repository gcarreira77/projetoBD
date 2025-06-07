using DentistaFroms.Repositories;
using System.Data;

namespace DentistaFroms
{
    public partial class Forms1 : Form
    {
        public Forms1()
        {
            InitializeComponent();

        }

        private void btnPacientes_Click(object sender, EventArgs e)
        {
            this.Hide();
            Pacients form = new Pacients(this);
            form.Show();
        }

        private void btnUtilizadores_Click(object sender, EventArgs e)
        {
            this.Hide();
            Utilizadores form = new Utilizadores(this);
            form.Show();
        }

        private void btnConsultas_Click(object sender, EventArgs e)
        {
            this.Hide();
            Consultas form = new Consultas(this);
            form.Show();
        }
    }
}
