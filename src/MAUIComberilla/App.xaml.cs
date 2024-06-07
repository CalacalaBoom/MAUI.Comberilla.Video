using MAUIComberilla.Pages;
using MAUIComberilla.Services;

namespace MAUIComberilla
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();

            MainPage = new NavigationPage(new MainPage());
        }
    }
}
