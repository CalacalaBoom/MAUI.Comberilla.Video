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

            //�����Ƽ���Ƶ
            await LoadRecommendVideo();

            //��ȡ������Ƶ
            await LoadNewestVideo();

            //���ط���
            await LoadType();
        }
        catch (Exception ex)
        {
            await MainThread.InvokeOnMainThreadAsync(async () => await Toast.Make(ex.Message).Show());
        }
    }

    /// <summary>
    /// ���ط���
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
    /// ����������Ƶ
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
    /// �����Ƽ���Ƶ
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
    /// ���ز�����ʷ
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

            await MainThread.InvokeOnMainThreadAsync(async () => await Toast.Make("����ģʽ���˳������������Ч").Show());


        }

        tapcount++;
        if (tapcount >= 5)
        {
            await MainThread.InvokeOnMainThreadAsync(async () => await Toast.Make("���Ѿ����" + tapcount + "��,�����ٵ��ţ�").Show());
        }

        if (tapcount >= 10)
        {
            tapcount = 0;

            using (DatabaseService db = new DatabaseService())
            {
                await db.InsertOrReplaceAsync(new ApiTyoe() { type = "h" });
            }

            await MainThread.InvokeOnMainThreadAsync(async () => await Toast.Make("���Ѿ���������ģʽ�����������Ч").Show());
        }
    }
}