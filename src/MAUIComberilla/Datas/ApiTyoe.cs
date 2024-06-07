using SQLite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MAUIComberilla.Datas
{
    public class ApiTyoe
    {
        [PrimaryKey, AutoIncrement]
        public int Id { get; set; }
        public string type { get; set; }
    }
}
