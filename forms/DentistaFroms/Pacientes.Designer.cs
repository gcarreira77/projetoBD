namespace DentistaFroms
{
    partial class Pacientes
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
            label1 = new Label();
            btnAddPaciente = new Button();
            btnDelete = new Button();
            btnEditPaciente = new Button();
            pacientesTable = new DataGridView();
            ((System.ComponentModel.ISupportInitialize)pacientesTable).BeginInit();
            SuspendLayout();
            // 
            // label1
            // 
            label1.Anchor = AnchorStyles.Top | AnchorStyles.Left | AnchorStyles.Right;
            label1.Location = new Point(6, 6);
            label1.Name = "label1";
            label1.Size = new Size(808, 38);
            label1.TabIndex = 0;
            label1.Text = "Lista de Pacientes";
            label1.TextAlign = ContentAlignment.TopCenter;
            label1.Click += label1_Click;
            // 
            // btnAddPaciente
            // 
            btnAddPaciente.Anchor = AnchorStyles.Top | AnchorStyles.Right;
            btnAddPaciente.Location = new Point(28, 67);
            btnAddPaciente.Name = "btnAddPaciente";
            btnAddPaciente.Size = new Size(115, 34);
            btnAddPaciente.TabIndex = 1;
            btnAddPaciente.Text = "Adicionar";
            btnAddPaciente.UseVisualStyleBackColor = true;
            btnAddPaciente.Click += btnAddPaciente_Click;
            // 
            // btnDelete
            // 
            btnDelete.Anchor = AnchorStyles.Top | AnchorStyles.Right;
            btnDelete.Location = new Point(698, 67);
            btnDelete.Name = "btnDelete";
            btnDelete.Size = new Size(115, 34);
            btnDelete.TabIndex = 2;
            btnDelete.Text = "Apagar";
            btnDelete.UseVisualStyleBackColor = true;
            btnDelete.Click += btnDelete_Click;
            // 
            // btnEditPaciente
            // 
            btnEditPaciente.Anchor = AnchorStyles.Top | AnchorStyles.Right;
            btnEditPaciente.Location = new Point(580, 67);
            btnEditPaciente.Name = "btnEditPaciente";
            btnEditPaciente.Size = new Size(115, 34);
            btnEditPaciente.TabIndex = 3;
            btnEditPaciente.Text = "Editar";
            btnEditPaciente.UseVisualStyleBackColor = true;
            btnEditPaciente.Click += btnEditPaciente_Click;
            // 
            // pacientesTable
            // 
            pacientesTable.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
            pacientesTable.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            pacientesTable.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            pacientesTable.Location = new Point(6, 107);
            pacientesTable.MultiSelect = false;
            pacientesTable.Name = "pacientesTable";
            pacientesTable.RowHeadersVisible = false;
            pacientesTable.RowHeadersWidth = 62;
            pacientesTable.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            pacientesTable.Size = new Size(808, 379);
            pacientesTable.TabIndex = 4;
            pacientesTable.CellContentClick += dataGridView1_CellContentClick;
            // 
            // Pacientes
            // 
            AutoScaleDimensions = new SizeF(10F, 25F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(826, 498);
            Controls.Add(pacientesTable);
            Controls.Add(btnEditPaciente);
            Controls.Add(btnDelete);
            Controls.Add(btnAddPaciente);
            Controls.Add(label1);
            Name = "Pacientes";
            Text = " ";
            ((System.ComponentModel.ISupportInitialize)pacientesTable).EndInit();
            ResumeLayout(false);
        }

        #endregion

        private Label label1;
        private Button btnAddPaciente;
        private Button btnDelete;
        private Button btnEditPaciente;
        private DataGridView pacientesTable;
    }
}
