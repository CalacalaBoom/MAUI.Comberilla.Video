; ModuleID = 'marshal_methods.x86_64.ll'
source_filename = "marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [169 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [338 x i64] [
	i64 98382396393917666, ; 0: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 46
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 168
	i64 131669012237370309, ; 2: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 51
	i64 196720943101637631, ; 3: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 128
	i64 210515253464952879, ; 4: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 82
	i64 232391251801502327, ; 5: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 100
	i64 560278790331054453, ; 6: System.Reflection.Primitives => 0x7c6829760de3975 => 143
	i64 750875890346172408, ; 7: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 156
	i64 799765834175365804, ; 8: System.ComponentModel.dll => 0xb1956c9f18442ac => 118
	i64 805302231655005164, ; 9: hu\Microsoft.Maui.Controls.resources.dll => 0xb2d021ceea03bec => 12
	i64 870603111519317375, ; 10: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 60
	i64 872800313462103108, ; 11: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 87
	i64 943650302560566006, ; 12: ExoPlayer.Dash.dll => 0xd1884f3544ffaf6 => 67
	i64 1010599046655515943, ; 13: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 143
	i64 1120440138749646132, ; 14: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 105
	i64 1268860745194512059, ; 15: System.Drawing.dll => 0x119be62002c19ebb => 124
	i64 1301485588176585670, ; 16: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 59
	i64 1369545283391376210, ; 17: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 96
	i64 1476839205573959279, ; 18: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 133
	i64 1486715745332614827, ; 19: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 48
	i64 1513467482682125403, ; 20: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 167
	i64 1518315023656898250, ; 21: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 62
	i64 1537168428375924959, ; 22: System.Threading.Thread.dll => 0x15551e8a954ae0df => 156
	i64 1624659445732251991, ; 23: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 79
	i64 1628611045998245443, ; 24: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 92
	i64 1731380447121279447, ; 25: Newtonsoft.Json => 0x18071957e9b889d7 => 53
	i64 1735388228521408345, ; 26: System.Net.Mail.dll => 0x181556663c69b759 => 132
	i64 1743969030606105336, ; 27: System.Memory.dll => 0x1833d297e88f2af8 => 130
	i64 1767386781656293639, ; 28: System.Private.Uri.dll => 0x188704e9f5582107 => 138
	i64 1795316252682057001, ; 29: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 78
	i64 1825687700144851180, ; 30: System.Runtime.InteropServices.RuntimeInformation.dll => 0x1956254a55ef08ec => 144
	i64 1835311033149317475, ; 31: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 6
	i64 1836611346387731153, ; 32: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 100
	i64 1875417405349196092, ; 33: System.Drawing.Primitives => 0x1a06d2319b6c713c => 123
	i64 1881198190668717030, ; 34: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 28
	i64 1920760634179481754, ; 35: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 49
	i64 1930726298510463061, ; 36: CommunityToolkit.Mvvm.dll => 0x1acb5156cd389055 => 38
	i64 1981742497975770890, ; 37: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 91
	i64 1996473713535492147, ; 38: CommunityToolkit.Maui.MediaElement.dll => 0x1bb4e643c2b02033 => 37
	i64 2102659300918482391, ; 39: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 123
	i64 2133195048986300728, ; 40: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 53
	i64 2165725771938924357, ; 41: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 80
	i64 2262844636196693701, ; 42: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 87
	i64 2287834202362508563, ; 43: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 111
	i64 2329709569556905518, ; 44: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 90
	i64 2335503487726329082, ; 45: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 153
	i64 2379805940701141695, ; 46: ExoPlayer.Rtsp => 0x2106c4e4f1db1abf => 73
	i64 2470498323731680442, ; 47: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 83
	i64 2497223385847772520, ; 48: System.Runtime => 0x22a7eb7046413568 => 150
	i64 2547086958574651984, ; 49: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 77
	i64 2602673633151553063, ; 50: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 27
	i64 2656907746661064104, ; 51: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 41
	i64 2662981627730767622, ; 52: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 2
	i64 2895129759130297543, ; 53: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 7
	i64 3017704767998173186, ; 54: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 105
	i64 3188824379904900412, ; 55: ExoPlayer.Common.dll => 0x2c40fae0df563d3c => 64
	i64 3289520064315143713, ; 56: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 89
	i64 3311221304742556517, ; 57: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 136
	i64 3325875462027654285, ; 58: System.Runtime.Numerics => 0x2e27e21c8958b48d => 147
	i64 3344514922410554693, ; 59: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 108
	i64 3429672777697402584, ; 60: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 51
	i64 3494946837667399002, ; 61: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 39
	i64 3522470458906976663, ; 62: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 101
	i64 3551103847008531295, ; 63: System.Private.CoreLib.dll => 0x31480e226177735f => 165
	i64 3567343442040498961, ; 64: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 22
	i64 3571415421602489686, ; 65: System.Runtime.dll => 0x319037675df7e556 => 150
	i64 3638003163729360188, ; 66: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 40
	i64 3647754201059316852, ; 67: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 160
	i64 3655542548057982301, ; 68: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 39
	i64 3716579019761409177, ; 69: netstandard.dll => 0x3393f0ed5c8c5c99 => 164
	i64 3727469159507183293, ; 70: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 99
	i64 3869221888984012293, ; 71: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 43
	i64 3890352374528606784, ; 72: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 49
	i64 3933965368022646939, ; 73: System.Net.Requests => 0x369840a8bfadc09b => 134
	i64 3966267475168208030, ; 74: System.Memory => 0x370b03412596249e => 130
	i64 4009997192427317104, ; 75: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 149
	i64 4070326265757318011, ; 76: da\Microsoft.Maui.Controls.resources.dll => 0x387cb42c56683b7b => 3
	i64 4073500526318903918, ; 77: System.Private.Xml.dll => 0x3887fb25779ae26e => 140
	i64 4073631083018132676, ; 78: Microsoft.Maui.Controls.Compatibility.dll => 0x388871e311491cc4 => 47
	i64 4120493066591692148, ; 79: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 33
	i64 4154383907710350974, ; 80: System.ComponentModel => 0x39a7562737acb67e => 118
	i64 4187479170553454871, ; 81: System.Linq.Expressions => 0x3a1cea1e912fa117 => 128
	i64 4205801962323029395, ; 82: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 117
	i64 4337444564132831293, ; 83: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 58
	i64 4360412976914417659, ; 84: tr\Microsoft.Maui.Controls.resources.dll => 0x3c834c8002fcc7fb => 28
	i64 4477672992252076438, ; 85: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 158
	i64 4636684751163556186, ; 86: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 102
	i64 4716677666592453464, ; 87: System.Xml.XmlSerializer => 0x417501590542f358 => 162
	i64 4794310189461587505, ; 88: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 77
	i64 4795410492532947900, ; 89: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 101
	i64 4809057822547766521, ; 90: System.Drawing => 0x42bd349c3145ecf9 => 124
	i64 4853321196694829351, ; 91: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 146
	i64 4871824391508510238, ; 92: nb\Microsoft.Maui.Controls.resources.dll => 0x439c3278d7f2c61e => 18
	i64 4953714692329509532, ; 93: sv\Microsoft.Maui.Controls.resources.dll => 0x44bf21444aef129c => 26
	i64 5103417709280584325, ; 94: System.Collections.Specialized => 0x46d2fb5e161b6285 => 114
	i64 5182934613077526976, ; 95: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 114
	i64 5272717148637201210, ; 96: ExoPlayer.UI => 0x492c744f85a1833a => 76
	i64 5290786973231294105, ; 97: System.Runtime.Loader => 0x496ca6b869b72699 => 146
	i64 5348796042099802469, ; 98: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 94
	i64 5389233738419247641, ; 99: ExoPlayer.UI.dll => 0x4aca67881e079a19 => 76
	i64 5423376490970181369, ; 100: System.Runtime.InteropServices.RuntimeInformation => 0x4b43b42f2b7b6ef9 => 144
	i64 5471532531798518949, ; 101: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 26
	i64 5522859530602327440, ; 102: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 29
	i64 5570799893513421663, ; 103: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 126
	i64 5573260873512690141, ; 104: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 151
	i64 5692067934154308417, ; 105: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 104
	i64 5703838680789880885, ; 106: ExoPlayer.SmoothStreaming.dll => 0x4f281b0f589d1035 => 74
	i64 5894383691361090976, ; 107: Polly.Core.dll => 0x51cd0ebccd6efda0 => 55
	i64 5979151488806146654, ; 108: System.Formats.Asn1 => 0x52fa3699a489d25e => 125
	i64 6183170893902868313, ; 109: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 58
	i64 6200764641006662125, ; 110: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 23
	i64 6222399776351216807, ; 111: System.Text.Json.dll => 0x565a67a0ffe264a7 => 154
	i64 6284145129771520194, ; 112: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 141
	i64 6300676701234028427, ; 113: es\Microsoft.Maui.Controls.resources.dll => 0x57708013cda25f8b => 6
	i64 6313127126423224581, ; 114: ExoPlayer.DataSource => 0x579cbbac5056c105 => 69
	i64 6357457916754632952, ; 115: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 34
	i64 6401687960814735282, ; 116: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 90
	i64 6471714727257221498, ; 117: fi\Microsoft.Maui.Controls.resources.dll => 0x59d026417dd4a97a => 7
	i64 6478287442656530074, ; 118: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 11
	i64 6504860066809920875, ; 119: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 80
	i64 6548213210057960872, ; 120: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 86
	i64 6560151584539558821, ; 121: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 45
	i64 6597152804937602598, ; 122: ExoPlayer.Dash => 0x5b8dcb85db471626 => 67
	i64 6743165466166707109, ; 123: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 19
	i64 6786606130239981554, ; 124: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 122
	i64 6814185388980153342, ; 125: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 161
	i64 6876862101832370452, ; 126: System.Xml.Linq => 0x5f6f85a57d108914 => 159
	i64 6894844156784520562, ; 127: System.Numerics.Vectors => 0x5faf683aead1ad72 => 136
	i64 7083547580668757502, ; 128: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 139
	i64 7111139937678078858, ; 129: ExoPlayer.Database => 0x62afd818cd65338a => 68
	i64 7198443421380600601, ; 130: SQLitePCLRaw.provider.dynamic_cdecl.dll => 0x63e602271b236319 => 61
	i64 7270811800166795866, ; 131: System.Linq => 0x64e71ccf51a90a5a => 129
	i64 7377312882064240630, ; 132: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 117
	i64 7488575175965059935, ; 133: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 159
	i64 7489048572193775167, ; 134: System.ObjectModel => 0x67ee71ff6b419e3f => 137
	i64 7554258198599408819, ; 135: ExoPlayer.Common => 0x68d61dceb5199cb3 => 64
	i64 7654504624184590948, ; 136: System.Net.Http => 0x6a3a4366801b8264 => 131
	i64 7694700312542370399, ; 137: System.Net.Mail => 0x6ac9112a7e2cda5f => 132
	i64 7714652370974252055, ; 138: System.Private.CoreLib => 0x6b0ff375198b9c17 => 165
	i64 7735176074855944702, ; 139: Microsoft.CSharp => 0x6b58dda848e391fe => 110
	i64 7735352534559001595, ; 140: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 107
	i64 7742555799473854801, ; 141: it\Microsoft.Maui.Controls.resources.dll => 0x6b73157a51479951 => 14
	i64 7836164640616011524, ; 142: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 79
	i64 7975724199463739455, ; 143: sk\Microsoft.Maui.Controls.resources.dll => 0x6eaf76e6f785e03f => 25
	i64 8024811125417330653, ; 144: ExoPlayer.Extractor.dll => 0x6f5ddb33881a47dd => 71
	i64 8059634771736097245, ; 145: ExoPlayer.Decoder => 0x6fd9931f84b771dd => 70
	i64 8064050204834738623, ; 146: System.Collections.dll => 0x6fe942efa61731bf => 115
	i64 8083354569033831015, ; 147: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 89
	i64 8087206902342787202, ; 148: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 121
	i64 8108129031893776750, ; 149: ko\Microsoft.Maui.Controls.resources.dll => 0x7085dc65530f796e => 16
	i64 8167236081217502503, ; 150: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 166
	i64 8185542183669246576, ; 151: System.Collections => 0x7198e33f4794aa70 => 115
	i64 8246048515196606205, ; 152: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 52
	i64 8368701292315763008, ; 153: System.Security.Cryptography => 0x7423997c6fd56140 => 151
	i64 8386351099740279196, ; 154: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x74624de475b9d19c => 31
	i64 8400357532724379117, ; 155: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 98
	i64 8410671156615598628, ; 156: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 142
	i64 8518412311883997971, ; 157: System.Collections.Immutable => 0x76377add7c28e313 => 112
	i64 8563666267364444763, ; 158: System.Private.Uri => 0x76d841191140ca5b => 138
	i64 8599632406834268464, ; 159: CommunityToolkit.Maui => 0x7758081c784b4930 => 35
	i64 8626175481042262068, ; 160: Java.Interop => 0x77b654e585b55834 => 166
	i64 8638972117149407195, ; 161: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 110
	i64 8639588376636138208, ; 162: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 97
	i64 8677882282824630478, ; 163: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 21
	i64 8690461831448123647, ; 164: ExoPlayer.Hls => 0x789ab8fddd8e58ff => 72
	i64 8725526185868997716, ; 165: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 121
	i64 8941376889969657626, ; 166: System.Xml.XDocument => 0x7c1626e87187471a => 161
	i64 9045785047181495996, ; 167: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 31
	i64 9225789786819666723, ; 168: ExoPlayer.SmoothStreaming => 0x800896ee47d02323 => 74
	i64 9312692141327339315, ; 169: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 104
	i64 9324707631942237306, ; 170: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 78
	i64 9363564275759486853, ; 171: el\Microsoft.Maui.Controls.resources.dll => 0x81f21019382e9785 => 5
	i64 9551379474083066910, ; 172: uk\Microsoft.Maui.Controls.resources.dll => 0x848d5106bbadb41e => 29
	i64 9659729154652888475, ; 173: System.Text.RegularExpressions => 0x860e407c9991dd9b => 155
	i64 9678050649315576968, ; 174: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 83
	i64 9702891218465930390, ; 175: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 113
	i64 9711637524876806384, ; 176: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 94
	i64 9722368759809762166, ; 177: ExoPlayer.Core => 0x86eccae02fd0e376 => 66
	i64 9773637193738963987, ; 178: ca\Microsoft.Maui.Controls.resources.dll => 0x87a2ef3ea85b4c13 => 1
	i64 9808709177481450983, ; 179: Mono.Android.dll => 0x881f890734e555e7 => 168
	i64 9944345468791389265, ; 180: ExoPlayer.Core.dll => 0x8a01698437137c51 => 66
	i64 9956195530459977388, ; 181: Microsoft.Maui => 0x8a2b8315b36616ac => 50
	i64 10038780035334861115, ; 182: System.Net.Http.dll => 0x8b50e941206af13b => 131
	i64 10051358222726253779, ; 183: System.Private.Xml => 0x8b7d990c97ccccd3 => 140
	i64 10075958396420552332, ; 184: ExoPlayer => 0x8bd4fec6de42f68c => 63
	i64 10092835686693276772, ; 185: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 48
	i64 10099427421688105860, ; 186: ExoPlayer.Container.dll => 0x8c285fbb208f0b84 => 65
	i64 10143853363526200146, ; 187: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 3
	i64 10209869394718195525, ; 188: nl\Microsoft.Maui.Controls.resources.dll => 0x8db0be1ecb4f7f45 => 19
	i64 10229024438826829339, ; 189: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 86
	i64 10245369515835430794, ; 190: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 142
	i64 10364469296367737616, ; 191: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 141
	i64 10406448008575299332, ; 192: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 108
	i64 10430153318873392755, ; 193: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 84
	i64 10506226065143327199, ; 194: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 1
	i64 10761706286639228993, ; 195: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0x955942d988382841 => 33
	i64 10785150219063592792, ; 196: System.Net.Primitives => 0x95ac8cfb68830758 => 133
	i64 10880838204485145808, ; 197: CommunityToolkit.Maui.dll => 0x970080b2a4d614d0 => 35
	i64 11002576679268595294, ; 198: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 44
	i64 11009005086950030778, ; 199: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 50
	i64 11103762113411436187, ; 200: ExoPlayer.Container => 0x9a187ccfd8544e9b => 65
	i64 11103970607964515343, ; 201: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 12
	i64 11156122287428000958, ; 202: th\Microsoft.Maui.Controls.resources.dll => 0x9ad2821cdcf6dcbe => 27
	i64 11157797727133427779, ; 203: fr\Microsoft.Maui.Controls.resources.dll => 0x9ad875ea9172e843 => 8
	i64 11162124722117608902, ; 204: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 103
	i64 11220793807500858938, ; 205: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 15
	i64 11226290749488709958, ; 206: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 45
	i64 11237162742616054720, ; 207: Polly => 0x9bf26bfa34e25bc0 => 54
	i64 11340910727871153756, ; 208: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 85
	i64 11347436699239206956, ; 209: System.Xml.XmlSerializer.dll => 0x9d7a318e8162502c => 162
	i64 11366194298415195693, ; 210: CommunityToolkit.Maui.MediaElement => 0x9dbcd57e651ba62d => 37
	i64 11387716764763632936, ; 211: ExoPlayer.dll => 0x9e094c10167f3528 => 63
	i64 11485890710487134646, ; 212: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 145
	i64 11518296021396496455, ; 213: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 13
	i64 11529969570048099689, ; 214: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 103
	i64 11530571088791430846, ; 215: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 43
	i64 11597940890313164233, ; 216: netstandard => 0xa0f429ca8d1805c9 => 164
	i64 11687474876782398100, ; 217: ExoPlayer.Decoder.dll => 0xa232407a3feaca94 => 70
	i64 11739066727115742305, ; 218: SQLite-net.dll => 0xa2e98afdf8575c61 => 57
	i64 11806260347154423189, ; 219: SQLite-net => 0xa3d8433bc5eb5d95 => 57
	i64 11855031688536399763, ; 220: vi\Microsoft.Maui.Controls.resources.dll => 0xa485888294361f93 => 30
	i64 12145679461940342714, ; 221: System.Text.Json => 0xa88e1f1ebcb62fba => 154
	i64 12201331334810686224, ; 222: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 149
	i64 12269460666702402136, ; 223: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 112
	i64 12279246230491828964, ; 224: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 62
	i64 12341818387765915815, ; 225: CommunityToolkit.Maui.Core.dll => 0xab46f26f152bf0a7 => 36
	i64 12451044538927396471, ; 226: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 88
	i64 12466513435562512481, ; 227: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 93
	i64 12475113361194491050, ; 228: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 34
	i64 12517810545449516888, ; 229: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 122
	i64 12538491095302438457, ; 230: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 81
	i64 12550732019250633519, ; 231: System.IO.Compression => 0xae2d28465e8e1b2f => 127
	i64 12700543734426720211, ; 232: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 82
	i64 12708922737231849740, ; 233: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 152
	i64 12843321153144804894, ; 234: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 46
	i64 12930559889093992073, ; 235: Polly.Core => 0xb37293b5c85c9e89 => 55
	i64 12989346753972519995, ; 236: ar\Microsoft.Maui.Controls.resources.dll => 0xb4436e0d5ee7c43b => 0
	i64 13005833372463390146, ; 237: pt-BR\Microsoft.Maui.Controls.resources.dll => 0xb47e008b5d99ddc2 => 21
	i64 13068258254871114833, ; 238: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 148
	i64 13343850469010654401, ; 239: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 167
	i64 13381594904270902445, ; 240: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 9
	i64 13385736475199088545, ; 241: ExoPlayer.Extractor => 0xb9c3b0674d3b27a1 => 71
	i64 13454009404024712428, ; 242: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 106
	i64 13465488254036897740, ; 243: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 107
	i64 13540124433173649601, ; 244: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 30
	i64 13572454107664307259, ; 245: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 99
	i64 13717397318615465333, ; 246: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 116
	i64 13881769479078963060, ; 247: System.Console.dll => 0xc0a5f3cade5c6774 => 119
	i64 13959074834287824816, ; 248: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 88
	i64 13982638193275851912, ; 249: ExoPlayer.Hls.dll => 0xc20c4f5a85045488 => 72
	i64 14124974489674258913, ; 250: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 81
	i64 14125464355221830302, ; 251: System.Threading.dll => 0xc407bafdbc707a9e => 157
	i64 14254574811015963973, ; 252: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 152
	i64 14286649581274246170, ; 253: SQLitePCLRaw.provider.dynamic_cdecl => 0xc6446019aa55ac1a => 61
	i64 14349907877893689639, ; 254: ro\Microsoft.Maui.Controls.resources.dll => 0xc7251d2f956ed127 => 23
	i64 14438260825521943376, ; 255: RestSharp.dll => 0xc85f01b93fac7350 => 56
	i64 14461014870687870182, ; 256: System.Net.Requests.dll => 0xc8afd8683afdece6 => 134
	i64 14464374589798375073, ; 257: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 24
	i64 14491877563792607819, ; 258: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0xc91d7ddcee4fca4b => 32
	i64 14551742072151931844, ; 259: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 153
	i64 14556034074661724008, ; 260: CommunityToolkit.Maui.Core => 0xca016bdea6b19f68 => 36
	i64 14610046442689856844, ; 261: cs\Microsoft.Maui.Controls.resources.dll => 0xcac14fd5107d054c => 2
	i64 14622043554576106986, ; 262: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 148
	i64 14669215534098758659, ; 263: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 41
	i64 14690985099581930927, ; 264: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 158
	i64 14705122255218365489, ; 265: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 16
	i64 14735017007120366644, ; 266: ja\Microsoft.Maui.Controls.resources.dll => 0xcc7d4be604bfbc34 => 15
	i64 14744092281598614090, ; 267: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 32
	i64 14792063746108907174, ; 268: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 106
	i64 14852515768018889994, ; 269: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 85
	i64 14904040806490515477, ; 270: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 0
	i64 14954917835170835695, ; 271: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 42
	i64 14987728460634540364, ; 272: System.IO.Compression.dll => 0xcfff1ba06622494c => 127
	i64 15015154896917945444, ; 273: System.Net.Security.dll => 0xd0608bd33642dc64 => 135
	i64 15076659072870671916, ; 274: System.ObjectModel.dll => 0xd13b0d8c1620662c => 137
	i64 15111608613780139878, ; 275: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 17
	i64 15115185479366240210, ; 276: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 126
	i64 15133485256822086103, ; 277: System.Linq.dll => 0xd204f0a9127dd9d7 => 129
	i64 15203009853192377507, ; 278: pt\Microsoft.Maui.Controls.resources.dll => 0xd2fbf0e9984b94a3 => 22
	i64 15227001540531775957, ; 279: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 40
	i64 15370334346939861994, ; 280: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 84
	i64 15391712275433856905, ; 281: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 42
	i64 15527772828719725935, ; 282: System.Console => 0xd77dbb1e38cd3d6f => 119
	i64 15536481058354060254, ; 283: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 4
	i64 15582737692548360875, ; 284: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 92
	i64 15609085926864131306, ; 285: System.dll => 0xd89e9cf3334914ea => 163
	i64 15661133872274321916, ; 286: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 160
	i64 15783653065526199428, ; 287: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 5
	i64 15836881554681710155, ; 288: MAUIComberilla.dll => 0xdbc7e7ddd8bd464b => 109
	i64 15837546603584371460, ; 289: MAUIComberilla => 0xdbca44b99c573b04 => 109
	i64 15928521404965645318, ; 290: Microsoft.Maui.Controls.Compatibility => 0xdd0d79d32c2eec06 => 47
	i64 16048255734569022341, ; 291: ExoPlayer.Transformer => 0xdeb6db90339cb385 => 75
	i64 16056281320585338352, ; 292: ru\Microsoft.Maui.Controls.resources.dll => 0xded35eca8f3a9df0 => 24
	i64 16069846902195211555, ; 293: ExoPlayer.DataSource.dll => 0xdf03909da841cd23 => 69
	i64 16154507427712707110, ; 294: System => 0xe03056ea4e39aa26 => 163
	i64 16219561732052121626, ; 295: System.Net.Security => 0xe1177575db7c781a => 135
	i64 16288847719894691167, ; 296: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 18
	i64 16321164108206115771, ; 297: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 44
	i64 16648892297579399389, ; 298: CommunityToolkit.Mvvm => 0xe70cbf55c4f508dd => 38
	i64 16649148416072044166, ; 299: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 52
	i64 16677317093839702854, ; 300: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 98
	i64 16755018182064898362, ; 301: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 59
	i64 16803648858859583026, ; 302: ms\Microsoft.Maui.Controls.resources.dll => 0xe9328d9b8ab93632 => 17
	i64 16856067890322379635, ; 303: System.Data.Common.dll => 0xe9ecc87060889373 => 120
	i64 16890310621557459193, ; 304: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 155
	i64 16942731696432749159, ; 305: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 25
	i64 16998075588627545693, ; 306: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 96
	i64 17008137082415910100, ; 307: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 113
	i64 17031351772568316411, ; 308: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 95
	i64 17062143951396181894, ; 309: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 116
	i64 17151170952569239713, ; 310: RestSharp => 0xee05331c4de338a1 => 56
	i64 17203614576212522419, ; 311: pl\Microsoft.Maui.Controls.resources.dll => 0xeebf844ef3e135b3 => 20
	i64 17230721278011714856, ; 312: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 139
	i64 17260702271250283638, ; 313: System.Data.Common => 0xef8a5543bba6bc76 => 120
	i64 17310278548634113468, ; 314: hi\Microsoft.Maui.Controls.resources.dll => 0xf03a76a04e6695bc => 10
	i64 17342750010158924305, ; 315: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 10
	i64 17375848869554566964, ; 316: ExoPlayer.Database.dll => 0xf1236a7c54ac3734 => 68
	i64 17472189583225440952, ; 317: ExoPlayer.Transformer.dll => 0xf279afdab46ecab8 => 75
	i64 17514990004910432069, ; 318: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 8
	i64 17623389608345532001, ; 319: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 20
	i64 17675249797910273188, ; 320: Polly.dll => 0xf54b1a0b30bc9ca4 => 54
	i64 17704177640604968747, ; 321: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 93
	i64 17710060891934109755, ; 322: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 91
	i64 17712670374920797664, ; 323: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 145
	i64 17777860260071588075, ; 324: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 147
	i64 17827813215687577648, ; 325: hr\Microsoft.Maui.Controls.resources.dll => 0xf7691da9f3129030 => 11
	i64 17942426894774770628, ; 326: de\Microsoft.Maui.Controls.resources.dll => 0xf9004e329f771bc4 => 4
	i64 18025913125965088385, ; 327: System.Threading => 0xfa28e87b91334681 => 157
	i64 18070190158559153715, ; 328: ExoPlayer.Rtsp.dll => 0xfac6363590ad8e33 => 73
	i64 18121036031235206392, ; 329: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 95
	i64 18146411883821974900, ; 330: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 125
	i64 18245806341561545090, ; 331: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 111
	i64 18305135509493619199, ; 332: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 97
	i64 18324163916253801303, ; 333: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 14
	i64 18342408478508122430, ; 334: id\Microsoft.Maui.Controls.resources.dll => 0xfe8d53543697013e => 13
	i64 18358161419737137786, ; 335: he\Microsoft.Maui.Controls.resources.dll => 0xfec54a8ba8b6827a => 9
	i64 18370042311372477656, ; 336: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 60
	i64 18380184030268848184 ; 337: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 102
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [338 x i32] [
	i32 46, ; 0
	i32 168, ; 1
	i32 51, ; 2
	i32 128, ; 3
	i32 82, ; 4
	i32 100, ; 5
	i32 143, ; 6
	i32 156, ; 7
	i32 118, ; 8
	i32 12, ; 9
	i32 60, ; 10
	i32 87, ; 11
	i32 67, ; 12
	i32 143, ; 13
	i32 105, ; 14
	i32 124, ; 15
	i32 59, ; 16
	i32 96, ; 17
	i32 133, ; 18
	i32 48, ; 19
	i32 167, ; 20
	i32 62, ; 21
	i32 156, ; 22
	i32 79, ; 23
	i32 92, ; 24
	i32 53, ; 25
	i32 132, ; 26
	i32 130, ; 27
	i32 138, ; 28
	i32 78, ; 29
	i32 144, ; 30
	i32 6, ; 31
	i32 100, ; 32
	i32 123, ; 33
	i32 28, ; 34
	i32 49, ; 35
	i32 38, ; 36
	i32 91, ; 37
	i32 37, ; 38
	i32 123, ; 39
	i32 53, ; 40
	i32 80, ; 41
	i32 87, ; 42
	i32 111, ; 43
	i32 90, ; 44
	i32 153, ; 45
	i32 73, ; 46
	i32 83, ; 47
	i32 150, ; 48
	i32 77, ; 49
	i32 27, ; 50
	i32 41, ; 51
	i32 2, ; 52
	i32 7, ; 53
	i32 105, ; 54
	i32 64, ; 55
	i32 89, ; 56
	i32 136, ; 57
	i32 147, ; 58
	i32 108, ; 59
	i32 51, ; 60
	i32 39, ; 61
	i32 101, ; 62
	i32 165, ; 63
	i32 22, ; 64
	i32 150, ; 65
	i32 40, ; 66
	i32 160, ; 67
	i32 39, ; 68
	i32 164, ; 69
	i32 99, ; 70
	i32 43, ; 71
	i32 49, ; 72
	i32 134, ; 73
	i32 130, ; 74
	i32 149, ; 75
	i32 3, ; 76
	i32 140, ; 77
	i32 47, ; 78
	i32 33, ; 79
	i32 118, ; 80
	i32 128, ; 81
	i32 117, ; 82
	i32 58, ; 83
	i32 28, ; 84
	i32 158, ; 85
	i32 102, ; 86
	i32 162, ; 87
	i32 77, ; 88
	i32 101, ; 89
	i32 124, ; 90
	i32 146, ; 91
	i32 18, ; 92
	i32 26, ; 93
	i32 114, ; 94
	i32 114, ; 95
	i32 76, ; 96
	i32 146, ; 97
	i32 94, ; 98
	i32 76, ; 99
	i32 144, ; 100
	i32 26, ; 101
	i32 29, ; 102
	i32 126, ; 103
	i32 151, ; 104
	i32 104, ; 105
	i32 74, ; 106
	i32 55, ; 107
	i32 125, ; 108
	i32 58, ; 109
	i32 23, ; 110
	i32 154, ; 111
	i32 141, ; 112
	i32 6, ; 113
	i32 69, ; 114
	i32 34, ; 115
	i32 90, ; 116
	i32 7, ; 117
	i32 11, ; 118
	i32 80, ; 119
	i32 86, ; 120
	i32 45, ; 121
	i32 67, ; 122
	i32 19, ; 123
	i32 122, ; 124
	i32 161, ; 125
	i32 159, ; 126
	i32 136, ; 127
	i32 139, ; 128
	i32 68, ; 129
	i32 61, ; 130
	i32 129, ; 131
	i32 117, ; 132
	i32 159, ; 133
	i32 137, ; 134
	i32 64, ; 135
	i32 131, ; 136
	i32 132, ; 137
	i32 165, ; 138
	i32 110, ; 139
	i32 107, ; 140
	i32 14, ; 141
	i32 79, ; 142
	i32 25, ; 143
	i32 71, ; 144
	i32 70, ; 145
	i32 115, ; 146
	i32 89, ; 147
	i32 121, ; 148
	i32 16, ; 149
	i32 166, ; 150
	i32 115, ; 151
	i32 52, ; 152
	i32 151, ; 153
	i32 31, ; 154
	i32 98, ; 155
	i32 142, ; 156
	i32 112, ; 157
	i32 138, ; 158
	i32 35, ; 159
	i32 166, ; 160
	i32 110, ; 161
	i32 97, ; 162
	i32 21, ; 163
	i32 72, ; 164
	i32 121, ; 165
	i32 161, ; 166
	i32 31, ; 167
	i32 74, ; 168
	i32 104, ; 169
	i32 78, ; 170
	i32 5, ; 171
	i32 29, ; 172
	i32 155, ; 173
	i32 83, ; 174
	i32 113, ; 175
	i32 94, ; 176
	i32 66, ; 177
	i32 1, ; 178
	i32 168, ; 179
	i32 66, ; 180
	i32 50, ; 181
	i32 131, ; 182
	i32 140, ; 183
	i32 63, ; 184
	i32 48, ; 185
	i32 65, ; 186
	i32 3, ; 187
	i32 19, ; 188
	i32 86, ; 189
	i32 142, ; 190
	i32 141, ; 191
	i32 108, ; 192
	i32 84, ; 193
	i32 1, ; 194
	i32 33, ; 195
	i32 133, ; 196
	i32 35, ; 197
	i32 44, ; 198
	i32 50, ; 199
	i32 65, ; 200
	i32 12, ; 201
	i32 27, ; 202
	i32 8, ; 203
	i32 103, ; 204
	i32 15, ; 205
	i32 45, ; 206
	i32 54, ; 207
	i32 85, ; 208
	i32 162, ; 209
	i32 37, ; 210
	i32 63, ; 211
	i32 145, ; 212
	i32 13, ; 213
	i32 103, ; 214
	i32 43, ; 215
	i32 164, ; 216
	i32 70, ; 217
	i32 57, ; 218
	i32 57, ; 219
	i32 30, ; 220
	i32 154, ; 221
	i32 149, ; 222
	i32 112, ; 223
	i32 62, ; 224
	i32 36, ; 225
	i32 88, ; 226
	i32 93, ; 227
	i32 34, ; 228
	i32 122, ; 229
	i32 81, ; 230
	i32 127, ; 231
	i32 82, ; 232
	i32 152, ; 233
	i32 46, ; 234
	i32 55, ; 235
	i32 0, ; 236
	i32 21, ; 237
	i32 148, ; 238
	i32 167, ; 239
	i32 9, ; 240
	i32 71, ; 241
	i32 106, ; 242
	i32 107, ; 243
	i32 30, ; 244
	i32 99, ; 245
	i32 116, ; 246
	i32 119, ; 247
	i32 88, ; 248
	i32 72, ; 249
	i32 81, ; 250
	i32 157, ; 251
	i32 152, ; 252
	i32 61, ; 253
	i32 23, ; 254
	i32 56, ; 255
	i32 134, ; 256
	i32 24, ; 257
	i32 32, ; 258
	i32 153, ; 259
	i32 36, ; 260
	i32 2, ; 261
	i32 148, ; 262
	i32 41, ; 263
	i32 158, ; 264
	i32 16, ; 265
	i32 15, ; 266
	i32 32, ; 267
	i32 106, ; 268
	i32 85, ; 269
	i32 0, ; 270
	i32 42, ; 271
	i32 127, ; 272
	i32 135, ; 273
	i32 137, ; 274
	i32 17, ; 275
	i32 126, ; 276
	i32 129, ; 277
	i32 22, ; 278
	i32 40, ; 279
	i32 84, ; 280
	i32 42, ; 281
	i32 119, ; 282
	i32 4, ; 283
	i32 92, ; 284
	i32 163, ; 285
	i32 160, ; 286
	i32 5, ; 287
	i32 109, ; 288
	i32 109, ; 289
	i32 47, ; 290
	i32 75, ; 291
	i32 24, ; 292
	i32 69, ; 293
	i32 163, ; 294
	i32 135, ; 295
	i32 18, ; 296
	i32 44, ; 297
	i32 38, ; 298
	i32 52, ; 299
	i32 98, ; 300
	i32 59, ; 301
	i32 17, ; 302
	i32 120, ; 303
	i32 155, ; 304
	i32 25, ; 305
	i32 96, ; 306
	i32 113, ; 307
	i32 95, ; 308
	i32 116, ; 309
	i32 56, ; 310
	i32 20, ; 311
	i32 139, ; 312
	i32 120, ; 313
	i32 10, ; 314
	i32 10, ; 315
	i32 68, ; 316
	i32 75, ; 317
	i32 8, ; 318
	i32 20, ; 319
	i32 54, ; 320
	i32 93, ; 321
	i32 91, ; 322
	i32 145, ; 323
	i32 147, ; 324
	i32 11, ; 325
	i32 4, ; 326
	i32 157, ; 327
	i32 73, ; 328
	i32 95, ; 329
	i32 125, ; 330
	i32 111, ; 331
	i32 97, ; 332
	i32 14, ; 333
	i32 13, ; 334
	i32 9, ; 335
	i32 60, ; 336
	i32 102 ; 337
], align 16

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 16

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ af27162bee43b7fecdca59b4f67aa8c175cbc875"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
