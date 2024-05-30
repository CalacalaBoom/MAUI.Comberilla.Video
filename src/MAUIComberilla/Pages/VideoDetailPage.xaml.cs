using CommunityToolkit.Maui.Alerts;
using MAUIComberilla.Datas;
using MAUIComberilla.Services;
using System;

namespace MAUIComberilla.Pages;

public partial class VideoDetailPage : ContentPage
{
    private RestSharpService restSharpService => new RestSharpService();
    private MacVod _vod;
    private List<(string, string)> _urls = new List<(string, string)>();
    public VideoDetailPage(MacVod vod)
    {
        InitializeComponent();
        _vod = vod;

        _urls = StringHelper.SpitURL(_vod.VodPlayUrl);
        mediaElement.Source = _urls[0].Item2;

        Titlelb.Text = _vod.VodName;

        VodContentlb.Text = StringHelper.StringTruncat(_vod.VodContent, 15, "...更多");
    }

    private void VodContent_Tapped(object sender, TappedEventArgs e)
    {
        if (_vod != null)
        {
            if (_vod.VodContent.Length <= 15)
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
                    VodContentlb.Text = StringHelper.StringTruncat(_vod.VodContent, 15, "...更多");
                }
            }
        }
    }

    private async void Pop_Clicked(object sender, EventArgs e)
    {
        await Navigation.PopAsync();
    }

    private async void Webborwser_ClickedAsync(object sender, EventArgs e)
    {
        try
        {
            var dto = await restSharpService.GetAsync<RESTFulDto<string>>($"PlayPre/GetM3u8Pre?playfrom={_vod.VodPlayFrom}");
            if ((bool)dto.Success)
            {
                var pre=dto.Data;
                var url=pre + mediaElement.Source.ToString().Replace("Uri:","");
                await Browser.Default.OpenAsync(url, BrowserLaunchMode.SystemPreferred);
            }
        }
        catch (Exception ex)
        {
            await MainThread.InvokeOnMainThreadAsync(async () => await Toast.Make(ex.Message).Show());
        }
    }

    private async void Fullscreen_Clicked(object sender, EventArgs e)
    {
        try
        {
            var url= mediaElement.Source.ToString().Replace("Uri:", "");
            var fullscreen = new FullScreenPlayPage(url,mediaElement.Position,Fullretrun);
            await Navigation.PushAsync(fullscreen);
            mediaElement.Pause();
        }
        catch (Exception ex)
        {
            await MainThread.InvokeOnMainThreadAsync(async () => await Toast.Make(ex.Message).Show());
        }
    }

    private async void Fullretrun(TimeSpan position)
    {
        await mediaElement.SeekTo(position);
        mediaElement.Play();
    }

    private void ContentPage_Unloaded(object sender, EventArgs e)
    {
        
        // Stop and cleanup MediaElement when we navigate away
        mediaElement.Handler?.DisconnectHandler();
    }
}