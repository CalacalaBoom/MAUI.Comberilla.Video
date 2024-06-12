using Backend.Core;
using Microsoft.OpenApi.Models;
using SqlSugar;

namespace Backend
{
    /// <summary>
    /// ����:CalacalaBoom
    /// ʱ��:2024/5/27 10:10:24
    /// ������:DESKTOP-0SROHUF
    /// ��Ŀ��:Backend
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
            //ע��Swagger������������һ���Ͷ��Swagger �ĵ�
            builder.Services.AddSwaggerGen(options =>
            {
                options.SwaggerDoc("v1", new OpenApiInfo
                {
                    Version = "v1",
                    Title = "Backend API�ĵ�",
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

                //���ע��
                var file = Path.Combine(AppContext.BaseDirectory, "Backend.xml");  // xml�ĵ�����·��
                var path = Path.Combine(AppContext.BaseDirectory, file); // xml�ĵ�����·��
                options.IncludeXmlComments(path, true); // true : ��ʾ��������ע��
                options.OrderActionsBy(o => o.RelativePath); // ��action�����ƽ�����������ж�����Ϳ��Կ���Ч���ˡ�

            });
            //ע��ִ�
            builder.Services.AddScoped(typeof(Repository<>));
            //ע�������ģ�AOP������Ի�ȡIOC����������ֳɿ�ܱ���Furion���Բ�д��һ��
            builder.Services.AddHttpContextAccessor();
            //ע��SqlSugar
            builder.Services.AddSingleton<ISqlSugarClient>(s =>
            {
                SqlSugarScope sqlSugar = new SqlSugarScope(new ConnectionConfig()
                {
                    DbType = SqlSugar.DbType.MySql,
                    ConnectionString = "", //���������ַ���
                    IsAutoCloseConnection = true,
                },
               db =>
               {
                   //ÿ�������Ķ���ִ��

                   //��ȡIOC����Ҫ����һ��������
                   //vra log=s.GetService<Log>()

                   //��ȡIOC����Ҫ����һ��������
                   //var appServive = s.GetService<IHttpContextAccessor>();
                   //var log= appServive?.HttpContext?.RequestServices.GetService<Log>();

                   db.Aop.OnLogExecuting = (sql, pars) =>
                   {
                       Console.WriteLine(sql);//���sql,�鿴ִ��sql ������Ӱ��
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

            app.Urls.Add("http://localhost:5000"); //���ñ��ض˿ں�

            app.Run();
        }
    }
}
