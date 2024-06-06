using CommunityToolkit.Maui.Alerts;
using CommunityToolkit.Mvvm.Messaging;
using MAUIComberilla.Datas;
using MAUIComberilla.Messages;
using MAUIComberilla.Services;
using Newtonsoft.Json;
using System;

namespace MAUIComberilla.Pages;

public partial class VideoDetailPage : ContentPage
{
    private RestSharpService restSharpService => new RestSharpService();
    private MacVod _vod;
    private List<(string, string)> _urls = new List<(string, string)>();
    private string _location = "";
    public VideoDetailPage(MacVod vod)
    {
        InitializeComponent();
        _vod = vod;

        _urls = StringHelper.SpitURL(_vod.VodPlayUrl);

        Titlelb.Text = _vod.VodName;

        VodContentlb.Text = StringHelper.StringTruncat(_vod.VodContent, 15, "...更多");

        WeakReferenceMessenger.Default.Register<NormalScreenMessage>(this, async (r, m) =>
        {
            PlayHistory history = new PlayHistory()
            {
                vod_id = _vod.VodId.ToString(),
                name = _vod.VodName,
                playing_url = _vod.VodPlayUrl,
                position = mediaElement.Position,
                duration = mediaElement.Duration,
                location = _location,
                picture = _vod.VodPic,
                time = DateTime.Now,
                type = StringHelper.type,
                macvod=JsonConvert.SerializeObject(_vod)
            };

            using (DatabaseService db = new DatabaseService())
            {
                await db.InsertOrReplaceAsync(history);
            }
        });
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
                var pre = dto.Data;
                var url = pre + mediaElement.Source.ToString().Replace("Uri:", "");
                await Browser.Default.OpenAsync(url, BrowserLaunchMode.SystemPreferred);
                mediaElement.Pause();
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
            var url = mediaElement.Source.ToString().Replace("Uri:", "");
            var fullscreen = new FullScreenPlayPage(url, mediaElement.Position, _vod, _location);
            await Navigation.PushAsync(fullscreen);
            // Stop and cleanup MediaElement when we navigate away
            mediaElement.Handler?.DisconnectHandler();
            Navigation.RemovePage(this);
        }
        catch (Exception ex)
        {
            await MainThread.InvokeOnMainThreadAsync(async () => await Toast.Make(ex.Message).Show());
        }
    }


    protected override void OnDisappearing()
    {
        WeakReferenceMessenger.Default.Send(new NormalScreenMessage("NormalNavigationBar"));
    }

    private void ContentPage_Unloaded(object sender, EventArgs e)
    {
        // Stop and cleanup MediaElement when we navigate away
        mediaElement.Handler?.DisconnectHandler();
    }

    private async void ContentPage_Loaded(object sender, EventArgs e)
    {
        LoadURLs();

        using (DatabaseService db = new DatabaseService())
        {
            string query = $"select * from PlayHistory where vod_id='{_vod.VodId}'";
            var histories = await db.QueryAsync(query);
            var history = histories.FirstOrDefault();
            if (history != null)
            {

                var playinfo = _urls.FirstOrDefault(s => s.Item1 == history.location);
                _location = playinfo.Item1;
                mediaElement.Source = playinfo.Item2;
                await mediaElement.SeekTo((TimeSpan)(history.position));
                PlayLocationlb.Text = _location;
            }
            else
            {
                _location = _urls[0].Item1;
                mediaElement.Source = _urls[0].Item2;
                PlayLocationlb.Text = _location;
            }
        }
    }

    private void LoadURLs()
    {
        List<dynamic> datas = new List<dynamic>();
        foreach (var url in _urls)
        {
            datas.Add(new { Location = url.Item1, Url = url.Item2 });
        }

        URLs.ItemsSource = datas;
    }

    private void URL_Clicked(object sender, EventArgs e)
    {
        Button button = sender as Button;
        if (button != null)
        {
            var url = button.CommandParameter.ToString();

            _location = button.Text;
            mediaElement.Source = url;
            button.TextColor=Colors.Gray;

            PlayLocationlb.Text = _location;
        }
    }
}