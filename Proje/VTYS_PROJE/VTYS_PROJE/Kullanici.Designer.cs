namespace VTYS_PROJE
{
    partial class Kullanici
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
            this.label1 = new System.Windows.Forms.Label();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.filmAra = new System.Windows.Forms.Label();
            this.kullaniciFilmAraButon = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(68, 22);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(46, 17);
            this.label1.TabIndex = 0;
            this.label1.Text = "label1";
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(228, 89);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(250, 22);
            this.textBox1.TabIndex = 1;
            // 
            // filmAra
            // 
            this.filmAra.AutoSize = true;
            this.filmAra.Location = new System.Drawing.Point(146, 92);
            this.filmAra.Name = "filmAra";
            this.filmAra.Size = new System.Drawing.Size(63, 17);
            this.filmAra.TabIndex = 2;
            this.filmAra.Text = "Film Ara:";
            // 
            // kullaniciFilmAraButon
            // 
            this.kullaniciFilmAraButon.Location = new System.Drawing.Point(363, 134);
            this.kullaniciFilmAraButon.Name = "kullaniciFilmAraButon";
            this.kullaniciFilmAraButon.Size = new System.Drawing.Size(75, 48);
            this.kullaniciFilmAraButon.TabIndex = 4;
            this.kullaniciFilmAraButon.Text = "Ara";
            this.kullaniciFilmAraButon.UseVisualStyleBackColor = true;
            this.kullaniciFilmAraButon.Click += new System.EventHandler(this.kullaniciFilmAraButon_Click);
            // 
            // Kullanici
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(120F, 120F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Dpi;
            this.ClientSize = new System.Drawing.Size(603, 220);
            this.Controls.Add(this.kullaniciFilmAraButon);
            this.Controls.Add(this.filmAra);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.label1);
            this.Name = "Kullanici";
            this.Text = "Kullanıcı";
            this.Load += new System.EventHandler(this.Kullanici_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Label filmAra;
        private System.Windows.Forms.Button kullaniciFilmAraButon;
        public System.Windows.Forms.Label label1;
    }
}