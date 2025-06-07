namespace DentistaFroms
{
    partial class Forms1
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            btnPacientes = new Button();
            btnUtilizadores = new Button();
            btnConsultas = new Button();
            SuspendLayout();
            // 
            // btnPacientes
            // 
            btnPacientes.Location = new Point(83, 70);
            btnPacientes.Name = "btnPacientes";
            btnPacientes.Size = new Size(143, 65);
            btnPacientes.TabIndex = 0;
            btnPacientes.Text = "Pacientes";
            btnPacientes.UseVisualStyleBackColor = true;
            btnPacientes.Click += btnPacientes_Click;
            // 
            // btnUtilizadores
            // 
            btnUtilizadores.Location = new Point(85, 158);
            btnUtilizadores.Name = "btnUtilizadores";
            btnUtilizadores.Size = new Size(141, 64);
            btnUtilizadores.TabIndex = 1;
            btnUtilizadores.Text = "Utilizadores";
            btnUtilizadores.UseVisualStyleBackColor = true;
            btnUtilizadores.Click += btnUtilizadores_Click;
            // 
            // btnConsultas
            // 
            btnConsultas.Location = new Point(83, 250);
            btnConsultas.Name = "btnConsultas";
            btnConsultas.Size = new Size(143, 64);
            btnConsultas.TabIndex = 2;
            btnConsultas.Text = "Consultas";
            btnConsultas.UseVisualStyleBackColor = true;
            btnConsultas.Click += btnConsultas_Click;
            // 
            // Forms1
            // 
            AutoScaleDimensions = new SizeF(10F, 25F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(826, 498);
            Controls.Add(btnConsultas);
            Controls.Add(btnUtilizadores);
            Controls.Add(btnPacientes);
            Name = "Forms1";
            Text = " ";
            ResumeLayout(false);
        }

        #endregion

        private Button btnPacientes;
        private Button btnUtilizadores;
        private Button btnConsultas;
    }
}
