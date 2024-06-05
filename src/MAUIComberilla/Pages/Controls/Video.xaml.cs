using MAUIComberilla.Datas;

namespace MAUIComberilla.Pages.Controls;

public partial class Video : ContentView
{
    private MacVod _vod;
    public Video(MacVod vod)
    {
        InitializeComponent();
        _vod = vod;

        VideoPic.Source = ImageSource.FromUri(new Uri("http://123.60.48.68:8099/" + _vod.VodPic));
        Titlelb.Text = _vod.VodName;
        Classlb.Text = _vod.VodClass;
        Yearlb.Text = _vod.VodYear;
    }
}