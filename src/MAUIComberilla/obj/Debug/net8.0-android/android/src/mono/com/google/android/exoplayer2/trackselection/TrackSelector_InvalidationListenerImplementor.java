package mono.com.google.android.exoplayer2.trackselection;


public class TrackSelector_InvalidationListenerImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		com.google.android.exoplayer2.trackselection.TrackSelector.InvalidationListener
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onTrackSelectionsInvalidated:()V:GetOnTrackSelectionsInvalidatedHandler:Com.Google.Android.Exoplayer2.Trackselection.TrackSelector/IInvalidationListenerInvoker, ExoPlayer.Core\n" +
			"n_onRendererCapabilitiesChanged:(Lcom/google/android/exoplayer2/Renderer;)V:GetOnRendererCapabilitiesChanged_Lcom_google_android_exoplayer2_Renderer_Handler:Com.Google.Android.Exoplayer2.Trackselection.TrackSelector/IInvalidationListener, ExoPlayer.Core\n" +
			"";
		mono.android.Runtime.register ("Com.Google.Android.Exoplayer2.Trackselection.TrackSelector+IInvalidationListenerImplementor, ExoPlayer.Core", TrackSelector_InvalidationListenerImplementor.class, __md_methods);
	}


	public TrackSelector_InvalidationListenerImplementor ()
	{
		super ();
		if (getClass () == TrackSelector_InvalidationListenerImplementor.class) {
			mono.android.TypeManager.Activate ("Com.Google.Android.Exoplayer2.Trackselection.TrackSelector+IInvalidationListenerImplementor, ExoPlayer.Core", "", this, new java.lang.Object[] {  });
		}
	}


	public void onTrackSelectionsInvalidated ()
	{
		n_onTrackSelectionsInvalidated ();
	}

	private native void n_onTrackSelectionsInvalidated ();


	public void onRendererCapabilitiesChanged (com.google.android.exoplayer2.Renderer p0)
	{
		n_onRendererCapabilitiesChanged (p0);
	}

	private native void n_onRendererCapabilitiesChanged (com.google.android.exoplayer2.Renderer p0);

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}
