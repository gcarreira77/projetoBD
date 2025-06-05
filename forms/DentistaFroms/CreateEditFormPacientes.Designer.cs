namespace DentistaFroms
{
    partial class CreateEditFormPacientes
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
            label1 = new Label();
            label2 = new Label();
            lbnum = new Label();
            label3 = new Label();
            tbnome = new TextBox();
            label4 = new Label();
            label5 = new Label();
            label6 = new Label();
            label7 = new Label();
            tbmorada = new TextBox();
            tbnif = new TextBox();
            tbcodpostal = new TextBox();
            tbtelemovel = new TextBox();
            label8 = new Label();
            tbhistorial = new TextBox();
            label9 = new Label();
            btnSave = new Button();
            btnCancel = new Button();
            dtpdatanasc = new DateTimePicker();
            SuspendLayout();
            // 
            // label1
            // 
            label1.Anchor = AnchorStyles.Top | AnchorStyles.Left | AnchorStyles.Right;
            label1.Location = new Point(12, 9);
            label1.Name = "label1";
            label1.Size = new Size(776, 42);
            label1.TabIndex = 0;
            label1.Text = "Criar Paciente";
            label1.TextAlign = ContentAlignment.MiddleCenter;
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(129, 82);
            label2.Name = "label2";
            label2.Size = new Size(124, 25);
            label2.TabIndex = 1;
            label2.Text = "Num_paciente";
            // 
            // lbnum
            // 
            lbnum.AutoSize = true;
            lbnum.Location = new Point(259, 82);
            lbnum.Name = "lbnum";
            lbnum.Size = new Size(0, 25);
            lbnum.TabIndex = 2;
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new Point(129, 119);
            label3.Name = "label3";
            label3.Size = new Size(61, 25);
            label3.TabIndex = 3;
            label3.Text = "Nome";
            // 
            // tbnome
            // 
            tbnome.Location = new Point(259, 116);
            tbnome.Name = "tbnome";
            tbnome.Size = new Size(413, 31);
            tbnome.TabIndex = 4;
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Location = new Point(129, 160);
            label4.Name = "label4";
            label4.Size = new Size(74, 25);
            label4.TabIndex = 5;
            label4.Text = "Morada";
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Location = new Point(129, 195);
            label5.Name = "label5";
            label5.Size = new Size(39, 25);
            label5.TabIndex = 6;
            label5.Text = "NIF";
            // 
            // label6
            // 
            label6.AutoSize = true;
            label6.Location = new Point(129, 266);
            label6.Name = "label6";
            label6.Size = new Size(100, 25);
            label6.TabIndex = 7;
            label6.Text = "cod. postal";
            // 
            // label7
            // 
            label7.AutoSize = true;
            label7.Location = new Point(129, 300);
            label7.Name = "label7";
            label7.Size = new Size(90, 25);
            label7.TabIndex = 8;
            label7.Text = "Telemovel";
            // 
            // tbmorada
            // 
            tbmorada.Location = new Point(259, 153);
            tbmorada.Name = "tbmorada";
            tbmorada.Size = new Size(413, 31);
            tbmorada.TabIndex = 9;
            // 
            // tbnif
            // 
            tbnif.Location = new Point(259, 190);
            tbnif.Name = "tbnif";
            tbnif.Size = new Size(413, 31);
            tbnif.TabIndex = 10;
            // 
            // tbcodpostal
            // 
            tbcodpostal.Location = new Point(259, 260);
            tbcodpostal.Name = "tbcodpostal";
            tbcodpostal.Size = new Size(413, 31);
            tbcodpostal.TabIndex = 11;
            // 
            // tbtelemovel
            // 
            tbtelemovel.Location = new Point(259, 294);
            tbtelemovel.Name = "tbtelemovel";
            tbtelemovel.Size = new Size(413, 31);
            tbtelemovel.TabIndex = 12;
            // 
            // label8
            // 
            label8.AutoSize = true;
            label8.Location = new Point(129, 335);
            label8.Name = "label8";
            label8.Size = new Size(77, 25);
            label8.TabIndex = 13;
            label8.Text = "Historial";
            // 
            // tbhistorial
            // 
            tbhistorial.Location = new Point(259, 331);
            tbhistorial.Name = "tbhistorial";
            tbhistorial.Size = new Size(413, 31);
            tbhistorial.TabIndex = 14;
            // 
            // label9
            // 
            label9.AutoSize = true;
            label9.Location = new Point(129, 232);
            label9.Name = "label9";
            label9.Size = new Size(93, 25);
            label9.TabIndex = 15;
            label9.Text = "Data nasc.";
            // 
            // btnSave
            // 
            btnSave.Location = new Point(259, 380);
            btnSave.Name = "btnSave";
            btnSave.Size = new Size(112, 34);
            btnSave.TabIndex = 16;
            btnSave.Text = "Guardar";
            btnSave.UseVisualStyleBackColor = true;
            btnSave.Click += btnSave_Click;
            // 
            // btnCancel
            // 
            btnCancel.Location = new Point(377, 380);
            btnCancel.Name = "btnCancel";
            btnCancel.Size = new Size(112, 34);
            btnCancel.TabIndex = 17;
            btnCancel.Text = "Cancelar";
            btnCancel.UseVisualStyleBackColor = true;
            btnCancel.Click += btnCancel_Click;
            // 
            // dtpdatanasc
            // 
            dtpdatanasc.Location = new Point(259, 226);
            dtpdatanasc.Name = "dtpdatanasc";
            dtpdatanasc.Size = new Size(300, 31);
            dtpdatanasc.TabIndex = 18;
            // 
            // CreateEditFormPacientes
            // 
            AutoScaleDimensions = new SizeF(10F, 25F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(800, 450);
            Controls.Add(dtpdatanasc);
            Controls.Add(btnCancel);
            Controls.Add(btnSave);
            Controls.Add(label9);
            Controls.Add(tbhistorial);
            Controls.Add(label8);
            Controls.Add(tbtelemovel);
            Controls.Add(tbcodpostal);
            Controls.Add(tbnif);
            Controls.Add(tbmorada);
            Controls.Add(label7);
            Controls.Add(label6);
            Controls.Add(label5);
            Controls.Add(label4);
            Controls.Add(tbnome);
            Controls.Add(label3);
            Controls.Add(lbnum);
            Controls.Add(label2);
            Controls.Add(label1);
            Name = "CreateEditFormPacientes";
            Text = "Criar Pacientes";
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label label1;
        private Label label2;
        private Label lbnum;
        private Label label3;
        private TextBox tbnome;
        private Label label4;
        private Label label5;
        private Label label6;
        private Label label7;
        private TextBox tbmorada;
        private TextBox tbnif;
        private TextBox tbcodpostal;
        private TextBox tbtelemovel;
        private Label label8;
        private TextBox tbhistorial;
        private Label label9;
        private Button btnSave;
        private Button btnCancel;
        private DateTimePicker dtpdatanasc;
    }
}