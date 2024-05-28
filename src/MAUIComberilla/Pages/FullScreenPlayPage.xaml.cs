using CommunityToolkit.Mvvm.Messaging;
using MAUIComberilla.Messages;

namespace MAUIComberilla.Pages;

public partial class FullScreenPlayPage : ContentPage
{
	public FullScreenPlayPage()
	{
		InitializeComponent();
	}

    protected override void OnAppearing()
    {
        base.OnAppearing();

        WeakReferenceMessenger.Default.Send(new FullScreenMessage("HideOsNavigationBar"));

#if ANDROID
        Microsoft.Maui.ApplicationModel.Platform.CurrentActivity.RequestedOrientation = Android.Content.PM.ScreenOrientation.Landscape;
#elif IOS
             UIKit.UIDevice.CurrentDevice.SetValueForKey(Foundation.NSNumber.FromNInt((int)(UIKit.UIInterfaceOrientation.LandscapeLeft)), new Foundation.NSString("orientation"));  

#endif
        DeviceDisplay.Current.MainDisplayInfoChanged += Current_MainDisplayInfoChanged; ;
    }

    private void Current_MainDisplayInfoChanged(object? sender, DisplayInfoChangedEventArgs e)
    {
        NavigationPage.SetHasNavigationBar(this, false);
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
}