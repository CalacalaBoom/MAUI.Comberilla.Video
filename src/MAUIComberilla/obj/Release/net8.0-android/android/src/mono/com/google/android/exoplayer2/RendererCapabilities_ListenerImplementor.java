package mono.com.google.android.exoplayer2;


public class RendererCapabilities_ListenerImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		com.google.android.exoplayer2.RendererCapabilities.Listener
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onRendererCapabilitiesChanged:(Lcom/google/android/exoplayer2/Renderer;)V:GetOnRendererCapabilitiesChanged_Lcom_google_android_exoplayer2_Renderer_Handler:Com.Google.Android.Exoplayer2.IRendererCapabilities/IListenerInvoker, ExoPlayer.Core\n" +
			"";
		mono.android.Runtime.register ("Com.Google.Android.Exoplayer2.IRendererCapabilities+IListenerImplementor, ExoPlayer.Core", RendererCapabilities_ListenerImplementor.class, __md_methods);
	}


	public RendererCapabilities_ListenerImplementor ()
	{
		super ();
		if (getClass () == RendererCapabilities_ListenerImplementor.class) {
			mono.android.TypeManager.Activate ("Com.Google.Android.Exoplayer2.IRendererCapabilities+IListenerImplementor, ExoPlayer.Core", "", this, new java.lang.Object[] {  });
		}
	}


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
