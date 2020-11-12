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
    public partial class KullaniciGirisForm : Form
    {
        public KullaniciGirisForm()
        {
            InitializeComponent();
        }


        private string connstring = String.Format("Server={0};Port={1};" +
                        "User Id={2};Password={3};Database={4}", "localhost", 5432, "postgres", "admin", "Film_Uygulamasi");
        private NpgsqlConnection conn;
        private string sql;
        private NpgsqlCommand cmd;
        private DataTable dt;


        private void KullaniciGirisForm_Load(object sender, EventArgs e)
        {
            conn = new NpgsqlConnection(connstring);
        }

        private void kullaniciGirisYapButon_Click(object sender, EventArgs e)
        {
            
            try
            {
                conn.Open();
                sql = @"SELECT*from u_giris(:ad,:sifre)";
                cmd = new NpgsqlCommand(sql, conn);

                cmd.Parameters.AddWithValue("ad",kullaniciGirilenAd.Text);
                cmd.Parameters.AddWithValue("sifre", kullaniciGirilenSifre.Text);

                int result = (int)cmd.ExecuteScalar();

                conn.Close();

                if (result == 1)
                {
                    this.Hide();
                    Kullanici kullaniciForm = new Kullanici();
                    kullaniciForm.label1.Text = kullaniciGirilenAd.Text;
                    kullaniciForm.Show();
                }
                else
                {
                    MessageBox.Show("Kullanıcı adı ya da şifre hatalı!");
                    return;
                }

            }

            catch (Exception ex)
            {
                conn.Close();
                MessageBox.Show("Error: " + ex.Message);
            }
            }
        }
}
