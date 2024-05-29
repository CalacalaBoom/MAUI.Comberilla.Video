using MAUIComberilla.Datas;
using MAUIComberilla.Services;

namespace MAUIComberilla.Pages;

public partial class VideoDetailPage : ContentPage
{
	private MacVod _vod;
	private List<(string,string)> _urls = new List<(string,string)>();
	public VideoDetailPage(MacVod vod)
	{
		InitializeComponent();
		_vod = vod;

        _urls = StringHelper.SpitURL(_vod.VodPlayUrl);
		mediaElement.Source = _urls[0].Item2;

		Titlelb.Text = _vod.VodName;
		
        VodContentlb.Text = StringHelper.StringTruncat(_vod.VodContent, 15, "...更多");
	}

    private void TapGestureRecognizer_Tapped(object sender, TappedEventArgs e)
    {
		if (_vod != null)
		{
			if (_vod.VodContent.Length<=15)
			{
				return;
			}
			else
			{
				if (VodContentlb.Text.EndsWith("...更多"))
				{
					VodContentlb.Text = _vod.VodContent;
                }
				else
				{
                    VodContentlb.Text= StringHelper.StringTruncat(_vod.VodContent, 15, "...更多");
                }
			}
		}
    }
}