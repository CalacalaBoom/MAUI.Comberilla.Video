using MAUIComberilla.Datas;
using SQLite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MAUIComberilla.Services
{
    public class DatabaseService:IDisposable
    {
        private SQLiteAsyncConnection conn;

        async Task Init()
        {
            if (conn is null)
            {
                conn = new SQLiteAsyncConnection(Datas.Constants.DatabasePath, Datas.Constants.Flags);
                await conn.CreateTableAsync<PlayHistory>();
            }

            // 检查 ApiTyoe 表是否存在
            var tableInfo = await conn.GetTableInfoAsync("ApiTyoe");
            if (tableInfo.Count == 0)
            {
                // 表不存在，创建表
                await conn.CreateTableAsync<ApiTyoe>();

                // 插入一行默认记录
                var defaultRecord = new ApiTyoe { type = "normal" };
                await conn.InsertAsync(defaultRecord);
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

        public async Task<int> DeleteAsync(PlayHistory history)
        {
            await Init();
            int result = await conn.DeleteAsync(history);
            return result;
        }

        public async Task<List<ApiTyoe>> ApiTyoeQueryAsync(string query)
        {
            await Init();
            var result = await conn.QueryAsync<ApiTyoe>(query);
            return result;
        }

        public async Task<int> InsertOrReplaceAsync(ApiTyoe tyoe)
        {
            await Init();
            int result = await conn.InsertOrReplaceAsync(tyoe);
            return result;
        }

        public void Dispose()
        {
            if (conn is null)
            {
                conn = null;
            }
        }
    }
}
