using Android.App;
using Android.Content.PM;
using Android.OS;
using Android.Views;
using CommunityToolkit.Mvvm.Messaging;
using MAUIComberilla.Messages;

namespace MAUIComberilla
{
    [Activity(Theme = "@style/Maui.SplashTheme", MainLauncher = true, LaunchMode = LaunchMode.SingleTask, ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation | ConfigChanges.UiMode | ConfigChanges.ScreenLayout | ConfigChanges.SmallestScreenSize | ConfigChanges.Density)]
    public class MainActivity : MauiAppCompatActivity
    {
        protected override void OnCreate(Bundle? savedInstanceState)
        {
            //全透明任务栏
            Window.SetFlags(Android.Views.WindowManagerFlags.TranslucentNavigation, Android.Views.WindowManagerFlags.TranslucentNavigation);


            //设置状态栏、导航栏色颜色为透明
            Window.SetStatusBarColor(Android.Graphics.Color.Transparent);
            Window.SetNavigationBarColor(Android.Graphics.Color.Transparent);

            WeakReferenceMessenger.Default.Register<FullScreenMessage>(this, (r, m) =>
            {
                Window.SetFlags(Android.Views.WindowManagerFlags.Fullscreen, Android.Views.WindowManagerFlags.Fullscreen);
            });

            WeakReferenceMessenger.Default.Register<NormalScreenMessage>(this, (r, m) =>
            {
                IWindowInsetsController wicController = Window.InsetsController;
                Window.SetDecorFitsSystemWindows(true);
                Window.ClearFlags(WindowManagerFlags.Fullscreen);
                if (wicController != null)
                {
                    wicController.Show(WindowInsets.Type.NavigationBars());
                }
            });

            base.OnCreate(savedInstanceState);
        }
    }
}
