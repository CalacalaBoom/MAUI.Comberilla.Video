using MAUIComberilla.Datas;
using SQLite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MAUIComberilla.Services
{
    public class DatabaseService
    {
        private SQLiteAsyncConnection conn;

        async Task Init()
        {
            if (conn is null)
            {
                conn = new SQLiteAsyncConnection(Datas.Constants.DatabasePath, Datas.Constants.Flags);
                await conn.CreateTableAsync<PlayHistory>();
            }
        }

        public async Task<List<PlayHistory>> QueryAsync(string query)
        {
            await Init();
            var result = await conn.QueryAsync<PlayHistory>(query);
            return result;
        }

        public async Task<int> InsertOrReplaceAsync(PlayHistory history)
        {
            await Init();
            int result =await conn.InsertOrReplaceAsync(history);
            return result;
        }

        public 
    }
}
