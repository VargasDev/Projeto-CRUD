using System;
using System.Data;
using System.Web.UI;
using MySql.Data.MySqlClient;

namespace TrabalhoProg {

    public partial class Clientes : System.Web.UI.Page {

        public string strMySQL = "Server = localhost; User Id = root; database = lojaprogramada;";
        MySqlConnection conexao = new MySqlConnection();

        protected void Page_Load(object sender, EventArgs e) {

            if (!IsPostBack) {
                ClientList();
            }
        }

        protected void Button1_Click(object sender, EventArgs e) { //INSERT
            
            MySqlConnection conexao = new MySqlConnection(strMySQL);
            int CodNumber = int.Parse(TextBox1.Text);
            string EmpName = TextBox2.Text;
            string EmpEnd = TextBox3.Text;
            conexao.Open();
            MySqlCommand comando = new MySqlCommand
            ("INSERT INTO cliente VALUES('" + CodNumber + "','" + EmpName + "','" + EmpEnd + "')", conexao);
            comando.ExecuteNonQuery();
            conexao.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Saved');", true);
            ClientList();
        }
        void ClientList() {
            MySqlConnection conexao = new MySqlConnection(strMySQL);
            conexao.Open();
            MySqlCommand command = new MySqlCommand("select * from Cliente", conexao);
            MySqlDataAdapter sd = new MySqlDataAdapter(command);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e) {//UPDATE

            MySqlConnection conexao = new MySqlConnection(strMySQL);
            int CodNumber = int.Parse(TextBox1.Text);
            string EmpName = TextBox2.Text;
            string EmpEnd = TextBox3.Text;
            conexao.Open();
            MySqlCommand comando = new MySqlCommand
            ("UPDATE cliente SET NomeCli ='" + EmpName + "', EnderecoCli ='"+ EmpEnd + "'WHERE CodigoCli ='"+ CodNumber +"'", conexao);
            comando.ExecuteNonQuery();
            conexao.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Update');", true);
            ClientList();
        }

        protected void Button3_Click(object sender, EventArgs e) {//DELETE
            int CodNumber = int.Parse(TextBox1.Text);
            MySqlConnection conexao = new MySqlConnection(strMySQL);
            conexao.Open();
            MySqlCommand comando = new MySqlCommand
           ("DELETE FROM cliente WHERE CodigoCli ='" + CodNumber + "'", conexao);
            comando.ExecuteNonQuery();
            conexao.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Delete');", true);
            ClientList();
        }

        protected void Button4_Click(object sender, EventArgs e) {//GET
            int CodNumber = int.Parse(TextBox1.Text);
            MySqlConnection conexao = new MySqlConnection(strMySQL);
            conexao.Open();
            MySqlCommand command = new MySqlCommand("select * from Cliente WHERE CodigoCli ='" + CodNumber + "'", conexao);
            MySqlDataAdapter sd = new MySqlDataAdapter(command);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

    }
}