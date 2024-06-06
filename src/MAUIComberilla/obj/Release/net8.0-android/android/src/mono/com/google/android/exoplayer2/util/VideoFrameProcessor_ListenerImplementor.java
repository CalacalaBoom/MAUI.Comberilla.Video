package mono.com.google.android.exoplayer2.util;


public class VideoFrameProcessor_ListenerImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		com.google.android.exoplayer2.util.VideoFrameProcessor.Listener
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onEnded:()V:GetOnEndedHandler:Com.Google.Android.Exoplayer2.Util.IVideoFrameProcessor/IListenerInvoker, ExoPlayer.Common\n" +
			"n_onError:(Lcom/google/android/exoplayer2/util/VideoFrameProcessingException;)V:GetOnError_Lcom_google_android_exoplayer2_util_VideoFrameProcessingException_Handler:Com.Google.Android.Exoplayer2.Util.IVideoFrameProcessor/IListenerInvoker, ExoPlayer.Common\n" +
			"n_onOutputFrameAvailableForRendering:(J)V:GetOnOutputFrameAvailableForRendering_JHandler:Com.Google.Android.Exoplayer2.Util.IVideoFrameProcessor/IListenerInvoker, ExoPlayer.Common\n" +
			"n_onOutputSizeChanged:(II)V:GetOnOutputSizeChanged_IIHandler:Com.Google.Android.Exoplayer2.Util.IVideoFrameProcessor/IListenerInvoker, ExoPlayer.Common\n" +
			"";
		mono.android.Runtime.register ("Com.Google.Android.Exoplayer2.Util.IVideoFrameProcessor+IListenerImplementor, ExoPlayer.Common", VideoFrameProcessor_ListenerImplementor.class, __md_methods);
	}


	public VideoFrameProcessor_ListenerImplementor ()
	{
		super ();
		if (getClass () == VideoFrameProcessor_ListenerImplementor.class) {
			mono.android.TypeManager.Activate ("Com.Google.Android.Exoplayer2.Util.IVideoFrameProcessor+IListenerImplementor, ExoPlayer.Common", "", this, new java.lang.Object[] {  });
		}
	}


	public void onEnded ()
	{
		n_onEnded ();
	}

	private native void n_onEnded ();


	public void onError (com.google.android.exoplayer2.util.VideoFrameProcessingException p0)
	{
		n_onError (p0);
	}

	private native void n_onError (com.google.android.exoplayer2.util.VideoFrameProcessingException p0);


	public void onOutputFrameAvailableForRendering (long p0)
	{
		n_onOutputFrameAvailableForRendering (p0);
	}

	private native void n_onOutputFrameAvailableForRendering (long p0);


	public void onOutputSizeChanged (int p0, int p1)
	{
		n_onOutputSizeChanged (p0, p1);
	}

	private native void n_onOutputSizeChanged (int p0, int p1);

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
