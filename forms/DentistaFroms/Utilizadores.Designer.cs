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
            btnAddUtilizador = new Button();
            label1 = new Label();
            btnEditUtilizador = new Button();
            btnDelete = new Button();
            utilizadoresTable = new DataGridView();
            ((System.ComponentModel.ISupportInitialize)utilizadoresTable).BeginInit();
            SuspendLayout();
            // 
            // btnAddUtilizador
            // 
            btnAddUtilizador.Anchor = AnchorStyles.Top | AnchorStyles.Right;
            btnAddUtilizador.Location = new Point(68, 97);
            btnAddUtilizador.Name = "btnAddUtilizador";
            btnAddUtilizador.Size = new Size(115, 34);
            btnAddUtilizador.TabIndex = 2;
            btnAddUtilizador.Text = "Adicionar";
            btnAddUtilizador.UseVisualStyleBackColor = true;
            // 
            // label1
            // 
            label1.Anchor = AnchorStyles.Top | AnchorStyles.Left | AnchorStyles.Right;
            label1.Location = new Point(-2, 9);
            label1.Name = "label1";
            label1.Size = new Size(808, 38);
            label1.TabIndex = 3;
            label1.Text = "Lista de Utilizadores";
            label1.TextAlign = ContentAlignment.TopCenter;
            // 
            // btnEditUtilizador
            // 
            btnEditUtilizador.Anchor = AnchorStyles.Top | AnchorStyles.Right;
            btnEditUtilizador.Location = new Point(523, 97);
            btnEditUtilizador.Name = "btnEditUtilizador";
            btnEditUtilizador.Size = new Size(115, 34);
            btnEditUtilizador.TabIndex = 4;
            btnEditUtilizador.Text = "Editar";
            btnEditUtilizador.UseVisualStyleBackColor = true;
            // 
            // btnDelete
            // 
            btnDelete.Anchor = AnchorStyles.Top | AnchorStyles.Right;
            btnDelete.Location = new Point(644, 97);
            btnDelete.Name = "btnDelete";
            btnDelete.Size = new Size(115, 34);
            btnDelete.TabIndex = 5;
            btnDelete.Text = "Apagar";
            btnDelete.UseVisualStyleBackColor = true;
            // 
            // utilizadoresTable
            // 
            utilizadoresTable.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
            utilizadoresTable.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            utilizadoresTable.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            utilizadoresTable.Location = new Point(-2, 161);
            utilizadoresTable.MultiSelect = false;
            utilizadoresTable.Name = "utilizadoresTable";
            utilizadoresTable.RowHeadersVisible = false;
            utilizadoresTable.RowHeadersWidth = 62;
            utilizadoresTable.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            utilizadoresTable.Size = new Size(808, 289);
            utilizadoresTable.TabIndex = 6;
            // 
            // Utilizadores
            // 
            AutoScaleDimensions = new SizeF(10F, 25F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(800, 450);
            Controls.Add(utilizadoresTable);
            Controls.Add(btnDelete);
            Controls.Add(btnEditUtilizador);
            Controls.Add(label1);
            Controls.Add(btnAddUtilizador);
            Name = "Utilizadores";
            Text = "Utilizadores";
            ((System.ComponentModel.ISupportInitialize)utilizadoresTable).EndInit();
            ResumeLayout(false);
        }

        #endregion

        private Button btnAddUtilizador;
        private Label label1;
        private Button btnEditUtilizador;
        private Button btnDelete;
        private DataGridView utilizadoresTable;
    }
}