namespace VTYS_PROJE
{
    partial class KullaniciGirisForm
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
            this.kullaniciGirilenAd = new System.Windows.Forms.TextBox();
            this.kullaniciAd = new System.Windows.Forms.Label();
            this.kullaniciGirisYapButon = new System.Windows.Forms.Button();
            this.kullaniciSifre = new System.Windows.Forms.Label();
            this.kullaniciGirilenSifre = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // kullaniciGirilenAd
            // 
            this.kullaniciGirilenAd.Location = new System.Drawing.Point(143, 46);
            this.kullaniciGirilenAd.Name = "kullaniciGirilenAd";
            this.kullaniciGirilenAd.Size = new System.Drawing.Size(182, 22);
            this.kullaniciGirilenAd.TabIndex = 14;
            // 
            // kullaniciAd
            // 
            this.kullaniciAd.AutoSize = true;
            this.kullaniciAd.Location = new System.Drawing.Point(81, 46);
            this.kullaniciAd.Name = "kullaniciAd";
            this.kullaniciAd.Size = new System.Drawing.Size(35, 17);
            this.kullaniciAd.TabIndex = 16;
            this.kullaniciAd.Text = "AD: ";
            // 
            // kullaniciGirisYapButon
            // 
            this.kullaniciGirisYapButon.Location = new System.Drawing.Point(183, 128);
            this.kullaniciGirisYapButon.Name = "kullaniciGirisYapButon";
            this.kullaniciGirisYapButon.Size = new System.Drawing.Size(128, 50);
            this.kullaniciGirisYapButon.TabIndex = 18;
            this.kullaniciGirisYapButon.Text = "Giriş Yap";
            this.kullaniciGirisYapButon.UseVisualStyleBackColor = true;
            this.kullaniciGirisYapButon.Click += new System.EventHandler(this.kullaniciGirisYapButon_Click);
            // 
            // kullaniciSifre
            // 
            this.kullaniciSifre.AutoSize = true;
            this.kullaniciSifre.Location = new System.Drawing.Point(71, 81);
            this.kullaniciSifre.Name = "kullaniciSifre";
            this.kullaniciSifre.Size = new System.Drawing.Size(45, 17);
            this.kullaniciSifre.TabIndex = 19;
            this.kullaniciSifre.Text = "Şifre: ";
            // 
            // kullaniciGirilenSifre
            // 
            this.kullaniciGirilenSifre.Location = new System.Drawing.Point(143, 81);
            this.kullaniciGirilenSifre.Name = "kullaniciGirilenSifre";
            this.kullaniciGirilenSifre.Size = new System.Drawing.Size(182, 22);
            this.kullaniciGirilenSifre.TabIndex = 20;
            // 
            // KullaniciGirisForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(419, 207);
            this.Controls.Add(this.kullaniciGirilenSifre);
            this.Controls.Add(this.kullaniciSifre);
            this.Controls.Add(this.kullaniciGirisYapButon);
            this.Controls.Add(this.kullaniciAd);
            this.Controls.Add(this.kullaniciGirilenAd);
            this.Name = "KullaniciGirisForm";
            this.Text = "Kullanıcı Giriş";
            this.Load += new System.EventHandler(this.KullaniciGirisForm_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox kullaniciGirilenAd;
        private System.Windows.Forms.Label kullaniciAd;
        private System.Windows.Forms.Button kullaniciGirisYapButon;
        private System.Windows.Forms.Label kullaniciSifre;
        private System.Windows.Forms.TextBox kullaniciGirilenSifre;
    }
}