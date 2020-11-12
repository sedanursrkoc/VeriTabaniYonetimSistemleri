namespace VTYS_PROJE
{
    partial class Yonetici
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
            this.yoneticiAd = new System.Windows.Forms.Label();
            this.filmEkleButon = new System.Windows.Forms.Button();
            this.kullaniciSilButon = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // yoneticiAd
            // 
            this.yoneticiAd.AutoSize = true;
            this.yoneticiAd.Location = new System.Drawing.Point(69, 56);
            this.yoneticiAd.Name = "yoneticiAd";
            this.yoneticiAd.Size = new System.Drawing.Size(25, 17);
            this.yoneticiAd.TabIndex = 0;
            this.yoneticiAd.Text = "Ad";
            // 
            // filmEkleButon
            // 
            this.filmEkleButon.Location = new System.Drawing.Point(72, 132);
            this.filmEkleButon.Name = "filmEkleButon";
            this.filmEkleButon.Size = new System.Drawing.Size(113, 80);
            this.filmEkleButon.TabIndex = 1;
            this.filmEkleButon.Text = "Film Ekle";
            this.filmEkleButon.UseVisualStyleBackColor = true;
            this.filmEkleButon.Click += new System.EventHandler(this.filmEkleButon_Click);
            // 
            // kullaniciSilButon
            // 
            this.kullaniciSilButon.Location = new System.Drawing.Point(249, 136);
            this.kullaniciSilButon.Name = "kullaniciSilButon";
            this.kullaniciSilButon.Size = new System.Drawing.Size(113, 76);
            this.kullaniciSilButon.TabIndex = 2;
            this.kullaniciSilButon.Text = "Kullanıcı Sil";
            this.kullaniciSilButon.UseVisualStyleBackColor = true;
            this.kullaniciSilButon.Click += new System.EventHandler(this.kullaniciSilButon_Click);
            // 
            // Yonetici
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(454, 276);
            this.Controls.Add(this.kullaniciSilButon);
            this.Controls.Add(this.filmEkleButon);
            this.Controls.Add(this.yoneticiAd);
            this.Name = "Yonetici";
            this.Text = "Yonetici";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Button filmEkleButon;
        private System.Windows.Forms.Button kullaniciSilButon;
        public System.Windows.Forms.Label yoneticiAd;
    }
}