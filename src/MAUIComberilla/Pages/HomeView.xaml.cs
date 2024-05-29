using Android.Telephony.Data;
using AndroidX.Lifecycle;
using CommunityToolkit.Maui.Alerts;
using MAUIComberilla.Datas;
using MAUIComberilla.Services;
using MAUIComberilla.ViewModels;
using Microsoft.Maui;
using static Java.Util.Jar.Attributes;
using static System.Net.Mime.MediaTypeNames;

namespace MAUIComberilla.Pages;

public partial class HomeView : ContentView
{
    private RestSharpService restSharpService => new RestSharpService();
    private HomeViewModel _viewModel;
    public HomeView()
    {
        InitializeComponent();
        _viewModel = new HomeViewModel(this);
        this.BindingContext= _viewModel;
        OnDataInitilazing();
    }

    private async Task OnDataInitilazing()
    {
        try
        {
            List<dynamic> temp = new List<dynamic>();
            var dto = await restSharpService.GetAsync<RESTFulDto<List<MacVod>>>($"Vod/GetRecommendVideo?type=normal");
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
        catch (Exception ex)
        {
            await MainThread.InvokeOnMainThreadAsync(async () => await Toast.Make(ex.Message).Show());
        }
    }
}