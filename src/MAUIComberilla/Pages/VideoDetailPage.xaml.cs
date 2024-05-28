using MAUIComberilla.Datas;
using MAUIComberilla.Services;

namespace MAUIComberilla.Pages;

public partial class VideoDetailPage : ContentPage
{
	private MacVod _vod;
	public VideoDetailPage(MacVod vod)
	{
		InitializeComponent();
		_vod = vod;

		var urls = StringHelper.SpitURL(_vod.VodPlayUrl);
		mediaElement.Source = urls[0].Item2;
	}

}