using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Npgsql;

namespace VTYS_PROJE
{
    public partial class FilmEkle : Form
    {
        public FilmEkle()
        {
            InitializeComponent();
        }

        private string connstring = String.Format("Server={0};Port={1};" +
                       "User Id={2};Password={3};Database={4}", "localhost", 5432, "postgres", "admin", "Film_Uygulamasi");
        private NpgsqlConnection conn5;
        private string sql;
        private NpgsqlCommand cmd;
        private DataTable dt;


        private void FilmEkle_Load(object sender, EventArgs e)
        {
            conn5 = new NpgsqlConnection(connstring);


        }

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                conn5.Open();
                sql = @"SELECT*from film_ekle(:filmAd, :filmID";
                cmd = new NpgsqlCommand(sql, conn5);

                cmd.Parameters.AddWithValue("filmAd", FilmAd.Text);
                cmd.Parameters.AddWithValue("filmID", Convert.ToInt32(filmID.Text));
                //cmd.Parameters.AddWithValue("filmKonu", Konu.Text);

                //cmd.Parameters.AddWithValue("vizyonTarihi", Convert.ToDateTime(VizyonTarih.Text));
                int result = (int)cmd.ExecuteScalar();

                conn5.Close();

                if (result == 1)
                {
                    this.Hide();
                    //Kullanici kullaniciForm = new Kullanici();
                    ////kullaniciForm.label1.Text = kullaniciGirilenAd.Text;
                    //kullaniciForm.Show();
                }
                else
                {
                    MessageBox.Show("Hata!");
                    return;
                }

            }

            catch (Exception ex)
            {
                conn5.Close();
                MessageBox.Show("Error: " + ex.Message);
            }
        }

    }
}
