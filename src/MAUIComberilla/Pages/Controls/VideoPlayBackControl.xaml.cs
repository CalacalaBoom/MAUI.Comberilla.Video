using MAUIComberilla.Datas;

namespace MAUIComberilla.Pages.Controls;

public partial class VideoPlayBackControl : ContentView
{
	public VideoPlayBackControl(PlayHistory history)
	{
		InitializeComponent();

		VodPic.Source = ImageSource.FromUri(new Uri("http://123.60.48.68:8099/" + history.picture));
		Titlelb.Text = history.name;
	}
}