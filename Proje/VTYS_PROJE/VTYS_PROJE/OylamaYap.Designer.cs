namespace VTYS_PROJE
{
    partial class OylamaYap
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
            this.oylamaDegeri = new System.Windows.Forms.TextBox();
            this.oylamaLabel = new System.Windows.Forms.Label();
            this.oylaButon = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // oylamaDegeri
            // 
            this.oylamaDegeri.Location = new System.Drawing.Point(215, 60);
            this.oylamaDegeri.Name = "oylamaDegeri";
            this.oylamaDegeri.Size = new System.Drawing.Size(100, 22);
            this.oylamaDegeri.TabIndex = 0;
            // 
            // oylamaLabel
            // 
            this.oylamaLabel.AutoSize = true;
            this.oylamaLabel.Location = new System.Drawing.Point(70, 60);
            this.oylamaLabel.Name = "oylamaLabel";
            this.oylamaLabel.Size = new System.Drawing.Size(106, 17);
            this.oylamaLabel.TabIndex = 1;
            this.oylamaLabel.Text = "Oylama Değeri:";
            // 
            // oylaButon
            // 
            this.oylaButon.Location = new System.Drawing.Point(240, 113);
            this.oylaButon.Name = "oylaButon";
            this.oylaButon.Size = new System.Drawing.Size(75, 45);
            this.oylaButon.TabIndex = 2;
            this.oylaButon.Text = "Oyla";
            this.oylaButon.UseVisualStyleBackColor = true;
            // 
            // OylamaYap
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(398, 201);
            this.Controls.Add(this.oylaButon);
            this.Controls.Add(this.oylamaLabel);
            this.Controls.Add(this.oylamaDegeri);
            this.Name = "OylamaYap";
            this.Text = "Oylama Yap";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox oylamaDegeri;
        private System.Windows.Forms.Label oylamaLabel;
        private System.Windows.Forms.Button oylaButon;
    }
}