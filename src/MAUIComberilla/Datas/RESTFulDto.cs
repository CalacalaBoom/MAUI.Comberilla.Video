using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MAUIComberilla.Datas
{
    public class RESTFulDto<T>
    {
        public bool? Success { get; set; }
        public int? Code { get; set; }
        public T? Data { get; set; }
        public string? Msg { get; set; }
        public string? Error { get; set; }
        public DateTime Time { get; set; }

        public RESTFulDto(T data, bool success = true, int code = 200, string msg = "", string error = "")
        {
            Success = success;
            Code = code;
            Msg = msg;
            Error = error;
            Time = DateTime.Now;
            Data = data;
        }
    }
}
