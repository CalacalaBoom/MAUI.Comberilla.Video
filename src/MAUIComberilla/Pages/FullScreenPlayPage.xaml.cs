using CommunityToolkit.Mvvm.Messaging;
using MAUIComberilla.Datas;
using MAUIComberilla.Messages;

namespace MAUIComberilla.Pages;

public partial class FullScreenPlayPage : ContentPage
{
    private string _url;
    private TimeSpan _position;
    private Action<TimeSpan> _callback;
    public FullScreenPlayPage(string url, TimeSpan position,Action<TimeSpan> callback)
    {
        InitializeComponent();
        _url = url;
        _position = position;
        _callback = callback;

        mediaElement.Source = _url;
    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();

        WeakReferenceMessenger.Default.Send(new FullScreenMessage("HideOsNavigationBar"));

#if ANDROID
        Microsoft.Maui.ApplicationModel.Platform.CurrentActivity.RequestedOrientation = Android.Content.PM.ScreenOrientation.Landscape;
#elif IOS
             UIKit.UIDevice.CurrentDevice.SetValueForKey(Foundation.NSNumber.FromNInt((int)(UIKit.UIInterfaceOrientation.LandscapeLeft)), new Foundation.NSString("orientation"));  

#endif
    }

    protected override void OnDisappearing()
    {
        base.OnDisappearing();

        WeakReferenceMessenger.Default.Send(new NormalScreenMessage("NormalNavigationBar"));


#if ANDROID
        Microsoft.Maui.ApplicationModel.Platform.CurrentActivity.RequestedOrientation = Android.Content.PM.ScreenOrientation.Portrait;
#elif IOS
           UIKit.UIDevice.CurrentDevice.SetValueForKey(Foundation.NSNumber.FromNInt((int)(UIKit.UIInterfaceOrientation.Portrait)), new Foundation.NSString("orientation"));  
#endif
    }

    private void mediaElement_MediaOpened(object sender, EventArgs e)
    {
        mediaElement.SeekTo(_position);
    }

    private void ContentPage_Unloaded(object sender, EventArgs e)
    {
        // Stop and cleanup MediaElement when we navigate away
        mediaElement.Handler?.DisconnectHandler();
        if (_callback!=null)
        {
            _callback(mediaElement.Position);
        }
    }
}