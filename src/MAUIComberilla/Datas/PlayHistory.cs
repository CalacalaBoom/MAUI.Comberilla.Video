using SQLite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MAUIComberilla.Datas
{
    public class PlayHistory
    {
        [PrimaryKey]
        public string vod_id { get; set; }
        public string name { get; set; }
        public string playing_url { get; set; }
        public TimeSpan position { get; set; }
        public TimeSpan duration { get; set; }
        public string location { get; set; }
        public string picture { get; set; }
        public DateTime time { get; set; }
        public string type { get; set; }
        public string macvod { get; set; }
    }
}
