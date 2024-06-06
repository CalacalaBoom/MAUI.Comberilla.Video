; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [338 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [676 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 258
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 295
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 38948123, ; 6: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 303
	i32 39109920, ; 7: Newtonsoft.Json.dll => 0x254c520 => 193
	i32 39485524, ; 8: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42244203, ; 9: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 312
	i32 42639949, ; 10: System.Threading.Thread => 0x28aa24d => 145
	i32 66541672, ; 11: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 12: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 336
	i32 68219467, ; 13: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 14: Microsoft.Maui.Graphics.dll => 0x44bb714 => 192
	i32 82292897, ; 15: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 83839681, ; 16: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 320
	i32 101534019, ; 17: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 277
	i32 117431740, ; 18: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 19: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 277
	i32 122350210, ; 20: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 21: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 299
	i32 136584136, ; 22: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 335
	i32 140062828, ; 23: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 328
	i32 142721839, ; 24: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 25: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 26: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 27: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 232
	i32 176265551, ; 28: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 29: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 279
	i32 184328833, ; 30: System.ValueTuple.dll => 0xafca281 => 151
	i32 205061960, ; 31: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 32: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 230
	i32 220171995, ; 33: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 34: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 252
	i32 230752869, ; 35: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 36: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 37: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 38: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 261689757, ; 39: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 235
	i32 266337479, ; 40: Xamarin.Google.Guava.FailureAccess.dll => 0xfdffcc7 => 294
	i32 276479776, ; 41: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 42: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 254
	i32 280482487, ; 43: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 251
	i32 291076382, ; 44: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 293579439, ; 45: ExoPlayer.Dash.dll => 0x117faaaf => 207
	i32 298918909, ; 46: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 47: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 333
	i32 318968648, ; 48: Xamarin.AndroidX.Activity.dll => 0x13031348 => 221
	i32 321597661, ; 49: System.Numerics => 0x132b30dd => 83
	i32 321963286, ; 50: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 311
	i32 342366114, ; 51: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 253
	i32 347068432, ; 52: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 200
	i32 360082299, ; 53: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 54: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 55: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 56: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 57: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 58: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 59: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 60: _Microsoft.Android.Resource.Designer => 0x17969339 => 337
	i32 403441872, ; 61: WindowsBase => 0x180c08d0 => 165
	i32 409257351, ; 62: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 331
	i32 441335492, ; 63: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 236
	i32 442565967, ; 64: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 65: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 249
	i32 451504562, ; 66: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 452127346, ; 67: ExoPlayer.Database.dll => 0x1af2ea72 => 208
	i32 456227837, ; 68: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 69: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 70: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 71: System.dll => 0x1bff388e => 164
	i32 476646585, ; 72: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 251
	i32 486930444, ; 73: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 264
	i32 489220957, ; 74: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 309
	i32 498788369, ; 75: System.ObjectModel => 0x1dbae811 => 84
	i32 513247710, ; 76: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 186
	i32 526420162, ; 77: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 78: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 299
	i32 530272170, ; 79: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 538707440, ; 80: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 330
	i32 539058512, ; 81: Microsoft.Extensions.Logging => 0x20216150 => 182
	i32 540030774, ; 82: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 83: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 84: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 85: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 86: Jsr305Binding => 0x213954e7 => 290
	i32 569601784, ; 87: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 288
	i32 577335427, ; 88: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 597488923, ; 89: CommunityToolkit.Maui => 0x239cf51b => 173
	i32 601371474, ; 90: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 91: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 92: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 626887733, ; 93: ExoPlayer.Container => 0x255d8c35 => 205
	i32 627609679, ; 94: Xamarin.AndroidX.CustomView => 0x2568904f => 241
	i32 627931235, ; 95: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 322
	i32 639843206, ; 96: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 247
	i32 643868501, ; 97: System.Net => 0x2660a755 => 81
	i32 662205335, ; 98: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 99: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 284
	i32 666292255, ; 100: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 228
	i32 672442732, ; 101: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 102: System.Net.Security => 0x28bdabca => 73
	i32 690569205, ; 103: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 104: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 301
	i32 693804605, ; 105: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 106: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 107: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 296
	i32 700358131, ; 108: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 720511267, ; 109: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 300
	i32 722857257, ; 110: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 111: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 748832960, ; 112: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 198
	i32 752232764, ; 113: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 752882528, ; 114: SQLitePCLRaw.provider.dynamic_cdecl.dll => 0x2ce01360 => 201
	i32 755313932, ; 115: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 218
	i32 759454413, ; 116: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 117: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 118: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 119: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 328
	i32 789151979, ; 120: Microsoft.Extensions.Options => 0x2f0980eb => 185
	i32 790371945, ; 121: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 242
	i32 804715423, ; 122: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 123: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 256
	i32 812693636, ; 124: ExoPlayer.Dash => 0x3070b884 => 207
	i32 823281589, ; 125: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 126: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 127: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 128: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 129: Xamarin.AndroidX.Print => 0x3246f6cd => 270
	i32 869139383, ; 130: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 313
	i32 873119928, ; 131: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 132: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 133: System.Net.Http.Json => 0x3463c971 => 63
	i32 880668424, ; 134: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 327
	i32 904024072, ; 135: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 136: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 918734561, ; 137: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 324
	i32 928116545, ; 138: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 295
	i32 939431778, ; 139: Polly.Core.dll => 0x37fe9762 => 195
	i32 939704684, ; 140: ExoPlayer.Extractor => 0x3802c16c => 211
	i32 952186615, ; 141: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 955402788, ; 142: Newtonsoft.Json => 0x38f24a24 => 193
	i32 956575887, ; 143: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 300
	i32 961460050, ; 144: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 317
	i32 966729478, ; 145: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 291
	i32 967690846, ; 146: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 253
	i32 975236339, ; 147: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 148: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 149: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 150: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 990727110, ; 151: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 326
	i32 992768348, ; 152: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 153: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 1001831731, ; 154: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 155: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 274
	i32 1019214401, ; 156: System.Drawing => 0x3cbffa41 => 36
	i32 1028013380, ; 157: ExoPlayer.UI.dll => 0x3d463d44 => 216
	i32 1028951442, ; 158: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 181
	i32 1031528504, ; 159: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 292
	i32 1035644815, ; 160: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 226
	i32 1036536393, ; 161: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1043950537, ; 162: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 307
	i32 1044663988, ; 163: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 164: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 260
	i32 1067306892, ; 165: GoogleGson => 0x3f9dcf8c => 177
	i32 1082857460, ; 166: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 167: Xamarin.Kotlin.StdLib => 0x409e66d8 => 297
	i32 1098259244, ; 168: System => 0x41761b2c => 164
	i32 1108272742, ; 169: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 329
	i32 1117529484, ; 170: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 323
	i32 1118262833, ; 171: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 319
	i32 1121599056, ; 172: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 259
	i32 1127295045, ; 173: Polly.dll => 0x43312845 => 194
	i32 1127624469, ; 174: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 184
	i32 1149092582, ; 175: Xamarin.AndroidX.Window => 0x447dc2e6 => 287
	i32 1151313727, ; 176: ExoPlayer.Rtsp => 0x449fa73f => 213
	i32 1168523401, ; 177: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 325
	i32 1170634674, ; 178: System.Web.dll => 0x45c677b2 => 153
	i32 1175144683, ; 179: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 283
	i32 1178241025, ; 180: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 268
	i32 1204270330, ; 181: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 228
	i32 1208641965, ; 182: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1214827643, ; 183: CommunityToolkit.Mvvm => 0x4868cc7b => 176
	i32 1219128291, ; 184: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1237307280, ; 185: MAUIComberilla.dll => 0x49bfcf90 => 0
	i32 1243150071, ; 186: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 288
	i32 1253011324, ; 187: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 188: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 305
	i32 1263886435, ; 189: Xamarin.Google.Guava.dll => 0x4b556063 => 293
	i32 1264511973, ; 190: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 278
	i32 1267360935, ; 191: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 282
	i32 1273260888, ; 192: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 233
	i32 1275534314, ; 193: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 301
	i32 1278448581, ; 194: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 225
	i32 1292207520, ; 195: SQLitePCLRaw.core.dll => 0x4d0585a0 => 199
	i32 1293217323, ; 196: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 244
	i32 1308624726, ; 197: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 314
	i32 1309188875, ; 198: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1309209905, ; 199: ExoPlayer.DataSource => 0x4e08f531 => 209
	i32 1322716291, ; 200: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 287
	i32 1324164729, ; 201: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 202: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1336711579, ; 203: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 334
	i32 1364015309, ; 204: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 205: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 335
	i32 1376866003, ; 206: Xamarin.AndroidX.SavedState => 0x52114ed3 => 274
	i32 1379779777, ; 207: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1395857551, ; 208: Xamarin.AndroidX.Media.dll => 0x5333188f => 265
	i32 1402170036, ; 209: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 210: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 237
	i32 1406299041, ; 211: Xamarin.Google.Guava.FailureAccess => 0x53d26ba1 => 294
	i32 1408764838, ; 212: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 213: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 214: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 215: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 303
	i32 1434145427, ; 216: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 217: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 291
	i32 1439761251, ; 218: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 219: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 220: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 221: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 222: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461004990, ; 223: es\Microsoft.Maui.Controls.resources => 0x57152abe => 309
	i32 1461234159, ; 224: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 225: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 226: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 227: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 227
	i32 1470490898, ; 228: Microsoft.Extensions.Primitives => 0x57a5e912 => 186
	i32 1479771757, ; 229: System.Collections.Immutable => 0x5833866d => 9
	i32 1480156764, ; 230: ExoPlayer.DataSource.dll => 0x5839665c => 209
	i32 1480492111, ; 231: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 232: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 233: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 275
	i32 1526286932, ; 234: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 333
	i32 1536373174, ; 235: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 236: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 237: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 238: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1565862583, ; 239: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 240: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 241: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1575375756, ; 242: Polly.Core => 0x5de6538c => 195
	i32 1580037396, ; 243: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582372066, ; 244: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 243
	i32 1592978981, ; 245: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 246: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 292
	i32 1601112923, ; 247: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 248: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 249: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 250: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 263
	i32 1622358360, ; 251: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 252: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 286
	i32 1634654947, ; 253: CommunityToolkit.Maui.Core.dll => 0x616edae3 => 174
	i32 1635184631, ; 254: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 247
	i32 1636350590, ; 255: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 240
	i32 1638652436, ; 256: CommunityToolkit.Maui.MediaElement => 0x61abda14 => 175
	i32 1639515021, ; 257: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 258: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 259: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 260: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 261: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 280
	i32 1658251792, ; 262: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 289
	i32 1670060433, ; 263: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 235
	i32 1675553242, ; 264: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 265: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 266: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 267: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 268: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 269: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 270: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 298
	i32 1700397376, ; 271: ExoPlayer.Transformer => 0x655a0140 => 215
	i32 1701541528, ; 272: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1711441057, ; 273: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 200
	i32 1720223769, ; 274: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 256
	i32 1726116996, ; 275: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 276: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 277: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 231
	i32 1743415430, ; 278: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 304
	i32 1744735666, ; 279: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 280: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 281: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 282: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 283: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765620304, ; 284: ExoPlayer.Core => 0x693d3a50 => 206
	i32 1765942094, ; 285: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 286: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 279
	i32 1770582343, ; 287: Microsoft.Extensions.Logging.dll => 0x6988f147 => 182
	i32 1776026572, ; 288: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 289: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 290: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 291: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 320
	i32 1788241197, ; 292: Xamarin.AndroidX.Fragment => 0x6a96652d => 249
	i32 1793755602, ; 293: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 312
	i32 1808609942, ; 294: Xamarin.AndroidX.Loader => 0x6bcd3296 => 263
	i32 1813058853, ; 295: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 297
	i32 1813201214, ; 296: Xamarin.Google.Android.Material => 0x6c13413e => 289
	i32 1818569960, ; 297: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 269
	i32 1818787751, ; 298: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 299: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 300: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 301: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 183
	i32 1847515442, ; 302: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 218
	i32 1853025655, ; 303: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 329
	i32 1858542181, ; 304: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 305: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1875935024, ; 306: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 311
	i32 1879696579, ; 307: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 308: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 229
	i32 1888955245, ; 309: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 310: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1893218855, ; 311: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 305
	i32 1898237753, ; 312: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 313: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 314: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1926145099, ; 315: ExoPlayer.Container.dll => 0x72cea44b => 205
	i32 1939592360, ; 316: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1953182387, ; 317: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 316
	i32 1956758971, ; 318: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 319: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 276
	i32 1968388702, ; 320: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 178
	i32 1983156543, ; 321: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 298
	i32 1985761444, ; 322: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 220
	i32 2003115576, ; 323: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 308
	i32 2011961780, ; 324: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 325: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 260
	i32 2031763787, ; 326: Xamarin.Android.Glide => 0x791a414b => 217
	i32 2045470958, ; 327: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 328: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 255
	i32 2060060697, ; 329: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 330: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 307
	i32 2070888862, ; 331: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 332: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090495875, ; 333: SQLitePCLRaw.provider.dynamic_cdecl => 0x7c9a6f83 => 201
	i32 2090596640, ; 334: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2103459038, ; 335: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 202
	i32 2106312818, ; 336: ExoPlayer.Decoder => 0x7d8bc872 => 210
	i32 2113912252, ; 337: ExoPlayer.UI => 0x7dffbdbc => 216
	i32 2127167465, ; 338: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 339: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 340: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 341: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 342: Microsoft.Maui => 0x80bd55ad => 190
	i32 2169148018, ; 343: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 315
	i32 2181898931, ; 344: Microsoft.Extensions.Options.dll => 0x820d22b3 => 185
	i32 2192057212, ; 345: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 183
	i32 2193016926, ; 346: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 347: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 302
	i32 2201231467, ; 348: System.Net.Http => 0x8334206b => 64
	i32 2202964214, ; 349: ExoPlayer.dll => 0x834e90f6 => 203
	i32 2207618523, ; 350: it\Microsoft.Maui.Controls.resources => 0x839595db => 317
	i32 2217644978, ; 351: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 283
	i32 2222056684, ; 352: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2239138732, ; 353: ExoPlayer.SmoothStreaming => 0x85768bac => 214
	i32 2244775296, ; 354: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 264
	i32 2252106437, ; 355: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2256313426, ; 356: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 357: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 358: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 179
	i32 2267999099, ; 359: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 219
	i32 2279755925, ; 360: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 272
	i32 2293034957, ; 361: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 362: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 363: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 364: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 321
	i32 2305521784, ; 365: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 366: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 223
	i32 2320631194, ; 367: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 368: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 369: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 370: System.Net.Primitives => 0x8c40e0db => 70
	i32 2366048013, ; 371: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 315
	i32 2368005991, ; 372: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2371007202, ; 373: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 178
	i32 2378619854, ; 374: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 375: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 376: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 316
	i32 2401565422, ; 377: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 378: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 246
	i32 2421380589, ; 379: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 380: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 233
	i32 2427813419, ; 381: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 313
	i32 2435356389, ; 382: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 383: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2437192331, ; 384: CommunityToolkit.Maui.MediaElement.dll => 0x91449a8b => 175
	i32 2454642406, ; 385: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 386: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 387: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465273461, ; 388: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 198
	i32 2465532216, ; 389: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 236
	i32 2471841756, ; 390: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 391: Java.Interop.dll => 0x93918882 => 168
	i32 2476233210, ; 392: ExoPlayer => 0x939851fa => 203
	i32 2480646305, ; 393: Microsoft.Maui.Controls => 0x93dba8a1 => 188
	i32 2483903535, ; 394: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 395: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 396: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 397: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2503351294, ; 398: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 319
	i32 2505896520, ; 399: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 258
	i32 2515854816, ; 400: ExoPlayer.Common => 0x95f4e5e0 => 204
	i32 2522472828, ; 401: Xamarin.Android.Glide.dll => 0x9659e17c => 217
	i32 2538310050, ; 402: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 403: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 314
	i32 2562349572, ; 404: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 405: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2576534780, ; 406: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 318
	i32 2581783588, ; 407: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 259
	i32 2581819634, ; 408: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 282
	i32 2585220780, ; 409: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 410: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 411: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2593496499, ; 412: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 323
	i32 2605712449, ; 413: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 302
	i32 2615233544, ; 414: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 250
	i32 2616218305, ; 415: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 184
	i32 2617129537, ; 416: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 417: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 418: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 240
	i32 2624644809, ; 419: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 245
	i32 2626028643, ; 420: ExoPlayer.Rtsp.dll => 0x9c860463 => 213
	i32 2626831493, ; 421: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 318
	i32 2627185994, ; 422: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 423: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 424: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 254
	i32 2663391936, ; 425: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 219
	i32 2663698177, ; 426: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 427: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 428: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 429: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 430: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 431: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 432: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 280
	i32 2713040075, ; 433: ExoPlayer.Hls => 0xa1b5b4cb => 212
	i32 2715334215, ; 434: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 435: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 436: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 437: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 438: Xamarin.AndroidX.Activity => 0xa2e0939b => 221
	i32 2735172069, ; 439: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 440: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 227
	i32 2740698338, ; 441: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 304
	i32 2740948882, ; 442: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 443: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 444: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 324
	i32 2758225723, ; 445: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 189
	i32 2764765095, ; 446: Microsoft.Maui.dll => 0xa4caf7a7 => 190
	i32 2765824710, ; 447: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 448: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 296
	i32 2778768386, ; 449: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 285
	i32 2779977773, ; 450: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 273
	i32 2785988530, ; 451: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 330
	i32 2788224221, ; 452: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 250
	i32 2793052035, ; 453: MAUIComberilla => 0xa67a9783 => 0
	i32 2796087574, ; 454: ExoPlayer.Extractor.dll => 0xa6a8e916 => 211
	i32 2801831435, ; 455: Microsoft.Maui.Graphics => 0xa7008e0b => 192
	i32 2803228030, ; 456: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2810250172, ; 457: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 237
	i32 2819470561, ; 458: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 459: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 460: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 273
	i32 2824502124, ; 461: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2838993487, ; 462: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 261
	i32 2849599387, ; 463: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 464: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 285
	i32 2855708567, ; 465: Xamarin.AndroidX.Transition => 0xaa36a797 => 281
	i32 2861098320, ; 466: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 467: Microsoft.Maui.Essentials => 0xaa8a4878 => 191
	i32 2868488919, ; 468: CommunityToolkit.Maui.Core => 0xaaf9aad7 => 174
	i32 2870099610, ; 469: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 222
	i32 2875164099, ; 470: Jsr305Binding.dll => 0xab5f85c3 => 290
	i32 2875220617, ; 471: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 472: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 248
	i32 2887636118, ; 473: System.Net.dll => 0xac1dd496 => 81
	i32 2899753641, ; 474: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 475: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 476: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 477: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 478: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2916838712, ; 479: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 286
	i32 2919462931, ; 480: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 481: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 224
	i32 2936416060, ; 482: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 483: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 484: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 485: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2960379616, ; 486: Xamarin.Google.Guava => 0xb073cee0 => 293
	i32 2968338931, ; 487: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 488: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 489: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 244
	i32 2987532451, ; 490: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 276
	i32 2996846495, ; 491: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 257
	i32 3016983068, ; 492: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 278
	i32 3023353419, ; 493: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 494: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 252
	i32 3027462113, ; 495: ExoPlayer.Common.dll => 0xb47367e1 => 204
	i32 3038032645, ; 496: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 337
	i32 3053864966, ; 497: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 310
	i32 3056245963, ; 498: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 275
	i32 3057625584, ; 499: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 266
	i32 3059408633, ; 500: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 501: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 502: System.Threading.Tasks => 0xb755818f => 144
	i32 3090735792, ; 503: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 504: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 505: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 506: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 507: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 508: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 509: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3144327419, ; 510: ExoPlayer.Hls.dll => 0xbb6aa0fb => 212
	i32 3147165239, ; 511: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 512: GoogleGson.dll => 0xbba64c02 => 177
	i32 3159123045, ; 513: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 514: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 515: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 267
	i32 3190271366, ; 516: ExoPlayer.Decoder.dll => 0xbe27ad86 => 210
	i32 3192346100, ; 517: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 518: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 519: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 520: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 521: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 243
	i32 3220365878, ; 522: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 523: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3249260365, ; 524: RestSharp.dll => 0xc1abc74d => 196
	i32 3251039220, ; 525: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 526: Xamarin.AndroidX.CardView => 0xc235e84d => 231
	i32 3265493905, ; 527: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 528: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 529: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 530: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 531: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3286872994, ; 532: SQLite-net.dll => 0xc3e9b3a2 => 197
	i32 3290767353, ; 533: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 534: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 535: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 536: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 310
	i32 3316684772, ; 537: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 538: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 241
	i32 3317144872, ; 539: System.Data => 0xc5b79d28 => 24
	i32 3329734229, ; 540: ExoPlayer.Database => 0xc677b655 => 208
	i32 3340431453, ; 541: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 229
	i32 3345895724, ; 542: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 271
	i32 3346324047, ; 543: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 268
	i32 3357674450, ; 544: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 327
	i32 3358260929, ; 545: System.Text.Json => 0xc82afec1 => 137
	i32 3360279109, ; 546: SQLitePCLRaw.core => 0xc849ca45 => 199
	i32 3362336904, ; 547: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 222
	i32 3362522851, ; 548: Xamarin.AndroidX.Core => 0xc86c06e3 => 238
	i32 3366347497, ; 549: Java.Interop => 0xc8a662e9 => 168
	i32 3374999561, ; 550: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 272
	i32 3381016424, ; 551: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 306
	i32 3395150330, ; 552: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3396979385, ; 553: ExoPlayer.Transformer.dll => 0xca79cab9 => 215
	i32 3403906625, ; 554: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 555: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 242
	i32 3428513518, ; 556: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 180
	i32 3429136800, ; 557: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 558: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 559: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 245
	i32 3445260447, ; 560: System.Formats.Tar => 0xcd5a809f => 39
	i32 3448896322, ; 561: Polly => 0xcd91fb42 => 194
	i32 3452344032, ; 562: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 187
	i32 3458724246, ; 563: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 325
	i32 3471940407, ; 564: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 565: Mono.Android => 0xcf3163e6 => 171
	i32 3484440000, ; 566: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 326
	i32 3485117614, ; 567: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 568: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 569: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 234
	i32 3509114376, ; 570: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 571: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 572: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 573: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3560100363, ; 574: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 575: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3580758918, ; 576: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 334
	i32 3592228221, ; 577: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 336
	i32 3597029428, ; 578: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 220
	i32 3598340787, ; 579: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 580: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 581: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 582: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 270
	i32 3633644679, ; 583: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 224
	i32 3638274909, ; 584: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 585: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 255
	i32 3643446276, ; 586: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 331
	i32 3643854240, ; 587: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 267
	i32 3645089577, ; 588: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 589: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 179
	i32 3660523487, ; 590: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 591: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 592: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 230
	i32 3684561358, ; 593: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 234
	i32 3700866549, ; 594: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 595: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 239
	i32 3716563718, ; 596: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 597: Xamarin.AndroidX.Annotation => 0xdda814c6 => 223
	i32 3724971120, ; 598: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 266
	i32 3732100267, ; 599: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 600: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 601: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 602: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3751619990, ; 603: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 306
	i32 3754567612, ; 604: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 202
	i32 3786282454, ; 605: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 232
	i32 3792276235, ; 606: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 607: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 187
	i32 3802395368, ; 608: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3816437471, ; 609: RestSharp => 0xe37a36df => 196
	i32 3817368567, ; 610: CommunityToolkit.Maui.dll => 0xe3886bf7 => 173
	i32 3819260425, ; 611: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3822602673, ; 612: Xamarin.AndroidX.Media => 0xe3d849b1 => 265
	i32 3823082795, ; 613: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 614: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 615: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 181
	i32 3844307129, ; 616: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 617: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 618: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 619: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 620: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3876362041, ; 621: SQLite-net => 0xe70c9739 => 197
	i32 3885497537, ; 622: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 623: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 281
	i32 3888767677, ; 624: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 271
	i32 3896106733, ; 625: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 626: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 238
	i32 3901907137, ; 627: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920221145, ; 628: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 322
	i32 3920810846, ; 629: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 630: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 284
	i32 3928044579, ; 631: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 632: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 633: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 269
	i32 3945713374, ; 634: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 635: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 636: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 226
	i32 3959773229, ; 637: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 257
	i32 4003436829, ; 638: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 639: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 225
	i32 4025784931, ; 640: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 641: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 189
	i32 4054681211, ; 642: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 643: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 644: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4091086043, ; 645: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 308
	i32 4094352644, ; 646: Microsoft.Maui.Essentials.dll => 0xf40add04 => 191
	i32 4099507663, ; 647: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 648: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 649: Xamarin.AndroidX.Emoji2 => 0xf479582c => 246
	i32 4103439459, ; 650: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 332
	i32 4126470640, ; 651: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 180
	i32 4127667938, ; 652: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 653: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 654: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 655: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 332
	i32 4151237749, ; 656: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 657: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 658: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 659: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4173364138, ; 660: ExoPlayer.SmoothStreaming.dll => 0xf8c07baa => 214
	i32 4181436372, ; 661: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 662: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 262
	i32 4185676441, ; 663: System.Security => 0xf97c5a99 => 130
	i32 4190597220, ; 664: ExoPlayer.Core.dll => 0xf9c77064 => 206
	i32 4196529839, ; 665: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 666: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4249188766, ; 667: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 321
	i32 4256097574, ; 668: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 239
	i32 4258378803, ; 669: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 261
	i32 4260525087, ; 670: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 671: Microsoft.Maui.Controls.dll => 0xfea12dee => 188
	i32 4274623895, ; 672: CommunityToolkit.Mvvm.dll => 0xfec99597 => 176
	i32 4274976490, ; 673: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 674: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 262
	i32 4294763496 ; 675: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 248
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [676 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 258, ; 3
	i32 295, ; 4
	i32 48, ; 5
	i32 303, ; 6
	i32 193, ; 7
	i32 80, ; 8
	i32 312, ; 9
	i32 145, ; 10
	i32 30, ; 11
	i32 336, ; 12
	i32 124, ; 13
	i32 192, ; 14
	i32 102, ; 15
	i32 320, ; 16
	i32 277, ; 17
	i32 107, ; 18
	i32 277, ; 19
	i32 139, ; 20
	i32 299, ; 21
	i32 335, ; 22
	i32 328, ; 23
	i32 77, ; 24
	i32 124, ; 25
	i32 13, ; 26
	i32 232, ; 27
	i32 132, ; 28
	i32 279, ; 29
	i32 151, ; 30
	i32 18, ; 31
	i32 230, ; 32
	i32 26, ; 33
	i32 252, ; 34
	i32 1, ; 35
	i32 59, ; 36
	i32 42, ; 37
	i32 91, ; 38
	i32 235, ; 39
	i32 294, ; 40
	i32 147, ; 41
	i32 254, ; 42
	i32 251, ; 43
	i32 54, ; 44
	i32 207, ; 45
	i32 69, ; 46
	i32 333, ; 47
	i32 221, ; 48
	i32 83, ; 49
	i32 311, ; 50
	i32 253, ; 51
	i32 200, ; 52
	i32 131, ; 53
	i32 55, ; 54
	i32 149, ; 55
	i32 74, ; 56
	i32 145, ; 57
	i32 62, ; 58
	i32 146, ; 59
	i32 337, ; 60
	i32 165, ; 61
	i32 331, ; 62
	i32 236, ; 63
	i32 12, ; 64
	i32 249, ; 65
	i32 125, ; 66
	i32 208, ; 67
	i32 152, ; 68
	i32 113, ; 69
	i32 166, ; 70
	i32 164, ; 71
	i32 251, ; 72
	i32 264, ; 73
	i32 309, ; 74
	i32 84, ; 75
	i32 186, ; 76
	i32 150, ; 77
	i32 299, ; 78
	i32 60, ; 79
	i32 330, ; 80
	i32 182, ; 81
	i32 51, ; 82
	i32 103, ; 83
	i32 114, ; 84
	i32 40, ; 85
	i32 290, ; 86
	i32 288, ; 87
	i32 120, ; 88
	i32 173, ; 89
	i32 52, ; 90
	i32 44, ; 91
	i32 119, ; 92
	i32 205, ; 93
	i32 241, ; 94
	i32 322, ; 95
	i32 247, ; 96
	i32 81, ; 97
	i32 136, ; 98
	i32 284, ; 99
	i32 228, ; 100
	i32 8, ; 101
	i32 73, ; 102
	i32 155, ; 103
	i32 301, ; 104
	i32 154, ; 105
	i32 92, ; 106
	i32 296, ; 107
	i32 45, ; 108
	i32 300, ; 109
	i32 109, ; 110
	i32 129, ; 111
	i32 198, ; 112
	i32 25, ; 113
	i32 201, ; 114
	i32 218, ; 115
	i32 72, ; 116
	i32 55, ; 117
	i32 46, ; 118
	i32 328, ; 119
	i32 185, ; 120
	i32 242, ; 121
	i32 22, ; 122
	i32 256, ; 123
	i32 207, ; 124
	i32 86, ; 125
	i32 43, ; 126
	i32 160, ; 127
	i32 71, ; 128
	i32 270, ; 129
	i32 313, ; 130
	i32 3, ; 131
	i32 42, ; 132
	i32 63, ; 133
	i32 327, ; 134
	i32 16, ; 135
	i32 53, ; 136
	i32 324, ; 137
	i32 295, ; 138
	i32 195, ; 139
	i32 211, ; 140
	i32 105, ; 141
	i32 193, ; 142
	i32 300, ; 143
	i32 317, ; 144
	i32 291, ; 145
	i32 253, ; 146
	i32 34, ; 147
	i32 158, ; 148
	i32 85, ; 149
	i32 32, ; 150
	i32 326, ; 151
	i32 12, ; 152
	i32 51, ; 153
	i32 56, ; 154
	i32 274, ; 155
	i32 36, ; 156
	i32 216, ; 157
	i32 181, ; 158
	i32 292, ; 159
	i32 226, ; 160
	i32 35, ; 161
	i32 307, ; 162
	i32 58, ; 163
	i32 260, ; 164
	i32 177, ; 165
	i32 17, ; 166
	i32 297, ; 167
	i32 164, ; 168
	i32 329, ; 169
	i32 323, ; 170
	i32 319, ; 171
	i32 259, ; 172
	i32 194, ; 173
	i32 184, ; 174
	i32 287, ; 175
	i32 213, ; 176
	i32 325, ; 177
	i32 153, ; 178
	i32 283, ; 179
	i32 268, ; 180
	i32 228, ; 181
	i32 29, ; 182
	i32 176, ; 183
	i32 52, ; 184
	i32 0, ; 185
	i32 288, ; 186
	i32 5, ; 187
	i32 305, ; 188
	i32 293, ; 189
	i32 278, ; 190
	i32 282, ; 191
	i32 233, ; 192
	i32 301, ; 193
	i32 225, ; 194
	i32 199, ; 195
	i32 244, ; 196
	i32 314, ; 197
	i32 85, ; 198
	i32 209, ; 199
	i32 287, ; 200
	i32 61, ; 201
	i32 112, ; 202
	i32 334, ; 203
	i32 57, ; 204
	i32 335, ; 205
	i32 274, ; 206
	i32 99, ; 207
	i32 265, ; 208
	i32 19, ; 209
	i32 237, ; 210
	i32 294, ; 211
	i32 111, ; 212
	i32 101, ; 213
	i32 102, ; 214
	i32 303, ; 215
	i32 104, ; 216
	i32 291, ; 217
	i32 71, ; 218
	i32 38, ; 219
	i32 32, ; 220
	i32 103, ; 221
	i32 73, ; 222
	i32 309, ; 223
	i32 9, ; 224
	i32 123, ; 225
	i32 46, ; 226
	i32 227, ; 227
	i32 186, ; 228
	i32 9, ; 229
	i32 209, ; 230
	i32 43, ; 231
	i32 4, ; 232
	i32 275, ; 233
	i32 333, ; 234
	i32 31, ; 235
	i32 138, ; 236
	i32 92, ; 237
	i32 93, ; 238
	i32 49, ; 239
	i32 141, ; 240
	i32 112, ; 241
	i32 195, ; 242
	i32 140, ; 243
	i32 243, ; 244
	i32 115, ; 245
	i32 292, ; 246
	i32 157, ; 247
	i32 76, ; 248
	i32 79, ; 249
	i32 263, ; 250
	i32 37, ; 251
	i32 286, ; 252
	i32 174, ; 253
	i32 247, ; 254
	i32 240, ; 255
	i32 175, ; 256
	i32 64, ; 257
	i32 138, ; 258
	i32 15, ; 259
	i32 116, ; 260
	i32 280, ; 261
	i32 289, ; 262
	i32 235, ; 263
	i32 48, ; 264
	i32 70, ; 265
	i32 80, ; 266
	i32 126, ; 267
	i32 94, ; 268
	i32 121, ; 269
	i32 298, ; 270
	i32 215, ; 271
	i32 26, ; 272
	i32 200, ; 273
	i32 256, ; 274
	i32 97, ; 275
	i32 28, ; 276
	i32 231, ; 277
	i32 304, ; 278
	i32 149, ; 279
	i32 169, ; 280
	i32 4, ; 281
	i32 98, ; 282
	i32 33, ; 283
	i32 206, ; 284
	i32 93, ; 285
	i32 279, ; 286
	i32 182, ; 287
	i32 21, ; 288
	i32 41, ; 289
	i32 170, ; 290
	i32 320, ; 291
	i32 249, ; 292
	i32 312, ; 293
	i32 263, ; 294
	i32 297, ; 295
	i32 289, ; 296
	i32 269, ; 297
	i32 2, ; 298
	i32 134, ; 299
	i32 111, ; 300
	i32 183, ; 301
	i32 218, ; 302
	i32 329, ; 303
	i32 58, ; 304
	i32 95, ; 305
	i32 311, ; 306
	i32 39, ; 307
	i32 229, ; 308
	i32 25, ; 309
	i32 94, ; 310
	i32 305, ; 311
	i32 89, ; 312
	i32 99, ; 313
	i32 10, ; 314
	i32 205, ; 315
	i32 87, ; 316
	i32 316, ; 317
	i32 100, ; 318
	i32 276, ; 319
	i32 178, ; 320
	i32 298, ; 321
	i32 220, ; 322
	i32 308, ; 323
	i32 7, ; 324
	i32 260, ; 325
	i32 217, ; 326
	i32 88, ; 327
	i32 255, ; 328
	i32 154, ; 329
	i32 307, ; 330
	i32 33, ; 331
	i32 116, ; 332
	i32 201, ; 333
	i32 82, ; 334
	i32 202, ; 335
	i32 210, ; 336
	i32 216, ; 337
	i32 20, ; 338
	i32 11, ; 339
	i32 162, ; 340
	i32 3, ; 341
	i32 190, ; 342
	i32 315, ; 343
	i32 185, ; 344
	i32 183, ; 345
	i32 84, ; 346
	i32 302, ; 347
	i32 64, ; 348
	i32 203, ; 349
	i32 317, ; 350
	i32 283, ; 351
	i32 143, ; 352
	i32 214, ; 353
	i32 264, ; 354
	i32 157, ; 355
	i32 41, ; 356
	i32 117, ; 357
	i32 179, ; 358
	i32 219, ; 359
	i32 272, ; 360
	i32 131, ; 361
	i32 75, ; 362
	i32 66, ; 363
	i32 321, ; 364
	i32 172, ; 365
	i32 223, ; 366
	i32 143, ; 367
	i32 106, ; 368
	i32 151, ; 369
	i32 70, ; 370
	i32 315, ; 371
	i32 156, ; 372
	i32 178, ; 373
	i32 121, ; 374
	i32 127, ; 375
	i32 316, ; 376
	i32 152, ; 377
	i32 246, ; 378
	i32 141, ; 379
	i32 233, ; 380
	i32 313, ; 381
	i32 20, ; 382
	i32 14, ; 383
	i32 175, ; 384
	i32 135, ; 385
	i32 75, ; 386
	i32 59, ; 387
	i32 198, ; 388
	i32 236, ; 389
	i32 167, ; 390
	i32 168, ; 391
	i32 203, ; 392
	i32 188, ; 393
	i32 15, ; 394
	i32 74, ; 395
	i32 6, ; 396
	i32 23, ; 397
	i32 319, ; 398
	i32 258, ; 399
	i32 204, ; 400
	i32 217, ; 401
	i32 91, ; 402
	i32 314, ; 403
	i32 1, ; 404
	i32 136, ; 405
	i32 318, ; 406
	i32 259, ; 407
	i32 282, ; 408
	i32 134, ; 409
	i32 69, ; 410
	i32 146, ; 411
	i32 323, ; 412
	i32 302, ; 413
	i32 250, ; 414
	i32 184, ; 415
	i32 88, ; 416
	i32 96, ; 417
	i32 240, ; 418
	i32 245, ; 419
	i32 213, ; 420
	i32 318, ; 421
	i32 31, ; 422
	i32 45, ; 423
	i32 254, ; 424
	i32 219, ; 425
	i32 109, ; 426
	i32 158, ; 427
	i32 35, ; 428
	i32 22, ; 429
	i32 114, ; 430
	i32 57, ; 431
	i32 280, ; 432
	i32 212, ; 433
	i32 144, ; 434
	i32 118, ; 435
	i32 120, ; 436
	i32 110, ; 437
	i32 221, ; 438
	i32 139, ; 439
	i32 227, ; 440
	i32 304, ; 441
	i32 54, ; 442
	i32 105, ; 443
	i32 324, ; 444
	i32 189, ; 445
	i32 190, ; 446
	i32 133, ; 447
	i32 296, ; 448
	i32 285, ; 449
	i32 273, ; 450
	i32 330, ; 451
	i32 250, ; 452
	i32 0, ; 453
	i32 211, ; 454
	i32 192, ; 455
	i32 159, ; 456
	i32 237, ; 457
	i32 163, ; 458
	i32 132, ; 459
	i32 273, ; 460
	i32 161, ; 461
	i32 261, ; 462
	i32 140, ; 463
	i32 285, ; 464
	i32 281, ; 465
	i32 169, ; 466
	i32 191, ; 467
	i32 174, ; 468
	i32 222, ; 469
	i32 290, ; 470
	i32 40, ; 471
	i32 248, ; 472
	i32 81, ; 473
	i32 56, ; 474
	i32 37, ; 475
	i32 97, ; 476
	i32 166, ; 477
	i32 172, ; 478
	i32 286, ; 479
	i32 82, ; 480
	i32 224, ; 481
	i32 98, ; 482
	i32 30, ; 483
	i32 159, ; 484
	i32 18, ; 485
	i32 293, ; 486
	i32 127, ; 487
	i32 119, ; 488
	i32 244, ; 489
	i32 276, ; 490
	i32 257, ; 491
	i32 278, ; 492
	i32 165, ; 493
	i32 252, ; 494
	i32 204, ; 495
	i32 337, ; 496
	i32 310, ; 497
	i32 275, ; 498
	i32 266, ; 499
	i32 170, ; 500
	i32 16, ; 501
	i32 144, ; 502
	i32 125, ; 503
	i32 118, ; 504
	i32 38, ; 505
	i32 115, ; 506
	i32 47, ; 507
	i32 142, ; 508
	i32 117, ; 509
	i32 212, ; 510
	i32 34, ; 511
	i32 177, ; 512
	i32 95, ; 513
	i32 53, ; 514
	i32 267, ; 515
	i32 210, ; 516
	i32 129, ; 517
	i32 153, ; 518
	i32 24, ; 519
	i32 161, ; 520
	i32 243, ; 521
	i32 148, ; 522
	i32 104, ; 523
	i32 196, ; 524
	i32 89, ; 525
	i32 231, ; 526
	i32 60, ; 527
	i32 142, ; 528
	i32 100, ; 529
	i32 5, ; 530
	i32 13, ; 531
	i32 197, ; 532
	i32 122, ; 533
	i32 135, ; 534
	i32 28, ; 535
	i32 310, ; 536
	i32 72, ; 537
	i32 241, ; 538
	i32 24, ; 539
	i32 208, ; 540
	i32 229, ; 541
	i32 271, ; 542
	i32 268, ; 543
	i32 327, ; 544
	i32 137, ; 545
	i32 199, ; 546
	i32 222, ; 547
	i32 238, ; 548
	i32 168, ; 549
	i32 272, ; 550
	i32 306, ; 551
	i32 101, ; 552
	i32 215, ; 553
	i32 123, ; 554
	i32 242, ; 555
	i32 180, ; 556
	i32 163, ; 557
	i32 167, ; 558
	i32 245, ; 559
	i32 39, ; 560
	i32 194, ; 561
	i32 187, ; 562
	i32 325, ; 563
	i32 17, ; 564
	i32 171, ; 565
	i32 326, ; 566
	i32 137, ; 567
	i32 150, ; 568
	i32 234, ; 569
	i32 155, ; 570
	i32 130, ; 571
	i32 19, ; 572
	i32 65, ; 573
	i32 147, ; 574
	i32 47, ; 575
	i32 334, ; 576
	i32 336, ; 577
	i32 220, ; 578
	i32 79, ; 579
	i32 61, ; 580
	i32 106, ; 581
	i32 270, ; 582
	i32 224, ; 583
	i32 49, ; 584
	i32 255, ; 585
	i32 331, ; 586
	i32 267, ; 587
	i32 14, ; 588
	i32 179, ; 589
	i32 68, ; 590
	i32 171, ; 591
	i32 230, ; 592
	i32 234, ; 593
	i32 78, ; 594
	i32 239, ; 595
	i32 108, ; 596
	i32 223, ; 597
	i32 266, ; 598
	i32 67, ; 599
	i32 63, ; 600
	i32 27, ; 601
	i32 160, ; 602
	i32 306, ; 603
	i32 202, ; 604
	i32 232, ; 605
	i32 10, ; 606
	i32 187, ; 607
	i32 11, ; 608
	i32 196, ; 609
	i32 173, ; 610
	i32 78, ; 611
	i32 265, ; 612
	i32 126, ; 613
	i32 83, ; 614
	i32 181, ; 615
	i32 66, ; 616
	i32 107, ; 617
	i32 65, ; 618
	i32 128, ; 619
	i32 122, ; 620
	i32 197, ; 621
	i32 77, ; 622
	i32 281, ; 623
	i32 271, ; 624
	i32 8, ; 625
	i32 238, ; 626
	i32 2, ; 627
	i32 322, ; 628
	i32 44, ; 629
	i32 284, ; 630
	i32 156, ; 631
	i32 128, ; 632
	i32 269, ; 633
	i32 23, ; 634
	i32 133, ; 635
	i32 226, ; 636
	i32 257, ; 637
	i32 29, ; 638
	i32 225, ; 639
	i32 62, ; 640
	i32 189, ; 641
	i32 90, ; 642
	i32 87, ; 643
	i32 148, ; 644
	i32 308, ; 645
	i32 191, ; 646
	i32 36, ; 647
	i32 86, ; 648
	i32 246, ; 649
	i32 332, ; 650
	i32 180, ; 651
	i32 50, ; 652
	i32 6, ; 653
	i32 90, ; 654
	i32 332, ; 655
	i32 21, ; 656
	i32 162, ; 657
	i32 96, ; 658
	i32 50, ; 659
	i32 214, ; 660
	i32 113, ; 661
	i32 262, ; 662
	i32 130, ; 663
	i32 206, ; 664
	i32 76, ; 665
	i32 27, ; 666
	i32 321, ; 667
	i32 239, ; 668
	i32 261, ; 669
	i32 7, ; 670
	i32 188, ; 671
	i32 176, ; 672
	i32 110, ; 673
	i32 262, ; 674
	i32 248 ; 675
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

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
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ af27162bee43b7fecdca59b4f67aa8c175cbc875"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
