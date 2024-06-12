using Backend.Core;
using Microsoft.OpenApi.Models;
using SqlSugar;

namespace Backend
{
    /// <summary>
    /// 作者:CalacalaBoom
    /// 时间:2024/5/27 10:10:24
    /// 机器名:DESKTOP-0SROHUF
    /// 项目名:Backend
    /// </summary>
    public class Program
    {
        public static void Main(string[] args)
        {
            var builder = WebApplication.CreateBuilder(args);

            // Add services to the container.

            builder.Services.AddControllers();
            // Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
            builder.Services.AddEndpointsApiExplorer();
            //注册Swagger生成器，定义一个和多个Swagger 文档
            builder.Services.AddSwaggerGen(options =>
            {
                options.SwaggerDoc("v1", new OpenApiInfo
                {
                    Version = "v1",
                    Title = "Backend API文档",
                    Description = "by yvone",
                    TermsOfService = new Uri("https://github.com/CalacalaBoom"),
                    Contact = new OpenApiContact
                    {
                        Name = "Example Contact",
                        Url = new Uri("https://github.com/CalacalaBoom")
                    },
                    License = new OpenApiLicense
                    {
                        Name = "Example License",
                        Url = new Uri("https://github.com/CalacalaBoom")
                    }
                });

                //添加注释
                var file = Path.Combine(AppContext.BaseDirectory, "Backend.xml");  // xml文档绝对路径
                var path = Path.Combine(AppContext.BaseDirectory, file); // xml文档绝对路径
                options.IncludeXmlComments(path, true); // true : 显示控制器层注释
                options.OrderActionsBy(o => o.RelativePath); // 对action的名称进行排序，如果有多个，就可以看见效果了。

            });
            //注入仓储
            builder.Services.AddScoped(typeof(Repository<>));
            //注册上下文：AOP里面可以获取IOC对象，如果有现成框架比如Furion可以不写这一行
            builder.Services.AddHttpContextAccessor();
            //注册SqlSugar
            builder.Services.AddSingleton<ISqlSugarClient>(s =>
            {
                SqlSugarScope sqlSugar = new SqlSugarScope(new ConnectionConfig()
                {
                    DbType = SqlSugar.DbType.MySql,
                    ConnectionString = "", //设置连接字符串
                    IsAutoCloseConnection = true,
                },
               db =>
               {
                   //每次上下文都会执行

                   //获取IOC对象不要求在一个上下文
                   //vra log=s.GetService<Log>()

                   //获取IOC对象要求在一个上下文
                   //var appServive = s.GetService<IHttpContextAccessor>();
                   //var log= appServive?.HttpContext?.RequestServices.GetService<Log>();

                   db.Aop.OnLogExecuting = (sql, pars) =>
                   {
                       Console.WriteLine(sql);//输出sql,查看执行sql 性能无影响
                   };
               });
                return sqlSugar;
            });
            var app = builder.Build();

            // Configure the HTTP request pipeline.
            //if (app.Environment.IsDevelopment())
            //{
            app.UseSwagger();
            app.UseSwaggerUI(c =>
            {
                c.RoutePrefix = "";
                c.SwaggerEndpoint("/swagger/v1/swagger.json", "V1 Docs");

            });
            //}

            app.UseAuthorization();

            app.MapControllers();

            app.Urls.Add("http://localhost:5000"); //设置本地端口号

            app.Run();
        }
    }
}
