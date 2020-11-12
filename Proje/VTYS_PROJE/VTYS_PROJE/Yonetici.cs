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
    public partial class Yonetici : Form
    {
        public Yonetici()
        {
            InitializeComponent();
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void filmEkleButon_Click(object sender, EventArgs e)
        {
            FilmEkle filmEkleForm = new FilmEkle();
            filmEkleForm.Show();
        }

        private void kullaniciSilButon_Click(object sender, EventArgs e)
        {
            KullaniciSil kullaniciSilForm = new KullaniciSil();
            kullaniciSilForm.Show();
        }
    }
}
