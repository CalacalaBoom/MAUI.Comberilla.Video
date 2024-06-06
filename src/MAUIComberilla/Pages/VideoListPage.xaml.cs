using CommunityToolkit.Maui.Alerts;
using CommunityToolkit.Mvvm.ComponentModel;
using MAUIComberilla.Datas;
using MAUIComberilla.Pages.Controls;
using MAUIComberilla.Services;
using MAUIComberilla.ViewModels;
using System.Collections.Generic;

namespace MAUIComberilla.Pages;

public partial class VideoListPage : ContentPage
{
    private VideoListViewModel _viewModel;
    private RestSharpService restSharpService => new RestSharpService();

    private MacType _type;

    private int _pagenumber = 1;
    private int _pagetotal;

    private string flag;
    public VideoListPage(MacType type)
    {
        InitializeComponent();
        _type = type;
        flag = "type";

        PageTitlelb.Text = _type.TypeName.ToString();

        _viewModel = new VideoListViewModel();
        this.BindingContext = _viewModel;
    }

    private async void Pop_Clicked(object sender, EventArgs e)
    {
        await Navigation.PopAsync();
    }

    private async void ContentView_Loaded(object sender, EventArgs e)
    {
        try
        {
            _viewModel.State = 1;
            switch (flag)
            {
                case "type":
                    await LoadTypeVideoList(1);
                    break;
                default:
                    break;
            }
            _viewModel.State = 0;
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

            int total = int.Parse(dto.Msg);
            if (total <= 20)
                _pagetotal = 1;
            else
                _pagetotal = total / 20;
            VideoList.Clear();
            foreach (var vod in dto.Data)
            {
                string tag = "";
                if (!string.IsNullOrEmpty(vod.VodRemarks))
                {
                    tag += vod.VodRemarks;
                }

                if (!string.IsNullOrEmpty(vod.VodDuration))
                {
                    tag += " " + vod.VodDuration;
                }

                var video = new Video(vod, tag);
                video.Margin = new Thickness(0, 10, 0, 0);
                VideoList.Add(video);
            }

            PageNumlb.Text = $"第 {pagenumber}/{_pagetotal} 页";
        }
    }

    private async void Page_Clicked(object sender, EventArgs e)
    {
        try
        {
            if (_pagetotal == 1)
                return;

            ImageButton control = sender as ImageButton;
            switch (control.CommandParameter)
            {
                case "first":
                    await LoadTypeVideoList(1);
                    break;
                case "pre":
                    if (_pagenumber != 1)
                    {
                        await LoadTypeVideoList(_pagenumber - 1);
                    }
                    break;
                case "next":
                    if (_pagenumber < _pagetotal)
                    {
                        await LoadTypeVideoList(_pagenumber + 1);
                    }
                    break;
                case "last":
                    await LoadTypeVideoList(_pagetotal);
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
}