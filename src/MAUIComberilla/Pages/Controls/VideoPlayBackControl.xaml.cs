using MAUIComberilla.Datas;
using Newtonsoft.Json;

namespace MAUIComberilla.Pages.Controls;

public partial class VideoPlayBackControl : ContentView
{
    private MacVod _vod;
    public VideoPlayBackControl(PlayHistory history)
    {
        InitializeComponent();

        VodPic.Source = ImageSource.FromUri(new Uri("http://123.60.48.68:8099/" + history.picture));
        Titlelb.Text = history.name + "  " + history.location;

        Positionlb.Text = DateTime.Parse(history.position.ToString()).ToShortTimeString();
        Timelb.Text = history.time.ToShortDateString();

        var value = history.position.TotalSeconds / history.duration.TotalSeconds;
        PlayProgress.Progress = value;

        _vod = JsonConvert.DeserializeObject<MacVod>(history.macvod);
    }

    private async void ImageButton_Clicked(object sender, EventArgs e)
    {
        if (_vod != null)
        {
            await Navigation.PushAsync(new VideoDetailPage(_vod));
        }
    }
}