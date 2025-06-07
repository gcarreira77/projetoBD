namespace DentistaFroms
{
    partial class Utilizadores
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
            utilizadoresTable = new DataGridView();
            label1 = new Label();
            btnAddUtilizador = new Button();
            btnEditUtilizador = new Button();
            btnDelete = new Button();
            btnVoltar = new Button();
            ((System.ComponentModel.ISupportInitialize)utilizadoresTable).BeginInit();
            SuspendLayout();
            // 
            // utilizadoresTable
            // 
            utilizadoresTable.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
            utilizadoresTable.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            utilizadoresTable.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            utilizadoresTable.Location = new Point(3, 132);
            utilizadoresTable.MultiSelect = false;
            utilizadoresTable.Name = "utilizadoresTable";
            utilizadoresTable.RowHeadersVisible = false;
            utilizadoresTable.RowHeadersWidth = 62;
            utilizadoresTable.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            utilizadoresTable.Size = new Size(773, 325);
            utilizadoresTable.TabIndex = 0;
            // 
            // label1
            // 
            label1.Anchor = AnchorStyles.Top | AnchorStyles.Left | AnchorStyles.Right;
            label1.Location = new Point(3, 9);
            label1.Name = "label1";
            label1.Size = new Size(773, 40);
            label1.TabIndex = 1;
            label1.Text = "Utilizadores";
            label1.TextAlign = ContentAlignment.MiddleCenter;
            // 
            // btnAddUtilizador
            // 
            btnAddUtilizador.Anchor = AnchorStyles.Top | AnchorStyles.Right;
            btnAddUtilizador.Location = new Point(12, 92);
            btnAddUtilizador.Name = "btnAddUtilizador";
            btnAddUtilizador.Size = new Size(112, 34);
            btnAddUtilizador.TabIndex = 2;
            btnAddUtilizador.Text = "Adicionar";
            btnAddUtilizador.UseVisualStyleBackColor = true;
            btnAddUtilizador.Click += btnAddUtilizador_Click;
            // 
            // btnEditUtilizador
            // 
            btnEditUtilizador.Anchor = AnchorStyles.Top | AnchorStyles.Right;
            btnEditUtilizador.Location = new Point(536, 92);
            btnEditUtilizador.Name = "btnEditUtilizador";
            btnEditUtilizador.Size = new Size(112, 34);
            btnEditUtilizador.TabIndex = 3;
            btnEditUtilizador.Text = "Editar";
            btnEditUtilizador.UseVisualStyleBackColor = true;
            btnEditUtilizador.Click += btnEditUtilizador_Click;
            // 
            // btnDelete
            // 
            btnDelete.Anchor = AnchorStyles.Top | AnchorStyles.Right;
            btnDelete.Location = new Point(655, 92);
            btnDelete.Name = "btnDelete";
            btnDelete.Size = new Size(112, 34);
            btnDelete.TabIndex = 4;
            btnDelete.Text = "Eliminar";
            btnDelete.UseVisualStyleBackColor = true;
            btnDelete.Click += btnDelete_Click;
            // 
            // btnVoltar
            // 
            btnVoltar.Anchor = AnchorStyles.Top | AnchorStyles.Right;
            btnVoltar.Location = new Point(12, 9);
            btnVoltar.Name = "btnVoltar";
            btnVoltar.Size = new Size(86, 34);
            btnVoltar.TabIndex = 5;
            btnVoltar.Text = "Voltar";
            btnVoltar.UseVisualStyleBackColor = true;
            btnVoltar.Click += btnVoltar_Click;
            // 
            // Utilizadores
            // 
            AutoScaleDimensions = new SizeF(10F, 25F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(779, 450);
            Controls.Add(btnVoltar);
            Controls.Add(btnDelete);
            Controls.Add(btnEditUtilizador);
            Controls.Add(btnAddUtilizador);
            Controls.Add(label1);
            Controls.Add(utilizadoresTable);
            Name = "Utilizadores";
            Text = "Utilizadores";
            ((System.ComponentModel.ISupportInitialize)utilizadoresTable).EndInit();
            ResumeLayout(false);
        }

        #endregion

        private DataGridView utilizadoresTable;
        private Label label1;
        private Button btnAddUtilizador;
        private Button btnEditUtilizador;
        private Button btnDelete;
        private Button btnVoltar;
    }
}