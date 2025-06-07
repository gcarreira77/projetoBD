namespace DentistaFroms
{
    partial class Pacients
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
            pacientesTable = new DataGridView();
            btnEditPaciente = new Button();
            btnDelete = new Button();
            btnAddPaciente = new Button();
            label1 = new Label();
            button2 = new Button();
            ((System.ComponentModel.ISupportInitialize)pacientesTable).BeginInit();
            SuspendLayout();
            // 
            // pacientesTable
            // 
            pacientesTable.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
            pacientesTable.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            pacientesTable.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            pacientesTable.Location = new Point(-4, 116);
            pacientesTable.MultiSelect = false;
            pacientesTable.Name = "pacientesTable";
            pacientesTable.RowHeadersVisible = false;
            pacientesTable.RowHeadersWidth = 62;
            pacientesTable.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            pacientesTable.Size = new Size(808, 349);
            pacientesTable.TabIndex = 9;
            // 
            // btnEditPaciente
            // 
            btnEditPaciente.Anchor = AnchorStyles.Top | AnchorStyles.Right;
            btnEditPaciente.Location = new Point(551, 76);
            btnEditPaciente.Name = "btnEditPaciente";
            btnEditPaciente.Size = new Size(115, 34);
            btnEditPaciente.TabIndex = 8;
            btnEditPaciente.Text = "Editar";
            btnEditPaciente.UseVisualStyleBackColor = true;
            btnEditPaciente.Click += btnEditPaciente_Click;
            // 
            // btnDelete
            // 
            btnDelete.Anchor = AnchorStyles.Top | AnchorStyles.Right;
            btnDelete.Location = new Point(672, 76);
            btnDelete.Name = "btnDelete";
            btnDelete.Size = new Size(115, 34);
            btnDelete.TabIndex = 7;
            btnDelete.Text = "Apagar";
            btnDelete.UseVisualStyleBackColor = true;
            btnDelete.Click += btnDelete_Click;
            // 
            // btnAddPaciente
            // 
            btnAddPaciente.Anchor = AnchorStyles.Top | AnchorStyles.Right;
            btnAddPaciente.Location = new Point(12, 76);
            btnAddPaciente.Name = "btnAddPaciente";
            btnAddPaciente.Size = new Size(115, 34);
            btnAddPaciente.TabIndex = 6;
            btnAddPaciente.Text = "Adicionar";
            btnAddPaciente.UseVisualStyleBackColor = true;
            btnAddPaciente.Click += btnAddPaciente_Click_1;
            // 
            // label1
            // 
            label1.Anchor = AnchorStyles.Top | AnchorStyles.Left | AnchorStyles.Right;
            label1.Location = new Point(-4, 10);
            label1.Name = "label1";
            label1.Size = new Size(808, 38);
            label1.TabIndex = 5;
            label1.Text = "Lista de Pacientes";
            label1.TextAlign = ContentAlignment.TopCenter;
            // 
            // button2
            // 
            button2.Anchor = AnchorStyles.Top | AnchorStyles.Right;
            button2.Location = new Point(18, 5);
            button2.Name = "button2";
            button2.Size = new Size(68, 35);
            button2.TabIndex = 11;
            button2.Text = "Voltar";
            button2.UseVisualStyleBackColor = true;
            button2.Click += button2_Click;
            // 
            // Pacients
            // 
            AutoScaleDimensions = new SizeF(10F, 25F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(800, 450);
            Controls.Add(button2);
            Controls.Add(pacientesTable);
            Controls.Add(btnEditPaciente);
            Controls.Add(btnDelete);
            Controls.Add(btnAddPaciente);
            Controls.Add(label1);
            Name = "Pacients";
            Text = "Pacients";
            ((System.ComponentModel.ISupportInitialize)pacientesTable).EndInit();
            ResumeLayout(false);
        }

        #endregion

        private DataGridView pacientesTable;
        private Button btnEditPaciente;
        private Button btnDelete;
        private Button btnAddPaciente;
        private Label label1;
        private Button button2;
    }
}