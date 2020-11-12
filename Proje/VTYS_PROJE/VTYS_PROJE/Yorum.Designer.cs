namespace VTYS_PROJE
{
    partial class Yorum
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
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.yorumGonder = new System.Windows.Forms.Button();
            this.yorumYapLabel = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(51, 251);
            this.textBox1.Multiline = true;
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(635, 75);
            this.textBox1.TabIndex = 0;
            this.textBox1.TextChanged += new System.EventHandler(this.textBox1_TextChanged);
            // 
            // yorumGonder
            // 
            this.yorumGonder.Location = new System.Drawing.Point(582, 350);
            this.yorumGonder.Name = "yorumGonder";
            this.yorumGonder.Size = new System.Drawing.Size(104, 41);
            this.yorumGonder.TabIndex = 1;
            this.yorumGonder.Text = "Gönder";
            this.yorumGonder.UseVisualStyleBackColor = true;
            // 
            // yorumYapLabel
            // 
            this.yorumYapLabel.AutoSize = true;
            this.yorumYapLabel.Location = new System.Drawing.Point(48, 221);
            this.yorumYapLabel.Name = "yorumYapLabel";
            this.yorumYapLabel.Size = new System.Drawing.Size(82, 17);
            this.yorumYapLabel.TabIndex = 2;
            this.yorumYapLabel.Text = "Yorum Yap:";
            // 
            // Yorum
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(745, 403);
            this.Controls.Add(this.yorumYapLabel);
            this.Controls.Add(this.yorumGonder);
            this.Controls.Add(this.textBox1);
            this.Name = "Yorum";
            this.Text = "Yorum";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Button yorumGonder;
        private System.Windows.Forms.Label yorumYapLabel;
    }
}