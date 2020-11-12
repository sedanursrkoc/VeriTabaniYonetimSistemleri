namespace VTYS_PROJE
{
    partial class FilmEkle
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
            this.filmIDLabel = new System.Windows.Forms.Label();
            this.filmAdLabel = new System.Windows.Forms.Label();
            this.VizyonTarihLabel = new System.Windows.Forms.Label();
            this.KonuLabel = new System.Windows.Forms.Label();
            this.filmID = new System.Windows.Forms.TextBox();
            this.FilmAd = new System.Windows.Forms.TextBox();
            this.VizyonTarih = new System.Windows.Forms.TextBox();
            this.Konu = new System.Windows.Forms.TextBox();
            this.filmTur = new System.Windows.Forms.Label();
            this.Tur = new System.Windows.Forms.TextBox();
            this.filmEkleButon = new System.Windows.Forms.Button();
            this.TurEkleButon = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // filmIDLabel
            // 
            this.filmIDLabel.AutoSize = true;
            this.filmIDLabel.Location = new System.Drawing.Point(74, 59);
            this.filmIDLabel.Name = "filmIDLabel";
            this.filmIDLabel.Size = new System.Drawing.Size(54, 17);
            this.filmIDLabel.TabIndex = 0;
            this.filmIDLabel.Text = "Film ID:";
            // 
            // filmAdLabel
            // 
            this.filmAdLabel.AutoSize = true;
            this.filmAdLabel.Location = new System.Drawing.Point(74, 110);
            this.filmAdLabel.Name = "filmAdLabel";
            this.filmAdLabel.Size = new System.Drawing.Size(58, 17);
            this.filmAdLabel.TabIndex = 1;
            this.filmAdLabel.Text = "Film Ad:";
            // 
            // VizyonTarihLabel
            // 
            this.VizyonTarihLabel.AutoSize = true;
            this.VizyonTarihLabel.Location = new System.Drawing.Point(74, 164);
            this.VizyonTarihLabel.Name = "VizyonTarihLabel";
            this.VizyonTarihLabel.Size = new System.Drawing.Size(94, 17);
            this.VizyonTarihLabel.TabIndex = 2;
            this.VizyonTarihLabel.Text = "Vizyon Tarihi:";
            // 
            // KonuLabel
            // 
            this.KonuLabel.AutoSize = true;
            this.KonuLabel.Location = new System.Drawing.Point(74, 213);
            this.KonuLabel.Name = "KonuLabel";
            this.KonuLabel.Size = new System.Drawing.Size(45, 17);
            this.KonuLabel.TabIndex = 3;
            this.KonuLabel.Text = "Konu:";
            // 
            // filmID
            // 
            this.filmID.Location = new System.Drawing.Point(213, 53);
            this.filmID.Name = "filmID";
            this.filmID.Size = new System.Drawing.Size(100, 22);
            this.filmID.TabIndex = 4;
            // 
            // FilmAd
            // 
            this.FilmAd.Location = new System.Drawing.Point(213, 110);
            this.FilmAd.Name = "FilmAd";
            this.FilmAd.Size = new System.Drawing.Size(100, 22);
            this.FilmAd.TabIndex = 5;
            // 
            // VizyonTarih
            // 
            this.VizyonTarih.Location = new System.Drawing.Point(213, 159);
            this.VizyonTarih.Name = "VizyonTarih";
            this.VizyonTarih.Size = new System.Drawing.Size(100, 22);
            this.VizyonTarih.TabIndex = 6;
            // 
            // Konu
            // 
            this.Konu.Location = new System.Drawing.Point(213, 208);
            this.Konu.Name = "Konu";
            this.Konu.Size = new System.Drawing.Size(100, 22);
            this.Konu.TabIndex = 7;
            // 
            // filmTur
            // 
            this.filmTur.AutoSize = true;
            this.filmTur.Location = new System.Drawing.Point(74, 348);
            this.filmTur.Name = "filmTur";
            this.filmTur.Size = new System.Drawing.Size(34, 17);
            this.filmTur.TabIndex = 8;
            this.filmTur.Text = "Tür:";
            // 
            // Tur
            // 
            this.Tur.Location = new System.Drawing.Point(213, 343);
            this.Tur.Name = "Tur";
            this.Tur.Size = new System.Drawing.Size(100, 22);
            this.Tur.TabIndex = 9;
            // 
            // filmEkleButon
            // 
            this.filmEkleButon.Location = new System.Drawing.Point(222, 255);
            this.filmEkleButon.Name = "filmEkleButon";
            this.filmEkleButon.Size = new System.Drawing.Size(91, 49);
            this.filmEkleButon.TabIndex = 10;
            this.filmEkleButon.Text = "Ekle";
            this.filmEkleButon.UseVisualStyleBackColor = true;
            this.filmEkleButon.Click += new System.EventHandler(this.button1_Click);
            // 
            // TurEkleButon
            // 
            this.TurEkleButon.Location = new System.Drawing.Point(222, 390);
            this.TurEkleButon.Name = "TurEkleButon";
            this.TurEkleButon.Size = new System.Drawing.Size(91, 49);
            this.TurEkleButon.TabIndex = 11;
            this.TurEkleButon.Text = "Ekle";
            this.TurEkleButon.UseVisualStyleBackColor = true;
            // 
            // FilmEkle
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(407, 470);
            this.Controls.Add(this.TurEkleButon);
            this.Controls.Add(this.filmEkleButon);
            this.Controls.Add(this.Tur);
            this.Controls.Add(this.filmTur);
            this.Controls.Add(this.Konu);
            this.Controls.Add(this.VizyonTarih);
            this.Controls.Add(this.FilmAd);
            this.Controls.Add(this.filmID);
            this.Controls.Add(this.KonuLabel);
            this.Controls.Add(this.VizyonTarihLabel);
            this.Controls.Add(this.filmAdLabel);
            this.Controls.Add(this.filmIDLabel);
            this.Name = "FilmEkle";
            this.Text = "Film Ekle";
            this.Load += new System.EventHandler(this.FilmEkle_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label filmIDLabel;
        private System.Windows.Forms.Label filmAdLabel;
        private System.Windows.Forms.Label VizyonTarihLabel;
        private System.Windows.Forms.Label KonuLabel;
        private System.Windows.Forms.TextBox filmID;
        private System.Windows.Forms.TextBox FilmAd;
        private System.Windows.Forms.TextBox VizyonTarih;
        private System.Windows.Forms.TextBox Konu;
        private System.Windows.Forms.Label filmTur;
        private System.Windows.Forms.TextBox Tur;
        private System.Windows.Forms.Button filmEkleButon;
        private System.Windows.Forms.Button TurEkleButon;
    }
}