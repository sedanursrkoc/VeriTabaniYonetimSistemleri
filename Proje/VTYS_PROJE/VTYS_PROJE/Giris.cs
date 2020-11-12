using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace VTYS_PROJE
{
    public partial class Giris : Form
    {
        public Giris()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {
           YoneticiGirisForm yoneticiform = new YoneticiGirisForm();
            yoneticiform.Show();
        }

        private void label2_Click(object sender, EventArgs e)
        {
            KullaniciGirisForm kullaniciform = new KullaniciGirisForm();
            kullaniciform.Show();
        }
    }
}
