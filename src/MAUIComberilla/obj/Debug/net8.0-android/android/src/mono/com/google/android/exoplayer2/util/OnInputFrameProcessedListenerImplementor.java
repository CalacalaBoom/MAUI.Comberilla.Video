package mono.com.google.android.exoplayer2.util;


public class OnInputFrameProcessedListenerImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		com.google.android.exoplayer2.util.OnInputFrameProcessedListener
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onInputFrameProcessed:(I)V:GetOnInputFrameProcessed_IHandler:Com.Google.Android.Exoplayer2.Util.IOnInputFrameProcessedListenerInvoker, ExoPlayer.Common\n" +
			"";
		mono.android.Runtime.register ("Com.Google.Android.Exoplayer2.Util.IOnInputFrameProcessedListenerImplementor, ExoPlayer.Common", OnInputFrameProcessedListenerImplementor.class, __md_methods);
	}


	public OnInputFrameProcessedListenerImplementor ()
	{
		super ();
		if (getClass () == OnInputFrameProcessedListenerImplementor.class) {
			mono.android.TypeManager.Activate ("Com.Google.Android.Exoplayer2.Util.IOnInputFrameProcessedListenerImplementor, ExoPlayer.Common", "", this, new java.lang.Object[] {  });
		}
	}


	public void onInputFrameProcessed (int p0)
	{
		n_onInputFrameProcessed (p0);
	}

	private native void n_onInputFrameProcessed (int p0);

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
