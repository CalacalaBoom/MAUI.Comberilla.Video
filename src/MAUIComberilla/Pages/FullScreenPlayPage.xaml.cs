using CommunityToolkit.Mvvm.Messaging;
using MAUIComberilla.Datas;
using MAUIComberilla.Messages;
using MAUIComberilla.Services;

namespace MAUIComberilla.Pages;

public partial class FullScreenPlayPage : ContentPage
{
    private string _url;
    private TimeSpan _position;
    private MacVod _vod;
    private string _location;
    public FullScreenPlayPage(string url, TimeSpan position,MacVod vod,string location)
    {
        InitializeComponent();
        _url = url;
        _position = position;
        _vod = vod;
        _location = location;

        mediaElement.Source = _url;

        WeakReferenceMessenger.Default.Register<NormalScreenMessage>(this, async (r, m) =>
        {
            PlayHistory history = new PlayHistory()
            {
                vod_id = _vod.VodId.ToString(),
                name = _vod.VodName,
                playing_url = _vod.VodPlayUrl,
                position = mediaElement.Position,
                location = _location,
                picture = _vod.VodPic
            };

            using (DatabaseService db=new DatabaseService())
            {
                await db.InsertOrReplaceAsync(history);
            }
        });
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
        WeakReferenceMessenger.Default.Send(new NormalScreenMessage("NormalNavigationBar"));
        base.OnDisappearing();

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
    }
}