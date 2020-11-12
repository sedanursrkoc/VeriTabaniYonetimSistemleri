namespace VTYS_PROJE
{
    partial class KullaniciSil
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
            this.KullaniciSilButon = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.kullaniciID = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // KullaniciSilButon
            // 
            this.KullaniciSilButon.Location = new System.Drawing.Point(212, 131);
            this.KullaniciSilButon.Name = "KullaniciSilButon";
            this.KullaniciSilButon.Size = new System.Drawing.Size(80, 47);
            this.KullaniciSilButon.TabIndex = 0;
            this.KullaniciSilButon.Text = "Sil";
            this.KullaniciSilButon.UseVisualStyleBackColor = true;
            this.KullaniciSilButon.Click += new System.EventHandler(this.KullaniciSilButon_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(83, 78);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(81, 17);
            this.label1.TabIndex = 1;
            this.label1.Text = "Kullanıcı ID:";
            // 
            // kullaniciID
            // 
            this.kullaniciID.Location = new System.Drawing.Point(185, 78);
            this.kullaniciID.Name = "kullaniciID";
            this.kullaniciID.Size = new System.Drawing.Size(117, 22);
            this.kullaniciID.TabIndex = 2;
            // 
            // KullaniciSil
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(402, 227);
            this.Controls.Add(this.kullaniciID);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.KullaniciSilButon);
            this.Name = "KullaniciSil";
            this.Text = "Kullanıcı Sil";
            this.Load += new System.EventHandler(this.KullaniciSil_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button KullaniciSilButon;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox kullaniciID;
    }
}