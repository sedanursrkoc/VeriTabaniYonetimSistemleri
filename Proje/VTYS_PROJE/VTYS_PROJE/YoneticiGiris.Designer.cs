namespace VTYS_PROJE
{
    partial class YoneticiGirisForm
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
            this.yoneticiGirilenSifre = new System.Windows.Forms.TextBox();
            this.yoneticiGirilenAd = new System.Windows.Forms.TextBox();
            this.yoneticiSifre = new System.Windows.Forms.Label();
            this.yoneticiAd = new System.Windows.Forms.Label();
            this.yoneticiGirisYapButon = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // yoneticiGirilenSifre
            // 
            this.yoneticiGirilenSifre.Location = new System.Drawing.Point(137, 82);
            this.yoneticiGirilenSifre.Name = "yoneticiGirilenSifre";
            this.yoneticiGirilenSifre.Size = new System.Drawing.Size(182, 22);
            this.yoneticiGirilenSifre.TabIndex = 9;
            // 
            // yoneticiGirilenAd
            // 
            this.yoneticiGirilenAd.Location = new System.Drawing.Point(137, 48);
            this.yoneticiGirilenAd.Name = "yoneticiGirilenAd";
            this.yoneticiGirilenAd.Size = new System.Drawing.Size(182, 22);
            this.yoneticiGirilenAd.TabIndex = 8;
            // 
            // yoneticiSifre
            // 
            this.yoneticiSifre.AutoSize = true;
            this.yoneticiSifre.Location = new System.Drawing.Point(65, 85);
            this.yoneticiSifre.Name = "yoneticiSifre";
            this.yoneticiSifre.Size = new System.Drawing.Size(45, 17);
            this.yoneticiSifre.TabIndex = 7;
            this.yoneticiSifre.Text = "Şifre: ";
            // 
            // yoneticiAd
            // 
            this.yoneticiAd.AutoSize = true;
            this.yoneticiAd.Location = new System.Drawing.Point(76, 53);
            this.yoneticiAd.Name = "yoneticiAd";
            this.yoneticiAd.Size = new System.Drawing.Size(35, 17);
            this.yoneticiAd.TabIndex = 6;
            this.yoneticiAd.Text = "AD: ";
            // 
            // yoneticiGirisYapButon
            // 
            this.yoneticiGirisYapButon.Location = new System.Drawing.Point(171, 130);
            this.yoneticiGirisYapButon.Name = "yoneticiGirisYapButon";
            this.yoneticiGirisYapButon.Size = new System.Drawing.Size(128, 50);
            this.yoneticiGirisYapButon.TabIndex = 5;
            this.yoneticiGirisYapButon.Text = "Giriş Yap";
            this.yoneticiGirisYapButon.UseVisualStyleBackColor = true;
            this.yoneticiGirisYapButon.Click += new System.EventHandler(this.yoneticiGirisYapButon_Click);
            // 
            // YoneticiGirisForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(421, 218);
            this.Controls.Add(this.yoneticiGirilenSifre);
            this.Controls.Add(this.yoneticiGirilenAd);
            this.Controls.Add(this.yoneticiSifre);
            this.Controls.Add(this.yoneticiAd);
            this.Controls.Add(this.yoneticiGirisYapButon);
            this.Name = "YoneticiGirisForm";
            this.Text = "Yönetici Giriş";
            this.Load += new System.EventHandler(this.YoneticiGirisForm_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox yoneticiGirilenSifre;
        private System.Windows.Forms.TextBox yoneticiGirilenAd;
        private System.Windows.Forms.Label yoneticiSifre;
        private System.Windows.Forms.Label yoneticiAd;
        private System.Windows.Forms.Button yoneticiGirisYapButon;
    }
}