package mono.com.google.android.exoplayer2.transformer;


public class AssetLoader_ListenerImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		com.google.android.exoplayer2.transformer.AssetLoader.Listener
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onDurationUs:(J)V:GetOnDurationUs_JHandler:Com.Google.Android.Exoplayer2.Transformer.IAssetLoader/IListenerInvoker, ExoPlayer.Transformer\n" +
			"n_onError:(Lcom/google/android/exoplayer2/transformer/ExportException;)V:GetOnError_Lcom_google_android_exoplayer2_transformer_ExportException_Handler:Com.Google.Android.Exoplayer2.Transformer.IAssetLoader/IListenerInvoker, ExoPlayer.Transformer\n" +
			"n_onOutputFormat:(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/transformer/SampleConsumer;:GetOnOutputFormat_Lcom_google_android_exoplayer2_Format_Handler:Com.Google.Android.Exoplayer2.Transformer.IAssetLoader/IListenerInvoker, ExoPlayer.Transformer\n" +
			"n_onTrackAdded:(Lcom/google/android/exoplayer2/Format;I)Z:GetOnTrackAdded_Lcom_google_android_exoplayer2_Format_IHandler:Com.Google.Android.Exoplayer2.Transformer.IAssetLoader/IListenerInvoker, ExoPlayer.Transformer\n" +
			"n_onTrackCount:(I)V:GetOnTrackCount_IHandler:Com.Google.Android.Exoplayer2.Transformer.IAssetLoader/IListenerInvoker, ExoPlayer.Transformer\n" +
			"";
		mono.android.Runtime.register ("Com.Google.Android.Exoplayer2.Transformer.IAssetLoader+IListenerImplementor, ExoPlayer.Transformer", AssetLoader_ListenerImplementor.class, __md_methods);
	}


	public AssetLoader_ListenerImplementor ()
	{
		super ();
		if (getClass () == AssetLoader_ListenerImplementor.class) {
			mono.android.TypeManager.Activate ("Com.Google.Android.Exoplayer2.Transformer.IAssetLoader+IListenerImplementor, ExoPlayer.Transformer", "", this, new java.lang.Object[] {  });
		}
	}


	public void onDurationUs (long p0)
	{
		n_onDurationUs (p0);
	}

	private native void n_onDurationUs (long p0);


	public void onError (com.google.android.exoplayer2.transformer.ExportException p0)
	{
		n_onError (p0);
	}

	private native void n_onError (com.google.android.exoplayer2.transformer.ExportException p0);


	public com.google.android.exoplayer2.transformer.SampleConsumer onOutputFormat (com.google.android.exoplayer2.Format p0)
	{
		return n_onOutputFormat (p0);
	}

	private native com.google.android.exoplayer2.transformer.SampleConsumer n_onOutputFormat (com.google.android.exoplayer2.Format p0);


	public boolean onTrackAdded (com.google.android.exoplayer2.Format p0, int p1)
	{
		return n_onTrackAdded (p0, p1);
	}

	private native boolean n_onTrackAdded (com.google.android.exoplayer2.Format p0, int p1);


	public void onTrackCount (int p0)
	{
		n_onTrackCount (p0);
	}

	private native void n_onTrackCount (int p0);

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
