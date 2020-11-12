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
    public partial class KullaniciSil : Form
    {
        public KullaniciSil()
        {
            InitializeComponent();
        }


        private string connstring = String.Format("Server={0};Port={1};" +
                       "User Id={2};Password={3};Database={4}", "localhost", 5432, "postgres", "admin", "Film_Uygulamasi");
        private NpgsqlConnection conn6;
        private string sql;
        private NpgsqlCommand cmd;
        private DataTable dt;

        private void KullaniciSil_Load(object sender, EventArgs e)
        {
            conn6 = new NpgsqlConnection(connstring);
        }

        private void KullaniciSilButon_Click(object sender, EventArgs e)
        {
            try
            {
                conn6.Open();
                sql = @"SELECT*from kisi_sil(:kisiID)";
                cmd = new NpgsqlCommand(sql, conn6);

                cmd.Parameters.AddWithValue("kisiID",Convert.ToInt32(kullaniciID.Text));

                int result = (int)cmd.ExecuteScalar();

                conn6.Close();

                if (result == 1)
                {
                    this.Hide();
                }
                else
                {
                    MessageBox.Show("Hata!");
                    return;
                }
            }
            catch (Exception ex)
            {
                conn6.Close();
                MessageBox.Show("Error: " + ex.Message);
            }
        }
    }
}
