using MAUIComberilla.Datas;

namespace MAUIComberilla.Pages.Controls;

public partial class Type : ContentView
{
	private MacType _type;
	public Type(MacType type)
	{
		InitializeComponent();
		_type = type;

		TypePic.Source = ImageSource.FromUri(new Uri("http://123.60.48.68:8099/" + _type.TypePic));
		TypeNamelb.Text = _type.TypeName;
	}

    private async void TapGestureRecognizer_Tapped(object sender, TappedEventArgs e)
    {
		await Navigation.PushAsync(new VideoListPage(_type));
    }

}