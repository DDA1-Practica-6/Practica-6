using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PRACTICA_6
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        string connectionString = "Data Source = J3R3MY\\SQLEXPRESS;" +  "Initial Catalog = VENTAS; Integrated Security = SSPI";
        protected void Page_Load(object sender, EventArgs e)   {           }

        protected void btnGrabar_Click(object sender, EventArgs e)
        {
            //aborta si la pagina no es valida
            if (!this.IsValid) return;

            string insertSQL = "INSERT INTO CLIENTES VALUES (" +
                txtCodigo.Text + ", '" + txtNombres.Text + "' , '" +
                txtDireccion.Text + "', '" + txtTelefono.Text + "' , '"+
                txtMail.Text + "' , " + txtEdad.Text + ") ;";
            SqlConnection con = new SqlConnection (connectionString);
            SqlCommand cmd = new SqlCommand (insertSQL, con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                lblResult.Text = "Cliente registrado con éxito";
                con.Close();
                txtCodigo.Text = "";
                txtNombres.Text = "";
                txtDireccion.Text = "";
                txtTelefono.Text = "";
                txtMail.Text = "";
                txtEdad.Text = "";
            }
            catch (Exception err)
            {
                lblResult.Text = "Error al registrar el cliente ";
                lblResult.Text += err.Message;
            }
        }
    }
}