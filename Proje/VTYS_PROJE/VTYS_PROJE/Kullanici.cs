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
    public partial class Kullanici : Form
    {
        public Kullanici()
        {
            InitializeComponent();
        }

        private string connstring = String.Format("Server={0};Port={1};" +
                       "User Id={2};Password={3};Database={4}", "localhost", 5432, "postgres", "admin", "Film_Uygulamasi");
        private NpgsqlConnection conn3;
        private string sql;
        private NpgsqlCommand cmd;
        private DataTable dt;
        private void Kullanici_Load(object sender, EventArgs e)
        {
            conn3 = new NpgsqlConnection(connstring);
        }

        private void kullaniciFilmAraButon_Click(object sender, EventArgs e)
        {
            try
            {
                conn3.Open();
                sql = @"SELECT*from film_ara(:filmAd)";
                cmd = new NpgsqlCommand(sql, conn3);

                cmd.Parameters.AddWithValue("filmAd", textBox1.Text);

                int result = (int)cmd.ExecuteScalar();

                conn3.Close();

                if (result == 1)
                {
                    this.Hide();
                    Film FilmForm = new Film();
                    FilmForm.label1.Text = textBox1.Text;
                    FilmForm.Show();
                }
                else
                {
                    MessageBox.Show("Film Bulunamadı!");
                    return;
                }
            }
            catch (Exception ex)
            {
                conn3.Close();
                MessageBox.Show("Error: " + ex.Message);
            }
        }
    }
}
