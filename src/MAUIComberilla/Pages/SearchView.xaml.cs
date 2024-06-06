using CommunityToolkit.Maui.Alerts;
using MAUIComberilla.Datas;
using MAUIComberilla.Pages.Controls;
using MAUIComberilla.Services;
using MAUIComberilla.ViewModels;

namespace MAUIComberilla.Pages;

public partial class SearchView : ContentView
{
    private VideoListViewModel _viewModel;
    private RestSharpService restSharpService => new RestSharpService();

    private int _pagenumber = 1;
    private int _pagetotal;
    private string _query;

    public SearchView()
    {
        InitializeComponent();

        _viewModel = new VideoListViewModel();
        this.BindingContext = _viewModel;
    }

    private async void SearchBar_SearchButtonPressed(object sender, EventArgs e)
    {
        try
        {
            _viewModel.State = 1;

            _query = Query.Text;
            await LoadSearchVideoList(1, _query);

            _viewModel.State = 0;
        }
        catch (Exception ex)
        {
            await MainThread.InvokeOnMainThreadAsync(async () => await Toast.Make(ex.Message).Show());
        }
    }

    private async void Page_Clicked(object sender, EventArgs e)
    {
        try
        {
            ImageButton control = sender as ImageButton;
            switch (control.CommandParameter)
            {
                case "first":
                    await LoadSearchVideoList(1, _query);
                    break;
                case "pre":
                    if (_pagenumber != 1)
                    {
                        await LoadSearchVideoList(_pagenumber - 1, _query);
                    }
                    break;
                case "next":
                    if (_pagenumber < _pagetotal)
                    {
                        await LoadSearchVideoList(_pagenumber + 1, _query);
                    }
                    break;
                case "last":
                    await LoadSearchVideoList(_pagetotal, _query);
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
    /// 加载搜索视频列表
    /// </summary>
    /// <returns></returns>
    /// <exception cref="NotImplementedException"></exception>
    private async Task LoadSearchVideoList(int pagenumber, string query)
    {
        var dto = await restSharpService.GetAsync<RESTFulDto<List<MacVod>>>($"Vod/SearchVideo?type={StringHelper.type}&query={query}&pagenumber={pagenumber}&pageSize=20");
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
}