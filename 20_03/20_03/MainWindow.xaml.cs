using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Data.Entity.Migrations;

namespace _20_03
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        Conexao conexao = new Conexao();
        List<Usuario> listaUsuarios;
        Usuario usu = new Usuario();
        public MainWindow()
        {
            InitializeComponent();
        }

        private void txtid_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void btnnovo_Click(object sender, RoutedEventArgs e)
        {     
            txtnome.Focus();
            limpaCampos();
        }

        private void btnexcluir_Click(object sender, RoutedEventArgs e)
        {
            usu = conexao.Usuario.Remove(usu);
            limpaCampos();
            usu.nome= null;
            usu.email=null;
            usu.senha=null;
            
            conexao.SaveChanges();
            populaGrid();


        }

        private void btnsair_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        

        private void btnpesquisar_Click(object sender, RoutedEventArgs e)
        {
            if (txtid.Text != "") {

               usu =  conexao.Usuario.Find(int.Parse(txtid.Text));
                limpaCampos();

                txtnome.Text = usu.nome;
                txtemail.Text = usu.email;
                passwordBox.Password = usu.senha;

            }
        }

        public void limpaCampos()
        {
            txtid.Clear();
            txtemail.Clear();
            txtnome.Clear();
            passwordBox.Clear();
        }

        private void Grid_Initialized(object sender, EventArgs e)
        {
            populaGrid();
        }

        public void populaGrid()
        {
            listaUsuarios = conexao.Usuario.ToList();
            dgUsuarios.ItemsSource = null;
            dgUsuarios.ItemsSource = listaUsuarios;
        }

        private void btnSalvar_Click(object sender, RoutedEventArgs e)
        {
            usu.nome = txtnome.Text;
            usu.email = txtemail.Text;
            usu.senha = passwordBox.Password;

            conexao.Usuario.AddOrUpdate(usu);
            conexao.SaveChanges();

            txtid.Text = usu.id.ToString();
            populaGrid();
        }
    }
}
