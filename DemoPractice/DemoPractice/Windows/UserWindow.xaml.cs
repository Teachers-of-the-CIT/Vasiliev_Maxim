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
using System.Windows.Shapes;

namespace DemoPractice.Windows
{
	/// <summary>
	/// Interaction logic for UserWindow.xaml
	/// </summary>
	public partial class UserWindow : Window
	{
		private DemoDataBaseTemplateEntities demoDataBaseTemplateEntities = new DemoDataBaseTemplateEntities();
		private Windows.AutorizeWindow window;

		public UserWindow()
		{
			InitializeComponent();

			DataGridProduct.ItemsSource = demoDataBaseTemplateEntities.Products.ToList();
		}

		private void Exit_Click(object sender, RoutedEventArgs e)
		{
			this.Close();
		}

		private void MainWindow_Click(object sender, RoutedEventArgs e)
		{
			if (window == null)
			{ 
				window = new AutorizeWindow();
				window.Show();
				this.Close();
			}
		}
	}
}
