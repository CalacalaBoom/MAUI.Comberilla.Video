using CommunityToolkit.Maui.Alerts;
using CommunityToolkit.Maui.Layouts;
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
    }

    private async Task OnDataInitilazing()
    {
        try
        {
            using (DatabaseService db = new DatabaseService())
            {
                var models = await db.ApiTyoeQueryAsync("select * from ApiTyoe");
                var model = models[0];
                StringHelper.type = model.type;
            }

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
        _viewModel.State = 1;

        await OnDataInitilazing();
        await LoadHistory();

        _viewModel.State = 0;
    }
    /// <summary>
    /// 加载播放历史
    /// </summary>
    /// <returns></returns>
    private async Task LoadHistory()
    {
        HistoryList.Clear();
        using (DatabaseService db = new DatabaseService())
        {
            var query = $"select * from PlayHistory where type='{StringHelper.type}'";
            var histories = await db.QueryAsync(query);
            if (histories.Count == 0) return;
            histories = histories.OrderByDescending(o => o.time).Take(10).ToList();
            foreach (var history in histories)
            {
                var control = new VideoPlayBackControl(history);
                HistoryList.Add(control);
            }
        }
    }

    int tapcount = 0;
    private async void TapGestureRecognizer_Tapped(object sender, TappedEventArgs e)
    {
        if (StringHelper.type == "h")
        {
            using (DatabaseService db = new DatabaseService())
            {
                var models = await db.ApiTyoeQueryAsync("select * from ApiTyoe");
                var model = models[0];
                model.type = "normal";
                await db.InsertOrReplaceAsync(model);
            }

            await MainThread.InvokeOnMainThreadAsync(async () => await Toast.Make("隐藏模式已退出，重启软件生效").Show());


        }

        tapcount++;
        if (tapcount >= 5)
        {
            await MainThread.InvokeOnMainThreadAsync(async () => await Toast.Make("您已经点击" + tapcount + "次,不能再点呐！").Show());
        }

        if (tapcount >= 10)
        {
            tapcount = 0;

            using (DatabaseService db = new DatabaseService())
            {
                await db.InsertOrReplaceAsync(new ApiTyoe() { type = "h" });
            }

            await MainThread.InvokeOnMainThreadAsync(async () => await Toast.Make("您已经处于隐藏模式，重启软件生效").Show());
        }
    }
}