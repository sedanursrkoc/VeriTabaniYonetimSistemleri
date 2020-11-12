namespace VTYS_PROJE
{
    partial class Film
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
            this.filmVizyonTarihi = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.filmKonu = new System.Windows.Forms.Label();
            this.filmOylamaDeger = new System.Windows.Forms.Label();
            this.filmKonuIcerik = new System.Windows.Forms.Label();
            this.filmTur = new System.Windows.Forms.Label();
            this.oylamaYap = new System.Windows.Forms.Label();
            this.yorumlariGor = new System.Windows.Forms.Label();
            this.filmDurumLabel = new System.Windows.Forms.Label();
            this.filmDurum = new System.Windows.Forms.Label();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.dataGridView2 = new System.Windows.Forms.DataGridView();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView2)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(107, 35);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(49, 17);
            this.label1.TabIndex = 0;
            this.label1.Text = "film ad";
            // 
            // filmVizyonTarihi
            // 
            this.filmVizyonTarihi.AutoSize = true;
            this.filmVizyonTarihi.Location = new System.Drawing.Point(107, 123);
            this.filmVizyonTarihi.Name = "filmVizyonTarihi";
            this.filmVizyonTarihi.Size = new System.Drawing.Size(98, 17);
            this.filmVizyonTarihi.TabIndex = 5;
            this.filmVizyonTarihi.Text = "Vizyon Tarihi: ";
            this.filmVizyonTarihi.Visible = false;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(215, 121);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(46, 17);
            this.label2.TabIndex = 6;
            this.label2.Text = "label2";
            this.label2.Visible = false;
            // 
            // filmKonu
            // 
            this.filmKonu.AutoSize = true;
            this.filmKonu.Location = new System.Drawing.Point(110, 211);
            this.filmKonu.Name = "filmKonu";
            this.filmKonu.Size = new System.Drawing.Size(49, 17);
            this.filmKonu.TabIndex = 7;
            this.filmKonu.Text = "Konu: ";
            // 
            // filmOylamaDeger
            // 
            this.filmOylamaDeger.AutoSize = true;
            this.filmOylamaDeger.Location = new System.Drawing.Point(107, 78);
            this.filmOylamaDeger.Name = "filmOylamaDeger";
            this.filmOylamaDeger.Size = new System.Drawing.Size(16, 17);
            this.filmOylamaDeger.TabIndex = 8;
            this.filmOylamaDeger.Text = "0";
            this.filmOylamaDeger.Click += new System.EventHandler(this.filmOylamaDeger_Click);
            // 
            // filmKonuIcerik
            // 
            this.filmKonuIcerik.AutoSize = true;
            this.filmKonuIcerik.Location = new System.Drawing.Point(107, 256);
            this.filmKonuIcerik.Name = "filmKonuIcerik";
            this.filmKonuIcerik.Size = new System.Drawing.Size(39, 17);
            this.filmKonuIcerik.TabIndex = 9;
            this.filmKonuIcerik.Text = "konu";
            // 
            // filmTur
            // 
            this.filmTur.AutoSize = true;
            this.filmTur.Location = new System.Drawing.Point(110, 340);
            this.filmTur.Name = "filmTur";
            this.filmTur.Size = new System.Drawing.Size(34, 17);
            this.filmTur.TabIndex = 10;
            this.filmTur.Text = "Tür:";
            this.filmTur.Visible = false;
            // 
            // oylamaYap
            // 
            this.oylamaYap.AutoSize = true;
            this.oylamaYap.Location = new System.Drawing.Point(498, 78);
            this.oylamaYap.Name = "oylamaYap";
            this.oylamaYap.Size = new System.Drawing.Size(85, 17);
            this.oylamaYap.TabIndex = 11;
            this.oylamaYap.Text = "Oylama Yap";
            this.oylamaYap.Visible = false;
            // 
            // yorumlariGor
            // 
            this.yorumlariGor.AutoSize = true;
            this.yorumlariGor.Location = new System.Drawing.Point(498, 123);
            this.yorumlariGor.Name = "yorumlariGor";
            this.yorumlariGor.Size = new System.Drawing.Size(96, 17);
            this.yorumlariGor.TabIndex = 12;
            this.yorumlariGor.Text = "Yorumları Gor";
            this.yorumlariGor.Visible = false;
            // 
            // filmDurumLabel
            // 
            this.filmDurumLabel.AutoSize = true;
            this.filmDurumLabel.Location = new System.Drawing.Point(113, 166);
            this.filmDurumLabel.Name = "filmDurumLabel";
            this.filmDurumLabel.Size = new System.Drawing.Size(83, 17);
            this.filmDurumLabel.TabIndex = 13;
            this.filmDurumLabel.Text = "Film Durum:";
            // 
            // filmDurum
            // 
            this.filmDurum.AutoSize = true;
            this.filmDurum.Location = new System.Drawing.Point(215, 166);
            this.filmDurum.Name = "filmDurum";
            this.filmDurum.Size = new System.Drawing.Size(50, 17);
            this.filmDurum.TabIndex = 14;
            this.filmDurum.Text = "Durum";
            // 
            // dataGridView1
            // 
            this.dataGridView1.BackgroundColor = System.Drawing.SystemColors.ButtonFace;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(44, 166);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowHeadersWidth = 51;
            this.dataGridView1.RowTemplate.Height = 24;
            this.dataGridView1.Size = new System.Drawing.Size(596, 160);
            this.dataGridView1.TabIndex = 15;
            // 
            // dataGridView2
            // 
            this.dataGridView2.BackgroundColor = System.Drawing.SystemColors.ButtonFace;
            this.dataGridView2.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView2.Location = new System.Drawing.Point(44, 372);
            this.dataGridView2.Name = "dataGridView2";
            this.dataGridView2.RowHeadersWidth = 51;
            this.dataGridView2.RowTemplate.Height = 24;
            this.dataGridView2.Size = new System.Drawing.Size(596, 66);
            this.dataGridView2.TabIndex = 16;
            this.dataGridView2.Visible = false;
            // 
            // Film
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(694, 450);
            this.Controls.Add(this.dataGridView2);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.filmDurum);
            this.Controls.Add(this.filmDurumLabel);
            this.Controls.Add(this.yorumlariGor);
            this.Controls.Add(this.oylamaYap);
            this.Controls.Add(this.filmTur);
            this.Controls.Add(this.filmKonuIcerik);
            this.Controls.Add(this.filmOylamaDeger);
            this.Controls.Add(this.filmKonu);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.filmVizyonTarihi);
            this.Controls.Add(this.label1);
            this.Name = "Film";
            this.Text = "Film";
            this.Load += new System.EventHandler(this.Film_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView2)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Label filmVizyonTarihi;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label filmKonu;
        private System.Windows.Forms.Label filmOylamaDeger;
        private System.Windows.Forms.Label filmKonuIcerik;
        private System.Windows.Forms.Label filmTur;
        private System.Windows.Forms.Label oylamaYap;
        private System.Windows.Forms.Label yorumlariGor;
        private System.Windows.Forms.Label filmDurumLabel;
        private System.Windows.Forms.Label filmDurum;
        public System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.DataGridView dataGridView2;
    }
}