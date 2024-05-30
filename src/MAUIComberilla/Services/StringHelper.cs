using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MAUIComberilla.Services
{
    public static class StringHelper
    {
        public static List<(string,string)> SpitURL(string play_url)
        {
            List<(string,string)> result=new List<(string, string)>();

            var spt_sets=play_url.Split('#');
            if(spt_sets.Length > 1 )
            {
                foreach (var spt_set in spt_sets)
                {
                    var spt_url = spt_set.Split("$");
                    result.Add((spt_url[0], spt_url[1]));
                }
            }
            else
            {
                var spt_url = play_url.Split("$");
                result.Add((spt_url[0], spt_url[1]));
            }

            return result;
        }

        ///   <summary> 
        ///   将指定字符串按指定长度进行截取并加上指定的后缀
        ///   </summary> 
        ///   <param   name= "oldStr "> 需要截断的字符串 </param> 
        ///   <param   name= "maxLength "> 字符串的最大长度 </param> 
        ///   <param   name= "endWith "> 超过长度的后缀 </param> 
        ///   <returns> 如果超过长度，返回截断后的新字符串加上后缀，否则，返回原字符串 </returns> 
        public static string StringTruncat(string oldStr, int maxLength, string endWith)
        {
            //判断原字符串是否为空
            if (string.IsNullOrEmpty(oldStr))
                return oldStr + endWith;


            //返回字符串的长度必须大于1
            if (maxLength < 1)
                return null;


            //判断原字符串是否大于最大长度
            if (oldStr.Length > maxLength)
            {
                //截取原字符串
                string strTmp = oldStr.Substring(0, maxLength);


                //判断后缀是否为空
                if (string.IsNullOrEmpty(endWith))
                    return strTmp;
                else
                    return strTmp + endWith;
            }
            return oldStr;
        }
    }
}
