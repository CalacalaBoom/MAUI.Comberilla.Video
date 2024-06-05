using CommunityToolkit.Maui.Alerts;
using MAUIComberilla.Datas;
using MAUIComberilla.Pages.Controls;
using MAUIComberilla.Services;
using MAUIComberilla.ViewModels;
using Microsoft.Maui;
using static System.Net.Mime.MediaTypeNames;
using Type = MAUIComberilla.Pages.Controls.Type;

namespace MAUIComberilla.Pages;

public partial class HomeView : ContentView
{
    private RestSharpService restSharpService => new RestSharpService();
    private HomeViewModel _viewModel;
    public HomeView()
    {
        InitializeComponent();
        _viewModel = new HomeViewModel(this);
        this.BindingContext = _viewModel;
        OnDataInitilazing();
    }

    private async Task OnDataInitilazing()
    {
        try
        {
            //加载推荐视频
            await LoadRecommendVideo();

            //获取最新视频
            await LoadNewestVideo();

            //加载分类
            await LoadType();
        }
        catch (Exception ex)
        {
            await MainThread.InvokeOnMainThreadAsync(async () => await Toast.Make(ex.Message).Show());
        }
    }

    /// <summary>
    /// 加载分类
    /// </summary>
    /// <returns></returns>
    /// <exception cref="NotImplementedException"></exception>
    private async Task LoadType()
    {
        TypeList.Clear();
        var dto = await restSharpService.GetAsync<RESTFulDto<List<MacType>>>($"Type/GetTypeList?type={StringHelper.type}");
        if ((bool)dto.Success)
        {
            foreach (var type in dto.Data)
            {
                var typeControl = new Type(type);
                TypeList.Add(typeControl);
            }
        }
    }

    /// <summary>
    /// 加载最新视频
    /// </summary>
    /// <returns></returns>
    /// <exception cref="NotImplementedException"></exception>
    private async Task LoadNewestVideo()
    {
        NewestList.Clear();
        var dto = await restSharpService.GetAsync<RESTFulDto<List<MacVod>>>($"Vod/GetLatestVideo?type={StringHelper.type}&pagenumber=1&pageSize=10");
        if ((bool)dto.Success)
        {
            foreach (var vod in dto.Data)
            {
                var video = new Video(vod);
                NewestList.Add(video);
            }
        }
    }

    /// <summary>
    /// 加载推荐视频
    /// </summary>
    /// <returns></returns>
    private async Task LoadRecommendVideo()
    {
        List<dynamic> temp = new List<dynamic>();
        var dto = await restSharpService.GetAsync<RESTFulDto<List<MacVod>>>($"Vod/GetRecommendVideo?type={StringHelper.type}");
        if ((bool)dto.Success)
        {
            _viewModel.recommendVods = dto.Data;
            foreach (var mac_vod in dto.Data)
            {
                dynamic carouselViewData = new
                {
                    Name = mac_vod.VodName,
                    Type = mac_vod.VodClass,
                    PicSource = ImageSource.FromUri(new Uri("http://123.60.48.68:8099/" + mac_vod.VodPic))
                };
                temp.Add(carouselViewData);
            }

            carouselView.ItemsSource = temp;
        };
    }

    private async void ContentView_Loaded(object sender, EventArgs e)
    {
        await LoadHistory();
    }

    private async Task LoadHistory()
    {
        HistoryList.Clear();
        using (DatabaseService db = new DatabaseService())
        {
            var query = $"select * from PlayHistory where type='{StringHelper.type}'";
            var histories = await db.QueryAsync(query);
            if (histories.Count == 0) return;
            histories = histories.OrderByDescending(o => o.time).ToList();
            foreach (var history in histories)
            {
                var control = new VideoPlayBackControl(history);
                HistoryList.Add(control);
            }
        }
    }
}