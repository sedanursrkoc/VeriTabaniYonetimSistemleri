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
    public partial class YoneticiGirisForm : Form
    {
        public YoneticiGirisForm()
        {
            InitializeComponent();
        }

        private string connstring = String.Format("Server={0};Port={1};" +
                       "User Id={2};Password={3};Database={4}", "localhost", 5432, "postgres", "admin", "Film_Uygulamasi");
        private NpgsqlConnection conn2;
        private string sql;
        private NpgsqlCommand cmd;
        private DataTable dt;

        private void YoneticiGirisForm_Load(object sender, EventArgs e)
        {
            conn2 = new NpgsqlConnection(connstring);
        }

        private void yoneticiGirisYapButon_Click(object sender, EventArgs e)
        {
            try
            {
                conn2.Open();
                sql = @"SELECT*from u_giris(:ad,:sifre)";
                cmd = new NpgsqlCommand(sql, conn2);

                cmd.Parameters.AddWithValue("ad", yoneticiGirilenAd.Text);
                cmd.Parameters.AddWithValue("sifre", yoneticiGirilenSifre.Text);

                int result = (int)cmd.ExecuteScalar();

                conn2.Close();

                if (result == 1)
                {
                    this.Hide();
                    Yonetici yoneticiForm = new Yonetici();
                    yoneticiForm.yoneticiAd.Text = yoneticiGirilenAd.Text;
                    yoneticiForm.Show();
                }
                else
                {
                    MessageBox.Show("Kullanıcı adı ya da şifre hatalı!");
                    return;
                }

            }

            catch (Exception ex)
            {
                conn2.Close();
                MessageBox.Show("Error: " + ex.Message);
            }
        }
    }
}

