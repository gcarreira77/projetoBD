namespace dentista_forms
{
    partial class PacientesForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
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
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            txtNome = new TextBox();
            txtMorada = new TextBox();
            txtNIF = new TextBox();
            txtCodPostal = new TextBox();
            txtTelemovel = new TextBox();
            dtpDataNasc = new DateTimePicker();
            txtHistorial = new TextBox();
            btnInserir = new Button();
            groupBox1 = new GroupBox();
            dgvPacientes = new DataGridView();
            groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)dgvPacientes).BeginInit();
            SuspendLayout();
            // 
            // txtNome
            // 
            txtNome.Location = new Point(9, 30);
            txtNome.Name = "txtNome";
            txtNome.Size = new Size(150, 31);
            txtNome.TabIndex = 0;
            txtNome.TextChanged += textBox1_TextChanged;
            // 
            // txtMorada
            // 
            txtMorada.Location = new Point(9, 67);
            txtMorada.Name = "txtMorada";
            txtMorada.Size = new Size(150, 31);
            txtMorada.TabIndex = 1;
            txtMorada.TextChanged += txtMorada_TextChanged;
            // 
            // txtNIF
            // 
            txtNIF.Location = new Point(165, 30);
            txtNIF.Name = "txtNIF";
            txtNIF.Size = new Size(150, 31);
            txtNIF.TabIndex = 2;
            txtNIF.TextChanged += txtNIF_TextChanged;
            // 
            // txtCodPostal
            // 
            txtCodPostal.Location = new Point(321, 30);
            txtCodPostal.Name = "txtCodPostal";
            txtCodPostal.Size = new Size(150, 31);
            txtCodPostal.TabIndex = 3;
            txtCodPostal.TextChanged += txtCodPostal_TextChanged;
            // 
            // txtTelemovel
            // 
            txtTelemovel.Location = new Point(477, 30);
            txtTelemovel.Name = "txtTelemovel";
            txtTelemovel.Size = new Size(150, 31);
            txtTelemovel.TabIndex = 4;
            txtTelemovel.TextChanged += textBox1_TextChanged_1;
            // 
            // dtpDataNasc
            // 
            dtpDataNasc.Location = new Point(9, 104);
            dtpDataNasc.Name = "dtpDataNasc";
            dtpDataNasc.Size = new Size(300, 31);
            dtpDataNasc.TabIndex = 5;
            dtpDataNasc.ValueChanged += dtpDataNasc_ValueChanged;
            // 
            // txtHistorial
            // 
            txtHistorial.Location = new Point(9, 141);
            txtHistorial.Name = "txtHistorial";
            txtHistorial.Size = new Size(220, 31);
            txtHistorial.TabIndex = 6;
            txtHistorial.TextChanged += txtHistorial_TextChanged;
            // 
            // btnInserir
            // 
            btnInserir.Location = new Point(9, 178);
            btnInserir.Name = "btnInserir";
            btnInserir.Size = new Size(112, 34);
            btnInserir.TabIndex = 7;
            btnInserir.Text = "Inserir";
            btnInserir.UseVisualStyleBackColor = true;
            btnInserir.Click += btnInserir_Click;
            // 
            // groupBox1
            // 
            groupBox1.Controls.Add(txtNIF);
            groupBox1.Controls.Add(btnInserir);
            groupBox1.Controls.Add(txtNome);
            groupBox1.Controls.Add(txtHistorial);
            groupBox1.Controls.Add(txtMorada);
            groupBox1.Controls.Add(dtpDataNasc);
            groupBox1.Controls.Add(txtCodPostal);
            groupBox1.Controls.Add(txtTelemovel);
            groupBox1.Location = new Point(12, 12);
            groupBox1.Name = "groupBox1";
            groupBox1.Size = new Size(776, 219);
            groupBox1.TabIndex = 8;
            groupBox1.TabStop = false;
            groupBox1.Text = "Adicionar";
            groupBox1.Enter += groupBox1_Enter;
            // 
            // dgvPacientes
            // 
            dgvPacientes.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dgvPacientes.Location = new Point(12, 237);
            dgvPacientes.Name = "dgvPacientes";
            dgvPacientes.RowHeadersWidth = 62;
            dgvPacientes.Size = new Size(776, 225);
            dgvPacientes.TabIndex = 9;
            dgvPacientes.CellContentClick += dgvPacientes_CellContentClick;
            // 
            // PacientesForm
            // 
            AutoScaleDimensions = new SizeF(10F, 25F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(800, 450);
            Controls.Add(dgvPacientes);
            Controls.Add(groupBox1);
            Name = "PacientesForm";
            Text = "PacientesForm";
            groupBox1.ResumeLayout(false);
            groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)dgvPacientes).EndInit();
            ResumeLayout(false);

            this.Load += new System.EventHandler(this.PacientesForm_Load);

        }

        #endregion

        private TextBox txtNome;
        private TextBox txtMorada;
        private TextBox txtNIF;
        private TextBox txtCodPostal;
        private TextBox txtTelemovel;
        private DateTimePicker dtpDataNasc;
        private TextBox txtHistorial;
        private Button btnInserir;
        private GroupBox groupBox1;
        private DataGridView dgvPacientes;
    }
}