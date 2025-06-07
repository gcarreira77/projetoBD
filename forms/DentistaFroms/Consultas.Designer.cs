namespace DentistaFroms
{
    partial class Consultas
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
            consultasTable = new DataGridView();
            label1 = new Label();
            button1 = new Button();
            btnAddConsulta = new Button();
            btnEditConsulta = new Button();
            btnDelete = new Button();
            ((System.ComponentModel.ISupportInitialize)consultasTable).BeginInit();
            SuspendLayout();
            // 
            // consultasTable
            // 
            consultasTable.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
            consultasTable.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            consultasTable.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            consultasTable.Location = new Point(12, 120);
            consultasTable.Name = "consultasTable";
            consultasTable.RowHeadersVisible = false;
            consultasTable.RowHeadersWidth = 62;
            consultasTable.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            consultasTable.Size = new Size(776, 327);
            consultasTable.TabIndex = 0;
            // 
            // label1
            // 
            label1.Anchor = AnchorStyles.Top | AnchorStyles.Left | AnchorStyles.Right;
            label1.Location = new Point(124, 7);
            label1.Name = "label1";
            label1.Size = new Size(570, 37);
            label1.TabIndex = 1;
            label1.Text = "Consultas";
            label1.TextAlign = ContentAlignment.MiddleCenter;
            // 
            // button1
            // 
            button1.Anchor = AnchorStyles.Top | AnchorStyles.Right;
            button1.Location = new Point(12, 7);
            button1.Name = "button1";
            button1.Size = new Size(81, 34);
            button1.TabIndex = 2;
            button1.Text = "Voltar";
            button1.UseVisualStyleBackColor = true;
            button1.Click += button1_Click;
            // 
            // btnAddConsulta
            // 
            btnAddConsulta.Anchor = AnchorStyles.Top | AnchorStyles.Right;
            btnAddConsulta.Location = new Point(12, 80);
            btnAddConsulta.Name = "btnAddConsulta";
            btnAddConsulta.Size = new Size(112, 34);
            btnAddConsulta.TabIndex = 3;
            btnAddConsulta.Text = "Adicionar";
            btnAddConsulta.UseVisualStyleBackColor = true;
            // 
            // btnEditConsulta
            // 
            btnEditConsulta.Anchor = AnchorStyles.Top | AnchorStyles.Right;
            btnEditConsulta.Location = new Point(547, 80);
            btnEditConsulta.Name = "btnEditConsulta";
            btnEditConsulta.Size = new Size(112, 34);
            btnEditConsulta.TabIndex = 4;
            btnEditConsulta.Text = "Editar";
            btnEditConsulta.UseVisualStyleBackColor = true;
            // 
            // btnDelete
            // 
            btnDelete.Location = new Point(665, 80);
            btnDelete.Name = "btnDelete";
            btnDelete.Size = new Size(112, 34);
            btnDelete.TabIndex = 5;
            btnDelete.Text = "Remover";
            btnDelete.UseVisualStyleBackColor = true;
            // 
            // Consultas
            // 
            AutoScaleDimensions = new SizeF(10F, 25F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(800, 450);
            Controls.Add(btnDelete);
            Controls.Add(btnEditConsulta);
            Controls.Add(btnAddConsulta);
            Controls.Add(button1);
            Controls.Add(label1);
            Controls.Add(consultasTable);
            Name = "Consultas";
            Text = "Consultas";
            ((System.ComponentModel.ISupportInitialize)consultasTable).EndInit();
            ResumeLayout(false);
        }

        #endregion

        private DataGridView consultasTable;
        private Label label1;
        private Button button1;
        private Button btnAddConsulta;
        private Button btnEditConsulta;
        private Button btnDelete;
    }
}