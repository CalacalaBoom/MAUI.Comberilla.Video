using CommunityToolkit.Mvvm.ComponentModel;
using MAUIComberilla.Pages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MAUIComberilla.ViewModels
{
    partial class VideoListViewModel : ObservableObject
    {
        [ObservableProperty]
        private string currentState;

        private int _state;

        public int State
        {
            get { return _state; }
            set
            {
                _state = value;

                if (value == 1)
                {
                    CurrentState = "Loading";
                }
                else
                {
                    CurrentState = string.Empty;
                }
            }
        }
    }
}
