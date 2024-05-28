using Android.Content;
using AndroidX.Annotations;
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
    }
}
