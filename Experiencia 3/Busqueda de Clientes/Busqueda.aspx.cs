using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient; 
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PRACTICA_6
{
    public partial class Busqueda : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnBuscar_Click1(object sender, EventArgs e)
        {
            string connectionString = "Data Source = J3R3MY\\SQLEXPRESS;" + "Initial Catalog = VENTAS; Integrated Security = SSPI";
            lblResult.Text = "";
            string selectSQL = "SELECT * FROM clientes where codigo = " + txtCodigo.Text;
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(selectSQL, con);
            SqlDataReader dr;
            try
            {
                con.Open();
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    txtNombres.Text = dr[1].ToString();
                    txtDireccion.Text = dr["direccion"].ToString();
                    txtTelefono.Text = dr[3].ToString();
                    txtMail.Text = dr[4].ToString();
                    txtEdad.Text = dr[5].ToString();
                }
                con.Close();
                dr.Close();
            }
            catch (Exception err)
            {
                lblResult.Text = "Error al registrar el clientes";
                lblResult.Text += err.Message;
            }
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtCodigo.Text = "";
            txtNombres.Text = "";
            txtDireccion.Text = "";
            txtTelefono.Text = "";
            txtMail.Text = "";
            txtEdad.Text = "";
        }

        protected void btnMostrar_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source = J3R3MY\\SQLEXPRESS;" + "Initial Catalog = VENTAS; Integrated Security = SSPI";
            string selectSQL = "SELECT * FROM clientes";
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(selectSQL, con);
            SqlDataReader dr;
            try
            {
                con.Open();
                dr = cmd.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
                con.Close();
            }
            catch (Exception err)
            {
                lblResult.Text = "Error al registrar el clientes";
                lblResult.Text += err.Message;
            }
        }
    }
}