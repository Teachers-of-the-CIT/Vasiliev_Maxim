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
	/// Interaction logic for Registration.xaml
	/// </summary>
	public partial class Registration : Window
	{
		private User user;
		private DemoDataBaseTemplateEntities demoDataBaseTemplateEntities;
		private Windows.AutorizeWindow autorizeWindow;
		private UserWindow userWindow;

		public Registration()
		{
			InitializeComponent();
		}

		private void Enter_PreviewMouseLeftButtonUp(object sender, MouseButtonEventArgs e)
		{
			if (autorizeWindow == null)
			{ 
				autorizeWindow = new AutorizeWindow();
				autorizeWindow.Show();
				this.Close();
			}
		}

		/// <summary>
		/// Зарегистрировать пользователя
		/// </summary>
		/// <param name="sender"></param>
		/// <param name="e"></param>
		private void Autorize_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
		{
			
		}

		private void EnterWithoutAccount_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
		{
			MessageBoxResult messageBoxResult = MessageBox.Show("Вы действительно хотите войти без авторизации?",
				"Enter",
				MessageBoxButton.YesNo,
				MessageBoxImage.Question,
				MessageBoxResult.No);

			if (messageBoxResult == MessageBoxResult.Yes)
			{
				if (userWindow == null)
				{ 
					userWindow = new UserWindow();
					userWindow.Show();
					userWindow.UserName.Text = "Неизвестный пользователь";
					this.Close();
				}
			}
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

			if (String.IsNullOrEmpty(SecondPassword.Text))
			{
				MessageBox.Show("Поле пароль должно быть заполнено");
				return;
			}

			if (String.IsNullOrEmpty(FCs.Text))
			{
				MessageBox.Show("Поле пароль должно быть заполнено");
				return;
			}

			if (PasswordText.Text != SecondPassword.Text)
			{
				MessageBox.Show("Пароли должны совпадать");
				return;
			}

			user = new User()
			{
				Role = "Клиент",
				Login = LoginText.Text,
				Pass = PasswordText.Text,
				FCs = FCs.Text
			};

			try
			{
				using (var entity = new DemoDataBaseTemplateEntities())
				{
					entity.Users.Add(user);
					entity.SaveChanges();
				}
			}
			catch
			{
				MessageBox.Show("При сохранении данных произошла ошибка");
			}

			MessageBox.Show("Пользователь зарегистрирован");

			if (autorizeWindow == null)
			{
				autorizeWindow = new AutorizeWindow();
				autorizeWindow.Show();
				this.Close();
			}
		}
	}
}
