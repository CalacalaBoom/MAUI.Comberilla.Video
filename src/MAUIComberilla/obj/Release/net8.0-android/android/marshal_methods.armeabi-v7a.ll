; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [169 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [338 x i32] [
	i32 34715100, ; 0: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 106
	i32 38948123, ; 1: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 0
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 53
	i32 42244203, ; 3: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 9
	i32 42639949, ; 4: System.Threading.Thread => 0x28aa24d => 156
	i32 67008169, ; 5: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 72070932, ; 6: Microsoft.Maui.Graphics.dll => 0x44bb714 => 52
	i32 83839681, ; 7: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 17
	i32 117431740, ; 8: System.Runtime.InteropServices => 0x6ffddbc => 145
	i32 136584136, ; 9: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 32
	i32 140062828, ; 10: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 25
	i32 165246403, ; 11: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 82
	i32 182336117, ; 12: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 101
	i32 205061960, ; 13: System.ComponentModel => 0xc38ff48 => 118
	i32 209399409, ; 14: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 80
	i32 230752869, ; 15: Microsoft.CSharp.dll => 0xdc10265 => 110
	i32 246610117, ; 16: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 142
	i32 293579439, ; 17: ExoPlayer.Dash.dll => 0x117faaaf => 67
	i32 317674968, ; 18: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 19: Xamarin.AndroidX.Activity.dll => 0x13031348 => 77
	i32 321963286, ; 20: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 8
	i32 342366114, ; 21: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 89
	i32 347068432, ; 22: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 60
	i32 379916513, ; 23: System.Threading.Thread.dll => 0x16a510e1 => 156
	i32 385762202, ; 24: System.Memory.dll => 0x16fe439a => 130
	i32 395744057, ; 25: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 409257351, ; 26: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 28
	i32 442565967, ; 27: System.Collections => 0x1a61054f => 115
	i32 450948140, ; 28: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 88
	i32 452127346, ; 29: ExoPlayer.Database.dll => 0x1af2ea72 => 68
	i32 456227837, ; 30: System.Web.HttpUtility.dll => 0x1b317bfd => 158
	i32 459347974, ; 31: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 149
	i32 469710990, ; 32: System.dll => 0x1bff388e => 163
	i32 489220957, ; 33: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 6
	i32 498788369, ; 34: System.ObjectModel => 0x1dbae811 => 137
	i32 513247710, ; 35: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 46
	i32 538707440, ; 36: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 27
	i32 539058512, ; 37: Microsoft.Extensions.Logging => 0x20216150 => 43
	i32 597488923, ; 38: CommunityToolkit.Maui => 0x239cf51b => 35
	i32 626887733, ; 39: ExoPlayer.Container => 0x255d8c35 => 65
	i32 627609679, ; 40: Xamarin.AndroidX.CustomView => 0x2568904f => 86
	i32 627931235, ; 41: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 662205335, ; 42: System.Text.Encodings.Web.dll => 0x27787397 => 153
	i32 663517072, ; 43: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 102
	i32 672442732, ; 44: System.Collections.Concurrent => 0x2814a96c => 111
	i32 683518922, ; 45: System.Net.Security => 0x28bdabca => 135
	i32 690569205, ; 46: System.Xml.Linq.dll => 0x29293ff5 => 159
	i32 722857257, ; 47: System.Runtime.Loader.dll => 0x2b15ed29 => 146
	i32 748832960, ; 48: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 58
	i32 752882528, ; 49: SQLitePCLRaw.provider.dynamic_cdecl.dll => 0x2ce01360 => 61
	i32 759454413, ; 50: System.Net.Requests => 0x2d445acd => 134
	i32 775507847, ; 51: System.IO.Compression => 0x2e394f87 => 127
	i32 777317022, ; 52: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 53: Microsoft.Extensions.Options => 0x2f0980eb => 45
	i32 804715423, ; 54: System.Data.Common => 0x2ff6fb9f => 120
	i32 812693636, ; 55: ExoPlayer.Dash => 0x3070b884 => 67
	i32 823281589, ; 56: System.Private.Uri.dll => 0x311247b5 => 138
	i32 830298997, ; 57: System.IO.Compression.Brotli => 0x317d5b75 => 126
	i32 869139383, ; 58: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 10
	i32 880668424, ; 59: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 24
	i32 904024072, ; 60: System.ComponentModel.Primitives.dll => 0x35e25008 => 116
	i32 918734561, ; 61: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 21
	i32 928116545, ; 62: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 106
	i32 939431778, ; 63: Polly.Core.dll => 0x37fe9762 => 55
	i32 939704684, ; 64: ExoPlayer.Extractor => 0x3802c16c => 71
	i32 955402788, ; 65: Newtonsoft.Json => 0x38f24a24 => 53
	i32 961460050, ; 66: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 14
	i32 967690846, ; 67: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 89
	i32 975874589, ; 68: System.Xml.XDocument => 0x3a2aaa1d => 161
	i32 990727110, ; 69: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 23
	i32 992768348, ; 70: System.Collections.dll => 0x3b2c715c => 115
	i32 1012816738, ; 71: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 100
	i32 1019214401, ; 72: System.Drawing => 0x3cbffa41 => 124
	i32 1028013380, ; 73: ExoPlayer.UI.dll => 0x3d463d44 => 76
	i32 1028951442, ; 74: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 42
	i32 1035644815, ; 75: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 78
	i32 1036536393, ; 76: System.Drawing.Primitives.dll => 0x3dc84a49 => 123
	i32 1043950537, ; 77: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 4
	i32 1044663988, ; 78: System.Linq.Expressions.dll => 0x3e444eb4 => 128
	i32 1052210849, ; 79: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 91
	i32 1082857460, ; 80: System.ComponentModel.TypeConverter => 0x408b17f4 => 117
	i32 1084122840, ; 81: Xamarin.Kotlin.StdLib => 0x409e66d8 => 107
	i32 1098259244, ; 82: System => 0x41761b2c => 163
	i32 1108272742, ; 83: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 26
	i32 1117529484, ; 84: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 20
	i32 1118262833, ; 85: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1127295045, ; 86: Polly.dll => 0x43312845 => 54
	i32 1151313727, ; 87: ExoPlayer.Rtsp => 0x449fa73f => 73
	i32 1168523401, ; 88: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1178241025, ; 89: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 97
	i32 1214827643, ; 90: CommunityToolkit.Mvvm => 0x4868cc7b => 38
	i32 1237307280, ; 91: MAUIComberilla.dll => 0x49bfcf90 => 109
	i32 1260983243, ; 92: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1292207520, ; 93: SQLitePCLRaw.core.dll => 0x4d0585a0 => 59
	i32 1293217323, ; 94: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 87
	i32 1308624726, ; 95: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 11
	i32 1309209905, ; 96: ExoPlayer.DataSource => 0x4e08f531 => 69
	i32 1324164729, ; 97: System.Linq => 0x4eed2679 => 129
	i32 1336711579, ; 98: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 31
	i32 1373134921, ; 99: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 100: Xamarin.AndroidX.SavedState => 0x52114ed3 => 100
	i32 1395857551, ; 101: Xamarin.AndroidX.Media.dll => 0x5333188f => 94
	i32 1406073936, ; 102: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 83
	i32 1408764838, ; 103: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 148
	i32 1430672901, ; 104: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1452070440, ; 105: System.Formats.Asn1.dll => 0x568cd628 => 125
	i32 1458022317, ; 106: System.Net.Security.dll => 0x56e7a7ad => 135
	i32 1461004990, ; 107: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1461234159, ; 108: System.Collections.Immutable.dll => 0x5718a9ef => 112
	i32 1462112819, ; 109: System.IO.Compression.dll => 0x57261233 => 127
	i32 1469204771, ; 110: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 79
	i32 1470490898, ; 111: Microsoft.Extensions.Primitives => 0x57a5e912 => 46
	i32 1479771757, ; 112: System.Collections.Immutable => 0x5833866d => 112
	i32 1480156764, ; 113: ExoPlayer.DataSource.dll => 0x5839665c => 69
	i32 1480492111, ; 114: System.IO.Compression.Brotli.dll => 0x583e844f => 126
	i32 1526286932, ; 115: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 30
	i32 1543031311, ; 116: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 155
	i32 1575375756, ; 117: Polly.Core => 0x5de6538c => 55
	i32 1622152042, ; 118: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 93
	i32 1624863272, ; 119: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 104
	i32 1634654947, ; 120: CommunityToolkit.Maui.Core.dll => 0x616edae3 => 36
	i32 1636350590, ; 121: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 85
	i32 1638652436, ; 122: CommunityToolkit.Maui.MediaElement => 0x61abda14 => 37
	i32 1639515021, ; 123: System.Net.Http.dll => 0x61b9038d => 131
	i32 1639986890, ; 124: System.Text.RegularExpressions => 0x61c036ca => 155
	i32 1657153582, ; 125: System.Runtime => 0x62c6282e => 150
	i32 1658251792, ; 126: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 105
	i32 1677501392, ; 127: System.Net.Primitives.dll => 0x63fca3d0 => 133
	i32 1679769178, ; 128: System.Security.Cryptography => 0x641f3e5a => 151
	i32 1700397376, ; 129: ExoPlayer.Transformer => 0x655a0140 => 75
	i32 1711441057, ; 130: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 60
	i32 1729485958, ; 131: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 81
	i32 1743415430, ; 132: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1763938596, ; 133: System.Diagnostics.TraceSource.dll => 0x69239124 => 122
	i32 1765620304, ; 134: ExoPlayer.Core => 0x693d3a50 => 66
	i32 1766324549, ; 135: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 101
	i32 1770582343, ; 136: Microsoft.Extensions.Logging.dll => 0x6988f147 => 43
	i32 1780572499, ; 137: Mono.Android.Runtime.dll => 0x6a216153 => 167
	i32 1782862114, ; 138: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 139: Xamarin.AndroidX.Fragment => 0x6a96652d => 88
	i32 1793755602, ; 140: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1808609942, ; 141: Xamarin.AndroidX.Loader => 0x6bcd3296 => 93
	i32 1813058853, ; 142: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 107
	i32 1813201214, ; 143: Xamarin.Google.Android.Material => 0x6c13413e => 105
	i32 1818569960, ; 144: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 98
	i32 1824175904, ; 145: System.Text.Encoding.Extensions => 0x6cbab720 => 152
	i32 1824722060, ; 146: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 148
	i32 1828688058, ; 147: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 44
	i32 1853025655, ; 148: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 149: System.Linq.Expressions => 0x6ec71a65 => 128
	i32 1870277092, ; 150: System.Reflection.Primitives => 0x6f7a29e4 => 143
	i32 1875935024, ; 151: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1893218855, ; 152: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 2
	i32 1910275211, ; 153: System.Collections.NonGeneric.dll => 0x71dc7c8b => 113
	i32 1926145099, ; 154: ExoPlayer.Container.dll => 0x72cea44b => 65
	i32 1939592360, ; 155: System.Private.Xml.Linq => 0x739bd4a8 => 139
	i32 1953182387, ; 156: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 13
	i32 1968388702, ; 157: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 39
	i32 2003115576, ; 158: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2019465201, ; 159: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 91
	i32 2045470958, ; 160: System.Private.Xml => 0x79eb68ee => 140
	i32 2055257422, ; 161: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 90
	i32 2066184531, ; 162: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2070888862, ; 163: System.Diagnostics.TraceSource => 0x7b6f419e => 122
	i32 2079903147, ; 164: System.Runtime.dll => 0x7bf8cdab => 150
	i32 2090495875, ; 165: SQLitePCLRaw.provider.dynamic_cdecl => 0x7c9a6f83 => 61
	i32 2090596640, ; 166: System.Numerics.Vectors => 0x7c9bf920 => 136
	i32 2103459038, ; 167: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 62
	i32 2106312818, ; 168: ExoPlayer.Decoder => 0x7d8bc872 => 70
	i32 2113912252, ; 169: ExoPlayer.UI => 0x7dffbdbc => 76
	i32 2127167465, ; 170: System.Console => 0x7ec9ffe9 => 119
	i32 2142473426, ; 171: System.Collections.Specialized => 0x7fb38cd2 => 114
	i32 2143790110, ; 172: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2159891885, ; 173: Microsoft.Maui => 0x80bd55ad => 50
	i32 2169148018, ; 174: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2181898931, ; 175: Microsoft.Extensions.Options.dll => 0x820d22b3 => 45
	i32 2192057212, ; 176: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 44
	i32 2193016926, ; 177: System.ObjectModel.dll => 0x82b6c85e => 137
	i32 2201107256, ; 178: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 108
	i32 2201231467, ; 179: System.Net.Http => 0x8334206b => 131
	i32 2202964214, ; 180: ExoPlayer.dll => 0x834e90f6 => 63
	i32 2207618523, ; 181: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2239138732, ; 182: ExoPlayer.SmoothStreaming => 0x85768bac => 74
	i32 2266799131, ; 183: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 40
	i32 2279755925, ; 184: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 99
	i32 2298471582, ; 185: System.Net.Mail => 0x88ffe49e => 132
	i32 2303942373, ; 186: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 187: System.Private.CoreLib.dll => 0x896b7878 => 165
	i32 2340441535, ; 188: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 144
	i32 2353062107, ; 189: System.Net.Primitives => 0x8c40e0db => 133
	i32 2366048013, ; 190: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 12
	i32 2368005991, ; 191: System.Xml.ReaderWriter.dll => 0x8d24e767 => 160
	i32 2371007202, ; 192: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 39
	i32 2395872292, ; 193: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2401565422, ; 194: System.Web.HttpUtility => 0x8f24faee => 158
	i32 2427813419, ; 195: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2435356389, ; 196: System.Console.dll => 0x912896e5 => 119
	i32 2437192331, ; 197: CommunityToolkit.Maui.MediaElement.dll => 0x91449a8b => 37
	i32 2465273461, ; 198: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 58
	i32 2471841756, ; 199: netstandard.dll => 0x93554fdc => 164
	i32 2475788418, ; 200: Java.Interop.dll => 0x93918882 => 166
	i32 2476233210, ; 201: ExoPlayer => 0x939851fa => 63
	i32 2480646305, ; 202: Microsoft.Maui.Controls => 0x93dba8a1 => 48
	i32 2503351294, ; 203: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 16
	i32 2515854816, ; 204: ExoPlayer.Common => 0x95f4e5e0 => 64
	i32 2538310050, ; 205: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 142
	i32 2550873716, ; 206: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2562349572, ; 207: Microsoft.CSharp => 0x98ba5a04 => 110
	i32 2570120770, ; 208: System.Text.Encodings.Web => 0x9930ee42 => 153
	i32 2576534780, ; 209: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 15
	i32 2585220780, ; 210: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 152
	i32 2593496499, ; 211: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 212: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 108
	i32 2617129537, ; 213: System.Private.Xml.dll => 0x9bfe3a41 => 140
	i32 2620871830, ; 214: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 85
	i32 2626028643, ; 215: ExoPlayer.Rtsp.dll => 0x9c860463 => 73
	i32 2626831493, ; 216: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2663698177, ; 217: System.Runtime.Loader => 0x9ec4cf01 => 146
	i32 2664396074, ; 218: System.Xml.XDocument.dll => 0x9ecf752a => 161
	i32 2665622720, ; 219: System.Drawing.Primitives => 0x9ee22cc0 => 123
	i32 2676780864, ; 220: System.Data.Common.dll => 0x9f8c6f40 => 120
	i32 2713040075, ; 221: ExoPlayer.Hls => 0xa1b5b4cb => 72
	i32 2724373263, ; 222: System.Runtime.Numerics.dll => 0xa262a30f => 147
	i32 2732626843, ; 223: Xamarin.AndroidX.Activity => 0xa2e0939b => 77
	i32 2737747696, ; 224: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 79
	i32 2740698338, ; 225: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 1
	i32 2752995522, ; 226: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2758225723, ; 227: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 49
	i32 2764765095, ; 228: Microsoft.Maui.dll => 0xa4caf7a7 => 50
	i32 2778768386, ; 229: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 103
	i32 2785988530, ; 230: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2793052035, ; 231: MAUIComberilla => 0xa67a9783 => 109
	i32 2796087574, ; 232: ExoPlayer.Extractor.dll => 0xa6a8e916 => 71
	i32 2801831435, ; 233: Microsoft.Maui.Graphics => 0xa7008e0b => 52
	i32 2810250172, ; 234: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 83
	i32 2853208004, ; 235: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 103
	i32 2861189240, ; 236: Microsoft.Maui.Essentials => 0xaa8a4878 => 51
	i32 2868488919, ; 237: CommunityToolkit.Maui.Core => 0xaaf9aad7 => 36
	i32 2909740682, ; 238: System.Private.CoreLib => 0xad6f1e8a => 165
	i32 2916838712, ; 239: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 104
	i32 2919462931, ; 240: System.Numerics.Vectors.dll => 0xae037813 => 136
	i32 2959614098, ; 241: System.ComponentModel.dll => 0xb0682092 => 118
	i32 2978675010, ; 242: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 87
	i32 3027462113, ; 243: ExoPlayer.Common.dll => 0xb47367e1 => 64
	i32 3038032645, ; 244: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3053864966, ; 245: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 7
	i32 3057625584, ; 246: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 95
	i32 3059408633, ; 247: Mono.Android.Runtime => 0xb65adef9 => 167
	i32 3059793426, ; 248: System.ComponentModel.Primitives => 0xb660be12 => 116
	i32 3103600923, ; 249: System.Formats.Asn1 => 0xb8fd311b => 125
	i32 3144327419, ; 250: ExoPlayer.Hls.dll => 0xbb6aa0fb => 72
	i32 3159123045, ; 251: System.Reflection.Primitives.dll => 0xbc4c6465 => 143
	i32 3178803400, ; 252: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 96
	i32 3190271366, ; 253: ExoPlayer.Decoder.dll => 0xbe27ad86 => 70
	i32 3220365878, ; 254: System.Threading => 0xbff2e236 => 157
	i32 3249260365, ; 255: RestSharp.dll => 0xc1abc74d => 56
	i32 3258312781, ; 256: Xamarin.AndroidX.CardView => 0xc235e84d => 81
	i32 3286872994, ; 257: SQLite-net.dll => 0xc3e9b3a2 => 57
	i32 3305363605, ; 258: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 259: System.Net.Requests.dll => 0xc5b097e4 => 134
	i32 3317135071, ; 260: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 86
	i32 3329734229, ; 261: ExoPlayer.Database => 0xc677b655 => 68
	i32 3346324047, ; 262: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 97
	i32 3357674450, ; 263: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3358260929, ; 264: System.Text.Json => 0xc82afec1 => 154
	i32 3360279109, ; 265: SQLitePCLRaw.core => 0xc849ca45 => 59
	i32 3362522851, ; 266: Xamarin.AndroidX.Core => 0xc86c06e3 => 84
	i32 3366347497, ; 267: Java.Interop => 0xc8a662e9 => 166
	i32 3374999561, ; 268: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 99
	i32 3381016424, ; 269: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3396979385, ; 270: ExoPlayer.Transformer.dll => 0xca79cab9 => 75
	i32 3428513518, ; 271: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 41
	i32 3430777524, ; 272: netstandard => 0xcc7d82b4 => 164
	i32 3448896322, ; 273: Polly => 0xcd91fb42 => 54
	i32 3452344032, ; 274: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 47
	i32 3458724246, ; 275: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 22
	i32 3471940407, ; 276: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 117
	i32 3476120550, ; 277: Mono.Android => 0xcf3163e6 => 168
	i32 3484440000, ; 278: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3485117614, ; 279: System.Text.Json.dll => 0xcfbaacae => 154
	i32 3509114376, ; 280: System.Xml.Linq => 0xd128d608 => 159
	i32 3580758918, ; 281: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3592228221, ; 282: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 33
	i32 3608519521, ; 283: System.Linq.dll => 0xd715a361 => 129
	i32 3624195450, ; 284: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 144
	i32 3641597786, ; 285: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 90
	i32 3643446276, ; 286: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 287: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 96
	i32 3657292374, ; 288: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 40
	i32 3672681054, ; 289: Mono.Android.dll => 0xdae8aa5e => 168
	i32 3682565725, ; 290: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 80
	i32 3724971120, ; 291: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 95
	i32 3748608112, ; 292: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 121
	i32 3751619990, ; 293: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 3
	i32 3754567612, ; 294: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 62
	i32 3786282454, ; 295: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 82
	i32 3792276235, ; 296: System.Collections.NonGeneric => 0xe2098b0b => 113
	i32 3800979733, ; 297: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 47
	i32 3802395368, ; 298: System.Collections.Specialized.dll => 0xe2a3f2e8 => 114
	i32 3816437471, ; 299: RestSharp => 0xe37a36df => 56
	i32 3817368567, ; 300: CommunityToolkit.Maui.dll => 0xe3886bf7 => 35
	i32 3822602673, ; 301: Xamarin.AndroidX.Media => 0xe3d849b1 => 94
	i32 3823082795, ; 302: System.Security.Cryptography.dll => 0xe3df9d2b => 151
	i32 3841636137, ; 303: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 42
	i32 3844307129, ; 304: System.Net.Mail.dll => 0xe52378b9 => 132
	i32 3849253459, ; 305: System.Runtime.InteropServices.dll => 0xe56ef253 => 145
	i32 3876362041, ; 306: SQLite-net => 0xe70c9739 => 57
	i32 3896106733, ; 307: System.Collections.Concurrent.dll => 0xe839deed => 111
	i32 3896760992, ; 308: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 84
	i32 3920221145, ; 309: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 19
	i32 3921031405, ; 310: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 102
	i32 3928044579, ; 311: System.Xml.ReaderWriter => 0xea213423 => 160
	i32 3931092270, ; 312: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 98
	i32 3955647286, ; 313: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 78
	i32 4025784931, ; 314: System.Memory => 0xeff49a63 => 130
	i32 4046471985, ; 315: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 49
	i32 4054681211, ; 316: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 141
	i32 4068434129, ; 317: System.Private.Xml.Linq.dll => 0xf27f60d1 => 139
	i32 4073602200, ; 318: System.Threading.dll => 0xf2ce3c98 => 157
	i32 4091086043, ; 319: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 5
	i32 4094352644, ; 320: Microsoft.Maui.Essentials.dll => 0xf40add04 => 51
	i32 4099507663, ; 321: System.Drawing.dll => 0xf45985cf => 124
	i32 4100113165, ; 322: System.Private.Uri => 0xf462c30d => 138
	i32 4103439459, ; 323: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 29
	i32 4126470640, ; 324: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 41
	i32 4147896353, ; 325: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 141
	i32 4150914736, ; 326: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4159265925, ; 327: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4173364138, ; 328: ExoPlayer.SmoothStreaming.dll => 0xf8c07baa => 74
	i32 4181436372, ; 329: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 149
	i32 4182413190, ; 330: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 92
	i32 4190597220, ; 331: ExoPlayer.Core.dll => 0xf9c77064 => 66
	i32 4213026141, ; 332: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 121
	i32 4249188766, ; 333: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 18
	i32 4271975918, ; 334: Microsoft.Maui.Controls.dll => 0xfea12dee => 48
	i32 4274623895, ; 335: CommunityToolkit.Mvvm.dll => 0xfec99597 => 38
	i32 4274976490, ; 336: System.Runtime.Numerics => 0xfecef6ea => 147
	i32 4292120959 ; 337: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 92
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [338 x i32] [
	i32 106, ; 0
	i32 0, ; 1
	i32 53, ; 2
	i32 9, ; 3
	i32 156, ; 4
	i32 33, ; 5
	i32 52, ; 6
	i32 17, ; 7
	i32 145, ; 8
	i32 32, ; 9
	i32 25, ; 10
	i32 82, ; 11
	i32 101, ; 12
	i32 118, ; 13
	i32 80, ; 14
	i32 110, ; 15
	i32 142, ; 16
	i32 67, ; 17
	i32 30, ; 18
	i32 77, ; 19
	i32 8, ; 20
	i32 89, ; 21
	i32 60, ; 22
	i32 156, ; 23
	i32 130, ; 24
	i32 34, ; 25
	i32 28, ; 26
	i32 115, ; 27
	i32 88, ; 28
	i32 68, ; 29
	i32 158, ; 30
	i32 149, ; 31
	i32 163, ; 32
	i32 6, ; 33
	i32 137, ; 34
	i32 46, ; 35
	i32 27, ; 36
	i32 43, ; 37
	i32 35, ; 38
	i32 65, ; 39
	i32 86, ; 40
	i32 19, ; 41
	i32 153, ; 42
	i32 102, ; 43
	i32 111, ; 44
	i32 135, ; 45
	i32 159, ; 46
	i32 146, ; 47
	i32 58, ; 48
	i32 61, ; 49
	i32 134, ; 50
	i32 127, ; 51
	i32 25, ; 52
	i32 45, ; 53
	i32 120, ; 54
	i32 67, ; 55
	i32 138, ; 56
	i32 126, ; 57
	i32 10, ; 58
	i32 24, ; 59
	i32 116, ; 60
	i32 21, ; 61
	i32 106, ; 62
	i32 55, ; 63
	i32 71, ; 64
	i32 53, ; 65
	i32 14, ; 66
	i32 89, ; 67
	i32 161, ; 68
	i32 23, ; 69
	i32 115, ; 70
	i32 100, ; 71
	i32 124, ; 72
	i32 76, ; 73
	i32 42, ; 74
	i32 78, ; 75
	i32 123, ; 76
	i32 4, ; 77
	i32 128, ; 78
	i32 91, ; 79
	i32 117, ; 80
	i32 107, ; 81
	i32 163, ; 82
	i32 26, ; 83
	i32 20, ; 84
	i32 16, ; 85
	i32 54, ; 86
	i32 73, ; 87
	i32 22, ; 88
	i32 97, ; 89
	i32 38, ; 90
	i32 109, ; 91
	i32 2, ; 92
	i32 59, ; 93
	i32 87, ; 94
	i32 11, ; 95
	i32 69, ; 96
	i32 129, ; 97
	i32 31, ; 98
	i32 32, ; 99
	i32 100, ; 100
	i32 94, ; 101
	i32 83, ; 102
	i32 148, ; 103
	i32 0, ; 104
	i32 125, ; 105
	i32 135, ; 106
	i32 6, ; 107
	i32 112, ; 108
	i32 127, ; 109
	i32 79, ; 110
	i32 46, ; 111
	i32 112, ; 112
	i32 69, ; 113
	i32 126, ; 114
	i32 30, ; 115
	i32 155, ; 116
	i32 55, ; 117
	i32 93, ; 118
	i32 104, ; 119
	i32 36, ; 120
	i32 85, ; 121
	i32 37, ; 122
	i32 131, ; 123
	i32 155, ; 124
	i32 150, ; 125
	i32 105, ; 126
	i32 133, ; 127
	i32 151, ; 128
	i32 75, ; 129
	i32 60, ; 130
	i32 81, ; 131
	i32 1, ; 132
	i32 122, ; 133
	i32 66, ; 134
	i32 101, ; 135
	i32 43, ; 136
	i32 167, ; 137
	i32 17, ; 138
	i32 88, ; 139
	i32 9, ; 140
	i32 93, ; 141
	i32 107, ; 142
	i32 105, ; 143
	i32 98, ; 144
	i32 152, ; 145
	i32 148, ; 146
	i32 44, ; 147
	i32 26, ; 148
	i32 128, ; 149
	i32 143, ; 150
	i32 8, ; 151
	i32 2, ; 152
	i32 113, ; 153
	i32 65, ; 154
	i32 139, ; 155
	i32 13, ; 156
	i32 39, ; 157
	i32 5, ; 158
	i32 91, ; 159
	i32 140, ; 160
	i32 90, ; 161
	i32 4, ; 162
	i32 122, ; 163
	i32 150, ; 164
	i32 61, ; 165
	i32 136, ; 166
	i32 62, ; 167
	i32 70, ; 168
	i32 76, ; 169
	i32 119, ; 170
	i32 114, ; 171
	i32 162, ; 172
	i32 50, ; 173
	i32 12, ; 174
	i32 45, ; 175
	i32 44, ; 176
	i32 137, ; 177
	i32 108, ; 178
	i32 131, ; 179
	i32 63, ; 180
	i32 14, ; 181
	i32 74, ; 182
	i32 40, ; 183
	i32 99, ; 184
	i32 132, ; 185
	i32 18, ; 186
	i32 165, ; 187
	i32 144, ; 188
	i32 133, ; 189
	i32 12, ; 190
	i32 160, ; 191
	i32 39, ; 192
	i32 13, ; 193
	i32 158, ; 194
	i32 10, ; 195
	i32 119, ; 196
	i32 37, ; 197
	i32 58, ; 198
	i32 164, ; 199
	i32 166, ; 200
	i32 63, ; 201
	i32 48, ; 202
	i32 16, ; 203
	i32 64, ; 204
	i32 142, ; 205
	i32 11, ; 206
	i32 110, ; 207
	i32 153, ; 208
	i32 15, ; 209
	i32 152, ; 210
	i32 20, ; 211
	i32 108, ; 212
	i32 140, ; 213
	i32 85, ; 214
	i32 73, ; 215
	i32 15, ; 216
	i32 146, ; 217
	i32 161, ; 218
	i32 123, ; 219
	i32 120, ; 220
	i32 72, ; 221
	i32 147, ; 222
	i32 77, ; 223
	i32 79, ; 224
	i32 1, ; 225
	i32 21, ; 226
	i32 49, ; 227
	i32 50, ; 228
	i32 103, ; 229
	i32 27, ; 230
	i32 109, ; 231
	i32 71, ; 232
	i32 52, ; 233
	i32 83, ; 234
	i32 103, ; 235
	i32 51, ; 236
	i32 36, ; 237
	i32 165, ; 238
	i32 104, ; 239
	i32 136, ; 240
	i32 118, ; 241
	i32 87, ; 242
	i32 64, ; 243
	i32 34, ; 244
	i32 7, ; 245
	i32 95, ; 246
	i32 167, ; 247
	i32 116, ; 248
	i32 125, ; 249
	i32 72, ; 250
	i32 143, ; 251
	i32 96, ; 252
	i32 70, ; 253
	i32 157, ; 254
	i32 56, ; 255
	i32 81, ; 256
	i32 57, ; 257
	i32 7, ; 258
	i32 134, ; 259
	i32 86, ; 260
	i32 68, ; 261
	i32 97, ; 262
	i32 24, ; 263
	i32 154, ; 264
	i32 59, ; 265
	i32 84, ; 266
	i32 166, ; 267
	i32 99, ; 268
	i32 3, ; 269
	i32 75, ; 270
	i32 41, ; 271
	i32 164, ; 272
	i32 54, ; 273
	i32 47, ; 274
	i32 22, ; 275
	i32 117, ; 276
	i32 168, ; 277
	i32 23, ; 278
	i32 154, ; 279
	i32 159, ; 280
	i32 31, ; 281
	i32 33, ; 282
	i32 129, ; 283
	i32 144, ; 284
	i32 90, ; 285
	i32 28, ; 286
	i32 96, ; 287
	i32 40, ; 288
	i32 168, ; 289
	i32 80, ; 290
	i32 95, ; 291
	i32 121, ; 292
	i32 3, ; 293
	i32 62, ; 294
	i32 82, ; 295
	i32 113, ; 296
	i32 47, ; 297
	i32 114, ; 298
	i32 56, ; 299
	i32 35, ; 300
	i32 94, ; 301
	i32 151, ; 302
	i32 42, ; 303
	i32 132, ; 304
	i32 145, ; 305
	i32 57, ; 306
	i32 111, ; 307
	i32 84, ; 308
	i32 19, ; 309
	i32 102, ; 310
	i32 160, ; 311
	i32 98, ; 312
	i32 78, ; 313
	i32 130, ; 314
	i32 49, ; 315
	i32 141, ; 316
	i32 139, ; 317
	i32 157, ; 318
	i32 5, ; 319
	i32 51, ; 320
	i32 124, ; 321
	i32 138, ; 322
	i32 29, ; 323
	i32 41, ; 324
	i32 141, ; 325
	i32 29, ; 326
	i32 162, ; 327
	i32 74, ; 328
	i32 149, ; 329
	i32 92, ; 330
	i32 66, ; 331
	i32 121, ; 332
	i32 18, ; 333
	i32 48, ; 334
	i32 38, ; 335
	i32 147, ; 336
	i32 92 ; 337
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

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
!7 = !{i32 1, !"min_enum_size", i32 4}
