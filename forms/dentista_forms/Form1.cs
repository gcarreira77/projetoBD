namespace dentista_forms
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void InitializeComponent()
        {
            button1 = new Button();
            button2 = new Button();
            button3 = new Button();
            button4 = new Button();
            SuspendLayout();
            // 
            // button1
            // 
            button1.BackColor = SystemColors.ActiveCaption;
            button1.Location = new Point(29, 46);
            button1.Name = "button1";
            button1.Size = new Size(159, 65);
            button1.TabIndex = 0;
            button1.Text = "Pacientes";
            button1.UseVisualStyleBackColor = false;
            button1.Click += button1_Click_1;
            // 
            // button2
            // 
            button2.BackColor = SystemColors.ActiveCaption;
            button2.Location = new Point(29, 140);
            button2.Name = "button2";
            button2.Size = new Size(159, 65);
            button2.TabIndex = 1;
            button2.Text = "Funcionários";
            button2.UseVisualStyleBackColor = false;
            // 
            // button3
            // 
            button3.BackColor = SystemColors.ActiveCaption;
            button3.Location = new Point(29, 232);
            button3.Name = "button3";
            button3.Size = new Size(159, 65);
            button3.TabIndex = 2;
            button3.Text = "Consultas";
            button3.UseVisualStyleBackColor = false;
            button3.Click += button3_Click;
            // 
            // button4
            // 
            button4.BackColor = SystemColors.ActiveCaption;
            button4.Location = new Point(29, 327);
            button4.Name = "button4";
            button4.Size = new Size(159, 65);
            button4.TabIndex = 3;
            button4.Text = "Pagamentos";
            button4.UseVisualStyleBackColor = false;
            button4.Click += button4_Click;
            // 
            // Form1
            // 
            ClientSize = new Size(684, 451);
            Controls.Add(button4);
            Controls.Add(button3);
            Controls.Add(button2);
            Controls.Add(button1);
            Name = "Form1";
            Text = "Clínica Abreu";
            Load += Form1_Load;
            ResumeLayout(false);

        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            PacientesForm pacientesForm = new PacientesForm();
            pacientesForm.ShowDialog();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            ConsultasForm consultasForm = new ConsultasForm();
            consultasForm.ShowDialog();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            PagamentosForm pagamentosForm = new PagamentosForm();
            pagamentosForm.ShowDialog();
        }


        private Button button1;
        private Button button2;
        private Button button3;
        private Button button4;
    }
}
