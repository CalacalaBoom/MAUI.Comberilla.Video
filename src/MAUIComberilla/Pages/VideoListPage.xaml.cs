using CommunityToolkit.Maui.Alerts;
using MAUIComberilla.Datas;
using MAUIComberilla.Pages.Controls;
using MAUIComberilla.Services;
using System.Collections.Generic;

namespace MAUIComberilla.Pages;

public partial class VideoListPage : ContentPage
{
    private RestSharpService restSharpService => new RestSharpService();

    private MacType _type;

    private int _pagenumber = 1;

    private string flag;
    public VideoListPage(MacType type)
    {
        InitializeComponent();
        _type = type;
        flag = "type";

        PageTitlelb.Text = _type.TypeName.ToString();
    }

    private async void Pop_Clicked(object sender, EventArgs e)
    {
        await Navigation.PopAsync();
    }

    private async void ContentView_Loaded(object sender, EventArgs e)
    {
        try
        {
            switch (flag)
            {
                case "type":
                    await LoadTypeVideoList(1);
                    break;
                default:
                    break;
            }
        }
        catch (Exception ex)
        {
            await MainThread.InvokeOnMainThreadAsync(async () => await Toast.Make(ex.Message).Show());
        }
    }

    /// <summary>
    /// 加载分类视频列表
    /// </summary>
    /// <returns></returns>
    /// <exception cref="NotImplementedException"></exception>
    private async Task LoadTypeVideoList(int pagenumber)
    {
        var dto = await restSharpService.GetAsync<RESTFulDto<List<MacVod>>>($"Vod/GetTypeVideo?typeid={_type.TypeId}&pagenumber={pagenumber}&pageSize=20");
        if ((bool)dto.Success)
        {
            _pagenumber = pagenumber;
            VideoList.Clear();
            foreach (var vod in dto.Data)
            {
                var video = new Video(vod);
                video.Margin = new Thickness(0,10,0,0);
                VideoList.Add(video);
            }
        }
    }
}