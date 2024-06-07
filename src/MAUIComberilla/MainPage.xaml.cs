using CommunityToolkit.Maui.Views;
using MAUIComberilla.Pages;
using MAUIComberilla.Services;

namespace MAUIComberilla;

public partial class MainPage : ContentPage
{
	public MainPage()
	{
		InitializeComponent();

        Home_Tapped(null, null);
    }

    private void Home_Tapped(object sender, TappedEventArgs e)
    {
        //home选中样式
        homeimg.Source = ImageSource.FromFile("homeselected.png");
        homelb.TextColor = Color.FromArgb("#2D52FF");
        //search未选中样式
        searchimg.Source = ImageSource.FromFile("search.png");
        searchlb.TextColor = Color.FromArgb("#A9ABAD");

        framework.Children.Clear();
        framework.Children.Add(new HomeView());
    }
    private void Search_Tapped(object sender, TappedEventArgs e)
    {
        //search选中样式
        searchimg.Source = ImageSource.FromFile("searchselected.png");
        searchlb.TextColor = Color.FromArgb("#2D52FF");
        //home未选中样式
        homeimg.Source = ImageSource.FromFile("home.png");
        homelb.TextColor = Color.FromArgb("#A9ABAD");

        framework.Children.Clear();
        framework.Children.Add(new SearchView());
    }
}