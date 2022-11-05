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
	/// Interaction logic for AutorizeWindow.xaml
	/// </summary>
	public partial class AutorizeWindow : Window
	{
		private Windows.Registration registration;
		private Windows.UserWindow userWindow;
		private Windows.AdminWindow adminWindow;
		private Windows.ModeratorWindow moderatorWindow;
		private User user;

		public AutorizeWindow()
		{
			InitializeComponent();
		}

		private void Autorize_Click(object sender, RoutedEventArgs e)
		{
			if (String.IsNullOrEmpty(LoginText.Text))
			{
				MessageBox.Show("Поле логин должно быть заполнено");
				return;
			}

			if (String.IsNullOrEmpty(PasswordText.Text))
			{
				MessageBox.Show("Поле пароль должно быть заполнено");
				return;
			}

			using (var entity = new DemoDataBaseTemplateEntities())
			{
				foreach (var item in entity.Users)
				{
					if (LoginText.Text.Trim() == item.Login.Trim())
					{
						if (PasswordText.Text.Trim() == item.Pass.Trim())
						{
							user = item;
						}
					}
				}

				if (user != null)
				{

					if (user.Role.Trim() == "Администратор")
					{
						if (adminWindow == null)
						{
							adminWindow = new AdminWindow();
							adminWindow.Show();
							adminWindow.UserName.Text = user.FCs.ToString();

							this.Close();
						}
					}
					else if (user.Role == "Модератор")
					{
						if (moderatorWindow == null)
						{
							moderatorWindow = new ModeratorWindow();
							moderatorWindow.Show();
							moderatorWindow.UserName.Text = user.FCs.ToString();

							this.Close();
						}
					}

					if (userWindow == null)
					{
						userWindow = new UserWindow();
						userWindow.Show();
						userWindow.UserName.Text = user.FCs.ToString();
						MessageBox.Show("Успешный вход");

						this.Close();
					}
				}
				else
				{
					MessageBox.Show("Неправильный логин или пароль");
				}
			}
		}

		private void Registration_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
		{
			if (registration == null)
			{
				registration = new Windows.Registration();
				registration.Show();
				this.Close();
			}
		}

		private void Enter_PreviewMouseLeftButtonUp(object sender, MouseButtonEventArgs e)
		{
			if (userWindow == null)
			{
				userWindow = new Windows.UserWindow();
				userWindow.Show();
				userWindow.UserName.Text = "Неизвестный пользоваетль";
				this.Close();
			}
		}
	}
}
