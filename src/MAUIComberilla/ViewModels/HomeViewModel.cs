using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using MAUIComberilla.Datas;
using MAUIComberilla.Pages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MAUIComberilla.ViewModels
{
    partial class HomeViewModel : ObservableObject
    {
        private HomeView _view;
        public List<MacVod> recommendVods = new List<MacVod>();
        public HomeViewModel(HomeView view)
        {
            this._view = view;
        }

        [RelayCommand]
        public async void OnRecommendClick(object obj)
        {
            dynamic vod=obj as dynamic;
            var mac_vod=recommendVods.FirstOrDefault(f=>f.VodName==vod.Name);
            if (mac_vod!=null)
            {
                await _view.Navigation.PushAsync(new VideoDetailPage(mac_vod));
            }
        }
    }
}
