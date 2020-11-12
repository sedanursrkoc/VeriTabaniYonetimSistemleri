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
    public partial class Film : Form
    {
        public Film()
        {
            InitializeComponent();
        }

        private string connstring = String.Format("Server={0};Port={1};" +
                      "User Id={2};Password={3};Database={4}", "localhost", 5432, "postgres", "admin", "Film_Uygulamasi");
        private NpgsqlConnection conn4;
        private string sql;
        private NpgsqlCommand cmd;
        private DataTable dt;
        private int rowIndex = -1;

        private void Film_Load(object sender, EventArgs e)
        {
            conn4 = new NpgsqlConnection(connstring);

            try
            {
                conn4.Open();
                sql = @"SELECT * FROM film";
                cmd = new NpgsqlCommand(sql, conn4);
                dt = new DataTable();
                dt.Load(cmd.ExecuteReader());

                conn4.Close();
                dataGridView1.DataSource = null;
                dataGridView1.DataSource = dt;

            }
            catch (Exception ex)
            {
                conn4.Close();
                MessageBox.Show("Error: " + ex.Message);
            }

            //filmVizyonTarihi.Text = dataGridView1[e.rowIndex].Cells["vizyonTarihi"].Value.ToString();
}

        private void filmOylamaDeger_Click(object sender, EventArgs e)
        {
            
        }
    }
}
